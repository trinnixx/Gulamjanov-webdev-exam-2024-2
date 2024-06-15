-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: std-mysql    Database: std_2513_exam
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text,
  `year` year(4) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cover_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_books_cover_id_covers` (`cover_id`),
  CONSTRAINT `fk_books_cover_id_covers` FOREIGN KEY (`cover_id`) REFERENCES `covers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (9,'Затерянный мир','\"Затерянный мир\" — это научно-фантастический роман Артура Конан Дойла, опубликованный в 1912 году. Профессор Джордж Эдвард Челленджер, эксцентричный учёный, утверждает, что обнаружил плато в Южной Америке, где до сих пор живут доисторические животные. Чтобы подтвердить свои слова, он организует экспедицию, в которую входят профессор Саммерли, лорд Джон Рокстон и молодой журналист Эдвард Мэлоун. На плато они действительно находят мир, населённый динозаврами и древними растениями, и сталкиваются с множеством опасностей. Вернувшись в Лондон, они представляют доказательства своих открытий, вызывая сенсацию в научном сообществе.',1912,'--','Артур Конан Дойл',0,0,100,7),(12,'Домой приведет тебя дьявол','Роман-лауреат премий Брэма Стокера и Ширли Джексон.\n\nКровавая история мужчины, отчаянно пытающегося спасти то, что осталось от его семьи. Ради этого ему придется погрузиться в самую пучину насилия — как реального, так и сверхъестественного. Убийство так и не стало для Марио обычной работой. Но путь сикарио — единственный способ вылечить маленькую дочь. Только вот стопка медицинских счетов не уменьшается, а семейные отношения на грани разрыва. В это кризисное время Марио получает предложение: последний заказ, который либо навсегда вытащит его из бедности, либо отправит в другой мир с пулей в голове. Человеку по имени Хуанка нужен напарник, чтобы совершить налет на курьеров мексиканского наркокартеля, везущих два миллиона долларов. Марио нечего терять, и он отправляется в путешествие. Каждый день вокруг происходят невыразимые ужасы, а в конце дороги его ждет сам дьявол. «Иногда, просыпаясь от ночного кошмара, вы погружаетесь в еще более страшный кошмар. Тогда Габино Иглесиас протягивает руку из тьмы и ведет вас домой». — Стивен Грэм Джонс',2024,'fanzon','Габино Иглесиас',10,2,384,10),(13,'Пламя одержимости','ОТ АВТОРА СУПЕРБЕСТСЕЛЛЕРА «ВНУТРИ УБИЙЦЫ».\n\nТРЕТИЙ, ЗАКЛЮЧИТЕЛЬНЫЙ РОМАН ИЗ ЦИКЛА «ЭББИ МАЛЛЕН».\n\nЗОИ БЕНТЛИ ВОЗВРАЩАЕТСЯ!\n\nКРЕЩЕНИЕ ОГНЕМ\n\nКогда при загадочных обстоятельствах несколько человек сгорели заживо в своих домах, Эбби Маллен, переговорщик полиции Нью-Йорка, сразу почувствовала: ужасы прошлого вернулись. Еще девочкой Эбби чудом спаслась от пожара, устроенного Моисеем Уилкоксом, фанатичным лидером секты. Он считался мертвым в течение тридцати лет. Но теперь на всех местах преступлений остались его следы…\n\nТИХО! РАБОТАЕТ ПРОФАЙЛЕР!\n\nТем временем поджоги заинтересовали ФБР, и на след Моисея встает гроза серийных убийц, гениальный профайлер Зои Бентли. Прежде Зои не приходилось иметь дела с сектантами. Ей нужен тот, кто понимает мысли Моисея, — кто-то вроде Эбби Маллен…\n\nОТ ЗОИ И ЭББИ НЕ УЙТИ НИКОМУ\n\nДля Эбби это огромный стресс. Многие воспоминания она мечтает похоронить навсегда: о культе, отравившем ее детство, о пожаре, убившем ее семью, и о человеке, его устроившем… Но неожиданно тандем профайлера и переговорщика начинает работать. Охота на убийцу продолжится — даже если придется растаскивать пылающие головешки прошлого Эбби голыми руками…',2023,'Inspiria','Майк Омер',0,0,448,11),(14,' Странник по звездам','Последний и самый загадочный роман, опубликованный при жизни автора — «Странник по звездам». Книга о том, что для человека нет преград, если он только сам себе не обозначит границы. Роман пленяет мужественностью и стойкостью человеческого духа не только перед лицом опасностей, но и перед самой смертью.\n\nДаррел Стендинг отбывает срок в одиночной камере калифорнийской тюрьмы. Надзиратели в ней применяют нечеловеческие пытки: заключенных одевают в смирительные рубашки, затягивая ремни до крови и треска костей, и весь этот ад продолжается не минуты и часы, а дни и даже недели. Даррел узнает секрет перемещения духа во времени и пространстве и, чтобы заглушить боль от пыток и одиночества, превращается в межзвездного скитальца, устремляясь в прошлое, в свои прежние воплощения.',2021,'Эксмо','Джек Лондон',0,0,320,12),(15,'Рассказы о Шерлоке Холмсе','Перу английского писателя, публициста и журналиста Артура Конан Дойла принадлежат исторические, приключенческие, фантастические романы, но в мировую литературу он вошел как создатель самого Великого Сыщика всех времен и народов — Шерлока Холмса.\n\nБлагородный и бесстрашный борец со Злом, обладатель острого ума и необыкновенной наблюдательности, с помощью своего дедуктивного метода сыщик решает самые запутанные головоломки, зачастую спасая этим человеческие жизни. Он обладает актерским даром и умеет поставить эффектную точку в конце каждого блестяще проведенного им расследования. Неутомимый Шерлок Холмс и его легко увлекающийся друг доктор Ватсон дороги сердцу читателей всего мира.',2023,'Эксмо','Артур Конан Дойл',5,1,352,13),(16,'Пропавшая','Этот умный и пугающий триллер поднимает семейные тайны на совершенно новый уровень.\n\nШелби Тибоу — первая, кто пропал без вести в этом маленьком американском городке. Вскоре исчезают Мередит и ее шестилетняя дочь Дилайла. И тоже совсем рядом с местом, где Шелби видели в последний раз. После долгих поисков полиция находит их мертвые тела. У Шелби проломлена голова, у Мередит ножевое ранение в живот, причем все выглядит так, словно она сама себя убила. Не нашли только Дилайлу — девочка бесследно исчезла. Расследование дало больше вопросов, чем ответов, и в конце концов дело закрыли.\n\nА спустя одиннадцать лет Дилайла неожиданно возвращается. Все хотят знать, что с ней случилось, но никто не готов к тому, что она…',2024,'Эксмо','Мэри Кубица',5,1,352,14),(17,'Sapiens. Краткая история человечества','Сто тысяч лет назад Homo sapiens был одним из как минимум шести видов человека, живших на этой планете, – ничем не примечательным животным, которое играло в экосистеме роль не большую, чем гориллы, светлячки или медузы. Но около семидесяти тысяч лет назад загадочное изменение когнитивных способностей Homo sapiens превратило его в хозяина планеты и кошмар экосистемы. Как человек разумный сумел покорить мир? Что стало с другими видами человека? Когда и почему появились деньги, государства и религия? Как возникали и рушились империи? Почему почти все общества ставили женщин ниже мужчин? Как наука и капитализм стали господствующими вероучениями современной эры? Становились ли люди с течением времени счастливее? Какое будущее нас ожидает?\n\nЮваль Харари показывает, как ход истории формировал человеческое общество и действительность вокруг него. Его книга прослеживает связь между событиями прошлого и проблемами современности и заставляет читателя пересмотреть все устоявшиеся представления об окружающем мире.',2011,'','Юваль Ной Харари',0,0,570,15),(18,'Мастер и Маргарита','Томик Михаила Булгакова, стоящий на книжной полке, свидетельствует о хорошем вкусе читателя. Не случайно написанное этим автором без потерь пережило смерть советской литературы и сегодня читается как продолжение золотого фонда русской классики XIX века. В эту книгу вошли самый известный и по праву признанный лучшим произведением писателя роман \"Мастер и Маргарита\", а также одно из самых загадочных произведений Михаила Булгакова \"Театральный роман\" (авторское название — \"Записки покойника\"), сюжет которого во многом основан на конфликте писателя с главным режиссером Художественного театра К. С. Станиславским во время постановки пьесы \"Кабала святош\" во МХАТе. Книгу открывает предисловие известного булгаковеда М.О. Чудаковой, занимавшуюся реконструкцией многих глав романа \"Мастер и Маргарита\".',2022,'Эксмо','Михаил Булгаков',0,0,640,16),(19,'Герой нашего времени','В книгу вошел роман М.Ю.Лермонтова (1814–1841) «Герой нашего времени», обязательный для чтения и изучения в средней общеобразовательной школе.\n\nРоман «Герой нашего времени» – одна из вершин русской прозы первой половины XIX в. Воспринятый современниками М.Ю.Лермонтова как «странный», роман побуждает все новые и новые поколения читателей искать решения его загадкам.',2008,'Public Domain','Михаил Лермонтов',0,0,170,17),(20,'Сказка о рыбаке и рыбке','Старик-рыбак поймал волшебную золотую рыбку и отпустил её. Жадная старуха-жена заставила его сходить к морю и просить, чтобы рыбка выполнила её желания, потребовала слишком много и осталась ни с чем.',2000,'--','Александр Сергеевич Пушкин',0,0,20,18),(21,'Сказка о царе салтане','Из-за козней завистниц невинную молодую царицу с царевичем бросают в океан. Они попадают на безлюдный остров, где царевич спасает волшебницу, женится на ней и с её помощью воссоединяется с отцом.',2000,'--','Александр Сергеевич Пушкин',0,0,50,19);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_has_genres`
--

DROP TABLE IF EXISTS `books_has_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_has_genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_books_has_genres_books_id_books` (`books_id`),
  KEY `fk_books_has_genres_genres_id_genres` (`genres_id`),
  CONSTRAINT `fk_books_has_genres_books_id_books` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_books_has_genres_genres_id_genres` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_has_genres`
--

LOCK TABLES `books_has_genres` WRITE;
/*!40000 ALTER TABLE `books_has_genres` DISABLE KEYS */;
INSERT INTO `books_has_genres` VALUES (13,12,1),(15,13,1),(16,14,5),(17,15,3),(18,16,3),(19,17,4),(20,18,6),(21,19,6),(22,20,2),(23,21,2);
/*!40000 ALTER TABLE `books_has_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covers`
--

DROP TABLE IF EXISTS `covers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `covers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(100) NOT NULL,
  `mime_type` varchar(100) NOT NULL,
  `md5_hash` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covers`
