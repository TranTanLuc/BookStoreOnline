-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: pttkht
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','admin'),(2,'nam','nam'),(3,'luc','luc'),(4,'manh','manh'),(5,'long','long'),(7,'dam','dam'),(8,'test','test');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `commune` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `district` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'a','a','a'),(2,'a','a','a'),(3,'a','a','a'),(4,'a','a','a'),(5,'a','a','a'),(7,'a','a','a'),(8,'a','a','a');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `description` varchar(10000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `idType` int DEFAULT NULL,
  `idPublisher` int DEFAULT NULL,
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Nhà Giả Kim',75000,'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.\r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.',1,1,'https://salt.tikicdn.com/cache/400x400/ts/product/45/3b/fc/aa81d0a534b45706ae1eee1e344e80d9.jpg.webp'),(2,'Phía Sau Nghi Can X',100000,'“Việc nghĩ ra một bài toán vô cùng khó và việc giải bài toán đó, việc nào khó hơn?”\r\nKhi nhấn chuông cửa nhà nghi can chính của một vụ án mới, điều tra viên Kusanagi không biết rằng anh sắp phải đương đầu với một thiên tài ẩn dật. Kusanagi càng không thể ngờ rằng, chỉ một câu nói vô thưởng vô phạt của anh đã kéo người bạn thân, Manabu Yukawa, một phó giáo sư vật lý tài năng, vào vụ án. Và điều làm sững sờ nhất, đó là vụ án kia chẳng qua cũng chỉ như một bài toán cấp ba đơn giản, tuy nhiên ấn số X khi được phơi bày ra lại không đem đến hạnh phúc cho bất cứ ai…\r\nVới một giọng văn tỉnh táo và dung dị, Higashino Keigo đã đem đến cho độc giả hơn cả một cuốn tiểu thuyết trinh thám. Mô tả tội ác không phải điều hấp dẫn nhất ở đây, mà còn là những giằng xé nội tâm thầm kín, những nhân vật bình dị, và sự quan tâm sâu sa tới con người. Tác phẩm đã đem lại cho Higashino Keigo Giải Naoki lần thứ 134, một giải thưởng văn học lâu đời sánh ngang giải Akutagawa tại Nhật.\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....',2,2,'https://salt.tikicdn.com/cache/400x400/ts/product/23/56/86/a538698ead7dc2f693d1e9778417317d.jpg.webp'),(3,'Muôn Kiếp Nhân Sinh',75000,'“Muôn kiếp nhân sinh” là tác phẩm do Giáo sư John Vũ - Nguyên Phong viết từ năm 2017 và hoàn tất đầu năm 2020 ghi lại những câu chuyện, trải nghiệm tiền kiếp kỳ lạ từ nhiều kiếp sống của người bạn tâm giao lâu năm, ông Thomas – một nhà kinh doanh tài chính nổi tiếng ở New York. Những câu chuyện chưa từng tiết lộ này sẽ giúp mọi người trên thế giới chiêm nghiệm, khám phá các quy luật về luật Nhân quả và Luân hồi của vũ trụ giữa lúc trái đất đang gặp nhiều tai ương, biến động, khủng hoảng từng ngày.\r\n\r\n“Muôn kiếp nhân sinh” là một bức tranh lớn với vô vàn mảnh ghép cuộc đời, là một cuốn phim đồ sộ, sống động về những kiếp sống huyền bí, trải dài từ nền văn minh Atlantis hùng mạnh đến vương quốc Ai Cập cổ đại của các Pharaoh quyền uy, đến Hợp Chủng Quốc Hoa Kỳ ngày nay.\r\n\r\n“Muôn kiếp nhân sinh” cung cấp cho bạn đọc kiến thức mới mẻ, vô tận của nhân loại lần đầu được hé mở, cùng những phân tích uyên bác, tiên đoán bất ngờ về hiện tại và tương lai thế giới của những bậc hiền triết thông thái. Đời người tưởng chừng rất dài nhưng lại trôi qua rất nhanh, sinh vượng suy tử, mong manh như sóng nước. Luật nhân quả cực kỳ chính xác, chi tiết, phức tạp được thu thập qua nhiều đời, nhiều kiếp, liên hệ tương hỗ đan xen chặt chữ lẫn nhau, không ai có thể tính được tích đức này có thể trừ được nghiệp kia không, không ai có thể biết được khi nào nhân sẽ trổ quả. Nhưng, một khi đã gây ra nhân thì chắc chắn sẽ gặt quả - luật Nhân quả của vũ trụ trước giờ không bao giờ sai.',3,3,'https://salt.tikicdn.com/cache/400x400/ts/product/30/ee/5a/e2aed009bb558b5d2cfbbe157b428ba4.jpg.webp'),(4,'Giết Con Chim Nhạn',150000,'Nào, hãy mở cuốn sách này ra. Bạn phải làm quen ngay với bố Atticus của hai anh em - Jem và Scout, ông bố luật sư có một cách riêng, để những đứa trẻ của mình cứng cáp và vững vàng hơn khi đón nhận những bức xúc không sao hiểu nổi trong cuộc sống. Bạn sẽ nhớ rất lâu người đàn ông thích trốn trong nhà Boo Radley, kẻ bị đám đông coi là lập dị đã chọn một cách rất riêng để gửi những món quà nhỏ cho Jem và Scout, và khi chúng lâm nguy, đã đột nhiên xuất hiện để che chở. Và tất nhiên, bạn không thể bỏ qua anh chàng Tom Robinson, kẻ bị kết án tử hình vì tội hãm hiếp một cô gái da trắng, sự thật thà và suy nghĩ quá đỗi đơn giản của anh lại dẫn đến một cái kết hết sức đau lòng, chỉ vì lý do anh là một người da đen.\r\n\r\nCho dù được kể dưới góc nhìn của một cô bé, cuốn sách Giết con chim nhại không né tránh bất kỳ vấn đề nào, gai góc hay lớn lao, sâu xa hay phức tạp: nạn phân biệt chủng tộc, những định kiến khắt khe, sự trọng nam khinh nữ… Góc nhìn trẻ thơ là một dấu ấn đậm nét và cũng là đặc sắc trong Giết con chim nhại. Trong sáng, hồn nhiên và đầy cảm xúc, những câu chuyện tưởng như chẳng có gì to tát gieo vào người đọc hạt mầm yêu thương.\r\n\r\nGần 50 năm từ ngày đầu ra mắt, Giết con chim nhại, tác phẩm đầu tay và cũng là cuối cùng của nữ nhà văn Mỹ Harper Lee vẫn đầy sức hút với độc giả ở nhiều lứa tuổi.',4,4,'https://salt.tikicdn.com/cache/400x400/ts/product/07/d5/b7/68b4d6773f4d1ecd9fd5869e693c45b1.jpg.webp'),(5,'Chủ Nghĩa Khắc Kỷ - Phong Cách Sống Bản Lĩnh Và Bình Thản',200000,'Chủ Nghĩa Khắc Kỷ - Phong Cách Sống Bản Lĩnh Và Bình Thản\r\nBạn mong muốn điều gì từ cuộc sống này? Có thể câu trả lời của bạn là muốn có một người bạn đời biết quan tâm, một công việc tốt và một ngôi nhà đẹp, nhưng chúng thực ra chỉ là một số thứ bạn muốn có trong cuộc sống. Khi hỏi bạn mong muốn điều gì từ cuộc sống này, tôi đang hỏi theo nghĩa rộng nhất. Tôi không hỏi về những mục tiêu mà bạn đề ra khi thực hiện các hoạt động hằng ngày, mà tôi đang hỏi về mục tiêu lớn lao trong cuộc sống của bạn. Nói cách khác, trong số những thứ bạn có thể theo đuổi trong cuộc sống, thứ nào bạn tin là có giá trị nhất?\r\nNhiều người sẽ khó lòng nêu ra được mục tiêu này. Họ biết mình muốn gì trong từng phút một hoặc thậm chí từng thập kỷ một trong suốt cuộc đời mình, nhưng họ chưa bao giờ dành thời gian để suy ngẫm về mục tiêu sống lớn lao của bản thân. Chuyện này có lẽ cũng dễ hiểu. Nền văn hóa của chúng ta vốn không khuyến khích mọi người nghĩ về những điều như vậy, mà chỉ tạo ra hết xao lãng này đến xao lãng khác, để chúng ta không bao giờ phải bận tâm đến chúng. Nhưng một mục tiêu lớn lao trong đời là thành phần đầu tiên của một triết lý sống. Nếu bạn không có một mục tiêu lớn lao trong đời, tức là bạn không có một triết lý sống chặt chẽ.',5,5,'https://salt.tikicdn.com/cache/400x400/ts/product/97/61/91/a9b293f184d4dbbc2afc416b539f2bca.jpg.webp'),(6,'Dấu Chân Trên Cát',55000,'“Dấu chân trên cát” là tác phẩm được dịch giả Nguyên Phong phóng tác kể về xã hội Ai Cập thế kỷ thứ XIV trước CN, qua lời kể của nhân vật chính - Sinuhe.\r\nNgày nay, người ta biết đến triều đại các vua chúa Ai Cập thời cổ qua sách vở của người Hy Lạp. Sở dĩ các sử gia Hy Lạp biết được các chi tiết này vì họ đã học hỏi từ người Ai Cập bị đày biệt xứ tên là Sinuhe. Đây là một nhân vật lạ lùng, đã có công mang văn minh Ai Cập truyền vào Hy Lạp khi quốc gia này còn ở tình trạng kém mở mang so với Ai Cập lúc đó.\r\n\r\nCác sử gia ngày nay đã đưa ra nhiều giả thuyết về nhân vật Sinuhe này. Có người cho rằng ông là một lái buôn đến Hy Lạp lập nghiệp, nhưng làm sao lái buôn lại mở trường dạy học và để lại nhiều tài liệu quý giá như thế được? Từ ngàn xưa, chỉ riêng giai cấp vua chúa là giáo sĩ mới được hưởng quy chế giáo dục toàn vẹn như vậy mà thôi.\r\n\r\nDo đó, một số người cho rằng ông thuộc giai cấp giáo sĩ, nhưng việc một giáo sĩ Ai Cập đến mở trường dạy học tại Hy Lạp cũng là điều khó chấp nhận. Mặc dù khi đó văn minh Hy Lạp chưa tiến bộ như Ai Cập nhưng giáo xứ này phát triển rất mạnh, hiển nhiên các giáo sĩ Hy Lạp không thể chấp nhận cho một giáo sĩ ngoại quốc đến mở trường dạy học tại thánh địa Olympia của họ được.',6,6,'https://salt.tikicdn.com/cache/400x400/ts/product/b7/ef/72/419bb40ea14d8c8a6e23b5e4f8dca382.jpg.webp'),(7,'Học Viện - The Institute',100000,'Bên cạnh Bản đặc biệt The Institute ( Học Viện) làm nức lòng người hâm mộ ông hoàng truyện kinh dị Stephen King, 1980Books tiếp tục ra mắt bản thường của Học Viện để đưa tác phẩm đến gần với đông đảo người hâm mộ truyện hơn.\r\n\r\nHọc Viện là tác phẩm áp út của tác giả bán được hơn 350 triệu cuốn sách trên toàn thế giới, Stephen King.\r\n\r\nTác phẩm mở ra với nhân vật Tim Jamieson, một cựu cảnh sát người Mỹ bị mất việc đang lang thang trên cuộc hành trình dọc về phía bắc. Tình cờ, anh tới một thị trấn không-ai-biết-tới: DuPray. Tại đây anh được nhận vào làm người gác đêm của thị trấn, mong rằng quãng thời gian sắp tới sẽ êm đề\r\n\r\nThế nhưng đó chỉ là vòng ngoài, phần lớn câu chuyện diễn ra trong một cơ sở bí mật của chính phủ, với khung cảnh xám xịt, đen tối và đầy căng thẳng, xoay quanh một cậu bé 12 tuổi Luke Ellis.\r\n\r\nLuke Ellis là một thần đồng với dự định theo học tại hai trường đại học cùng một lúc. Nhưng rồi cuộc sống của cậu đã thay đổi hoàn toàn khi phát hiện ra mình tỉnh dậy trong một căn phòng giống hệt phòng ngủ tại nhà, nhưng nơi này lại là một cơ sở bí mật nằm ở vùng hẻo lánh giữa rừng già Bắc Maine với cái tên gọi: Học Viện. Ở đây có những đứa trẻ đặc biệt giống như cậu, sinh sống ở Khu nửa trước. Giám đốc của Học viện, bà Sigsby, và các nhân viên của bà ta hằng ngày tàn nhẫn khai thác sức mạnh từ những đứa trẻ này, nghiên cứu và sử dụng những món quà đặc biệt của chúng.',7,7,'https://salt.tikicdn.com/cache/400x400/ts/product/da/62/4f/d52882c613d485b5c1bb15fb788ffeb2.jpg.webp'),(12,'Vũ Trụ Trong Vỏ Hạt Dẻ',100000,'Lòng khát khao khám phá luôn là động lực cho trí sáng tạo của con người trong mọi lĩnh vực không chỉ trong khoa học. Điều đó được kiểm chứng trong quyển Vũ trụ trong vỏ hạt dẻ',NULL,NULL,'https://salt.tikicdn.com/cache/400x400/ts/product/13/cc/03/909ca2322e0903fb5ceaaac41d16e986.jpg.webp'),(13,'test',10000000,'abc',NULL,NULL,'abc');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `idBook` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idBook` (`idBook`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idBook`) REFERENCES `book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,4),(2,1,4),(3,1,3),(4,1,NULL),(5,1,NULL),(6,1,3),(7,1,5),(8,1,NULL),(9,1,5),(10,1,NULL),(11,1,5),(12,1,NULL),(13,1,NULL),(14,1,NULL),(15,1,NULL),(16,1,2),(17,1,2),(18,1,2),(19,1,2),(20,1,1),(21,1,3),(22,1,1),(23,1,2),(24,1,3),(25,1,1),(26,1,4),(27,1,2),(28,1,3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `point` int DEFAULT '0',
  `house_number` varchar(15) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `idAddress` int NOT NULL,
  `idAccount` int NOT NULL,
  `idFullname` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idAddress` (`idAddress`),
  KEY `idAccount` (`idAccount`),
  KEY `idFullname` (`idFullname`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`idAddress`) REFERENCES `address` (`id`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`idAccount`) REFERENCES `account` (`id`),
  CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`idFullname`) REFERENCES `fullname` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'admin','admin',0,NULL,1,1,1),(2,'nam','nam',0,NULL,2,2,2),(3,'luc','luc',0,NULL,3,3,3),(4,'manh','manh',0,NULL,4,4,4),(5,'long','long',0,NULL,5,5,5),(7,'dam','dam',0,NULL,7,7,7),(8,'test','test',0,NULL,8,8,8);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fullname`
