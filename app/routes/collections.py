# routes/collections.py
from flask import Blueprint, render_template, request, redirect, url_for, flash, abort
from flask_login import current_user, login_required
from app import db
from models import Collection, CollectionBookAssociation, Book

bp = Blueprint('collection', __name__, url_prefix='/collection')

@bp.route('/my_collections', methods=['GET'])
@login_required
def my_collections():
    collections = Collection.query.filter_by(user_id=current_user.id).all()
    return render_template('collections/collections.html', collections=collections)

@bp.route('/collection/<int:collection_id>', methods=['GET'])
@login_required
def view_collection(collection_id):
    collection = Collection.query.get_or_404(collection_id)
    
    # Проверяем, что текущий пользователь имеет доступ к просмотру коллекции
    if collection.user_id != current_user.id:
        abort(403)
    
    books = collection.books  # collection.books уже представляет список книг
    
    return render_template('collections/view_collection.html', collection=collection, books=books)

@bp.route('/add_collection', methods=['POST'])
@login_required
def add_collection():
    name = request.form.get('name')
    if name:
        new_collection = Collection(name=name, user_id=current_user.id)
        db.session.add(new_collection)
        db.session.commit()
        flash(f'Подборка успешно добавлена!', 'success')
    else:
        flash(f'Название подборки не может быть пустым!', 'danger')
    return redirect(url_for('collection.my_collections'))

@bp.route('/add_to_collection', methods=['POST'])
@login_required
def add_to_collection():
    collection_id = request.form.get('collection_id')
    book_id = request.form.get('book_id')
    collection = Collection.query.get_or_404(collection_id)
    book = Book.query.get_or_404(book_id)

    if collection.user_id != current_user.id:
        abort(403)
    
    # Проверка, что книга не добавлена в коллекцию ранее
    existing_association = CollectionBookAssociation.query.filter_by(collection_id=collection_id, book_id=book_id).first()
    if not existing_association:
        association = CollectionBookAssociation(collection_id=collection.id, book_id=book.id)
        db.session.add(association)
        db.session.commit()
        flash(f'Книга успешно добавлена в подборку!', 'success')
    else:
        flash(f'Книга уже была добавлена в подборку!', 'primary')

    return redirect(url_for('book.show', book_id=book.id))

@bp.route('/delete_collection/<int:collection_id>', methods=['POST'])
@login_required
def delete_collection(collection_id):
    collection = Collection.query.get_or_404(collection_id)

    # Проверяем, что текущий пользователь имеет доступ к удалению коллекции
    if collection.user_id != current_user.id:
        abort(403)

    try:
        # Удаляем все ассоциации книг с этой коллекцией
        CollectionBookAssociation.query.filter_by(collection_id=collection_id).delete()
        
        # Удаляем саму коллекцию
        db.session.delete(collection)
        db.session.commit()

        flash(f'Подборка успешно удалена!', 'success')
    except Exception as e:
        flash(f'Ошибка при удалении подборки: {str(e)}', 'danger')
        db.session.rollback()

    return redirect(url_for('collection.my_collections'))