--

LOCK TABLES `covers` WRITE;
/*!40000 ALTER TABLE `covers` DISABLE KEYS */;
INSERT INTO `covers` VALUES (1,'1984.jpg','image/jpeg','bcdf26df530a9a31a1fb3fe17ceccb3f'),(3,'3example.jpg','image/jpeg','1df0999b5b7fdab6860a8c14372aa50a'),(4,'4cute-pusheen-pfp-1.jpg','image/jpeg','5b7591318b299af47468dac3c4964610'),(5,'5Vue.js_Logo.png','image/png','f200278ea9ecd7c4f72e22e33ff7e63d'),(6,'61614532990_188-p-kniga-na-belom-fone-232.jpg','image/jpeg','1e3d7cfef788a869e5aa264c6fe0f1b8'),(7,'7jpg','image/jpeg','ce6823cc3a41d285e99a104278cad7c1'),(8,'8photo_2024-06-14_21-55-39.jpg','image/jpeg','28fd2dd1142df1edf084b91a5067cd5a'),(9,'9photo_2024-06-14_23-26-37.jpg','image/jpeg','48f96e87d4a15bb67c6b6a08b4e3a0b2'),(10,'10dopfoto00__w820.jpg','image/jpeg','bdf8851c0d8f0fd72f22293760f7eff1'),(11,'11banner1__w820.jpg','image/jpeg','3b8065e1928ded0720c02b4f12e1e8ab'),(12,'12banner1__w820_1.jpg','image/jpeg','db19d4e65f50cd509587f3cd4c7d412f'),(13,'13banner1__w820_2.jpg','image/jpeg','6fceed57fe5ac5ee5693b8f4634e80e3'),(14,'14banner0__w820.jpg','image/jpeg','3ef81142848cd825088cee0d0b8e3931'),(15,'156017360742.jpg','image/jpeg','47fb3e7b3cca6a8d1e1466ef0985d6d4'),(16,'16i702728.jpg','image/jpeg','0e0d8785428d11c701381813cde70d5a'),(17,'175061fd29-00b3-4776-b247-35382c535628.jpg','image/jpeg','4d39af6312478d7d3b734675ebbdc841'),(18,'181909_32.jpg','image/jpeg','79e0a7b5aadcbfd2d89e4c1b70d77344'),(19,'19V.N._Kurdyumov_-_Tale_of_Tsar_Saltan_1913_00_cover.jpg','image/jpeg','e75ab3e9e8aa781427d0c397a55e2763');
/*!40000 ALTER TABLE `covers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Хоррор'),(2,'Сказка'),(3,'Детектив'),(4,'Научная литература'),(5,'Фантастика'),(6,'Художественная литература');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_reviews_book_id_books` (`book_id`),
  KEY `fk_reviews_user_id_users` (`user_id`),
  KEY `fk_reviews_status_id_statuses` (`status_id`),
  CONSTRAINT `fk_reviews_book_id_books` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_reviews_status_id_statuses` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_reviews_user_id_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (15,12,3,5,'топчик ваще 10/10','2024-06-15 00:23:39',2),(16,12,1,5,'поддерживаю defaultuser!','2024-06-15 00:24:20',2),(17,16,3,5,'chetko','2024-06-15 22:14:04',1);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Администратор','everything you can'),(2,'Модератор','50/50'),(3,'Пользователь','default user');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'На рассмотрении'),(2,'Одобрена'),(3,'Отклонена');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(100) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_role_id_roles` (`role_id`),
  CONSTRAINT `fk_users_role_id_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','priority','Гуламжанов','Сулейман','Улугбекович',1),(2,'moderator','qwerty123','Иванов','Иван','Иванович',2),(3,'defaultuser','qwerty456','Артемов','Артем','Артемович',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-15 23:53:53