--

DROP TABLE IF EXISTS `fullname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fullname` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `middle_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fullname`
--

LOCK TABLES `fullname` WRITE;
/*!40000 ALTER TABLE `fullname` DISABLE KEYS */;
INSERT INTO `fullname` VALUES (1,'admin','admin','admin'),(2,'nguyen','duc','nam'),(3,'tran','tan','luc'),(4,'nguyen','duc','manh'),(5,'le','huu thang','long'),(7,'vu','minh','dam'),(8,'test','','test');
/*!40000 ALTER TABLE `fullname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderDate` varchar(45) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `totalPrice` int DEFAULT NULL,
  `idCustomer` int NOT NULL,
  `idCart` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCustomer` (`idCustomer`),
  KEY `idCart` (`idCart`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`id`),
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`idCart`) REFERENCES `cart` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (12,NULL,150000,1,1),(13,NULL,1220000,2,4),(14,NULL,1220000,2,3),(15,NULL,1220000,2,2),(16,NULL,75000,1,5),(17,NULL,200000,2,6),(18,NULL,790000,2,7),(19,NULL,899000,5,9),(20,NULL,899000,5,8),(25,NULL,200000,3,18),(26,NULL,200000,3,17),(27,NULL,125000,2,20),(28,NULL,125000,2,19),(29,NULL,225000,5,23),(30,NULL,225000,5,22),(31,NULL,225000,5,21),(32,NULL,150000,4,25),(33,NULL,150000,4,24),(34,NULL,100000,5,27),(35,NULL,75000,5,26);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Chuyen khoan'),(2,'Thanh toan khi nhan hang');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (1,'Viettel Post',35000),(2,'GHTK',30000);
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-05  0:22:34
