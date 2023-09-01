-- MySQL dump 10.13  Distrib 8.0.24, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: my_bookstore
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities4_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities4_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES ('Alex','ROLE_EMPLOYEE'),('alex1993','ROLE_ADMIN'),('BuffySummers','ROLE_CUSTOMER'),('Ehsan','ROLE_EMPLOYEE'),('Giles','ROLE_EMPLOYEE'),('hello_imauser','ROLE_CUSTOMER'),('john','ROLE_EMPLOYEE'),('mary','ROLE_EMPLOYEE'),('mary','ROLE_MANAGER'),('RupertGiles','ROLE_CUSTOMER'),('susan','ROLE_ADMIN'),('susan','ROLE_EMPLOYEE'),('susan','ROLE_MANAGER'),('WillowRosenberg','ROLE_CUSTOMER');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isbn` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` double NOT NULL,
  `genre` enum('NON_FICTION','GRAPHIC_NOVEL','FICTION','MYSTERY_THRILLER','ROMANCE','SCIENCE_FICTION','FANTASY','CLASSIC','HISTORICAL','YOUNG_ADULT') NOT NULL,
  `inventory` int NOT NULL,
  `available` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'9781234567890','Pride and Prejudice','Jane Austen','Penguin Classics','Lovers and stuff',19.99,'CLASSIC',50,1),(2,'978-0062660268','The Loneliest Girl in the Universe','Lauren James','Harper Teen','The daughter of two astronauts, Romy Silvers is no stranger to life in space. But she never knew how isolating the universe could be until her parents’ tragic deaths left her alone on the Infinity, a spaceship speeding away from Earth.\r\n\r\nRomy tries to make the best of her lonely situation, but with only brief messages from her therapist on Earth to keep her company, she can’t help but feel like something is missing. It seems like a dream come true when NASA alerts her that another ship, the Eternity, will be joining the Infinity.\r\n\r\nRomy begins exchanging messages with J, the captain of the Eternity, and their friendship breathes new life into her world. But as the Eternity gets closer, Romy learns there’s more to J’s mission than she could have imagined. And suddenly, there are worse things than being alone….',13.99,'YOUNG_ADULT',49,1),(3,'9783456789012','Ducks: Two Years in the Oil Sands','Kate Beaton','Drawn and Quarterly','Before there was Kate Beaton, New York Times bestselling cartoonist of Hark! A Vagrant, there was Katie Beaton of the Cape Breton Beaton, specifically Mabou, a tight-knit seaside community where the lobster is as abundant as beaches, fiddles, and Gaelic folk songs. With the singular goal of paying off her student loans, Katie heads out west to take advantage of Alberta’s oil rush―part of the long tradition of East Coasters who seek gainful employment elsewhere when they can’t find it in the homeland they love so much. Katie encounters the harsh reality of life in the oil sands, where trauma is an everyday occurrence yet is never discussed.',39.99,'GRAPHIC_NOVEL',25,1),(4,'978-0439023528','The Hunger Games','Suzanne Collins','Scholastic Press','In what was once North America, the Capitol of Panem maintains its hold on its 12 districts by forcing them each to select a boy and a girl, called Tributes, to compete in a nationally televised event called the Hunger Games. Every citizen must watch as the youths fight to the death until only one remains. District 12 Tribute Katniss Everdeen (Jennifer Lawrence) has little to rely on, other than her hunting skills and sharp instincts, in an arena where she must weigh survival against love.',12.99,'YOUNG_ADULT',24,1),(5,'978-0545586177','Catching Fire','Suzanne Collins','Scholastic Press','Against all odds, Katniss Everdeen has won the annual Hunger Games with fellow district tribute Peeta Mellark. Katniss and Peeta should be happy. After all, they have just earned for themselves and their families a life of safety and plenty. But it was a victory won by defiance of the Capitol and their harsh rules, and now there are rumors of rebellion in the districts. Katniss and Peeta, to their horror, are the faces of that rebellion. The Capitol is angry. The Capitol wants revenge.',12.99,'YOUNG_ADULT',11,1),(6,'978-0545663267','Mockingjay','Suzanne Collins','Scholastic Press','Description 6',12,'YOUNG_ADULT',20,1),(7,'978-0062060624','The Song of Achilles','The Song of Achilles','Ecco','‘The Song of Achilles‘ follows Patroclus, a Greek prince, who falls in love with the famed warrior, Achilles. The two learn and train together. They avoid the negative influence of Achilles’ mother and eventually have to go to war together, assisting Agamemnon as he attempts to retrieve his brother Menelaus’s wife, Helen, from Troy. Achilles’ fate, foretold in a foreboding prophecy, plays out in a tragic series of events. ',19.99,'HISTORICAL',30,1),(8,'978-1838880347','A View Across the Rooftops','Suzanne Kelman ','Harbrace Publishing','1941, Nazi-occupied Amsterdam. An unforgettable story of love, hope and betrayal, and a testament to the courage of humanity in history’s darkest days.',9.99,'HISTORICAL',9,1),(9,'978-1668026038','Icebreaker','Hannah Grace','Atria Books','Anastasia Allen has worked her entire life for a shot at Team USA. It looks like everything is going according to plan when she gets a full scholarship to the University of California, Maple Hills and lands a place on their competitive figure skating team.\r\n\r\nNothing will stand in her way, not even the captain of the hockey team, Nate Hawkins.\r\n\r\nNate’s focus as team captain is on keeping his team on the ice. Which is tricky when a facilities mishap means they are forced to share a rink with the figure skating team—including Anastasia, who clearly can’t stand him.\r\n\r\nBut when Anastasia’s skating partner faces an uncertain future, she may have to look to Nate to take her shot.\r\n\r\nSparks fly, but Anastasia isn’t worried…because she could never like a hockey player, right?',9.99,'ROMANCE',50,1),(10,'978-1501161933','The Seven Husbands of Evelyn Hugo','Taylor Jenkins Reid ','Washington Square Press','Aging and reclusive Hollywood movie icon Evelyn Hugo is finally ready to tell the truth about her glamorous and scandalous life. But when she chooses unknown magazine reporter Monique Grant for the job, no one is more astounded than Monique herself. Why her? Why now?\r\n\r\nMonique is not exactly on top of the world. Her husband has left her, and her professional life is going nowhere. Regardless of why Evelyn has selected her to write her biography, Monique is determined to use this opportunity to jumpstart her career.',18.99,'ROMANCE',30,1),(11,'978-1984806734','Beach Read','Emily Henry','Berkley','Augustus Everett is an acclaimed author of literary fiction. January Andrews writes bestselling romance. When she pens a happily ever after, he kills off his entire cast.\r\n\r\nThey’re polar opposites.\r\n\r\nIn fact, the only thing they have in common is that for the next three months, they\'re living in neighboring beach houses, broke, and bogged down with writer\'s block.\r\n\r\nUntil, one hazy evening, one thing leads to another and they strike a deal designed to force them out of their creative ruts: Augustus will spend the summer writing something happy, and January will pen the next Great American Novel. She’ll take him on field trips worthy of any rom-com montage, and he’ll take her to interview surviving members of a backwoods death cult (obviously). Everyone will finish a book and no one will fall in love. Really.',12.99,'ROMANCE',25,1),(12,' 978-1683964780','Lure','Lane Milburn','Fantagraphics Books','The world\'s elite use the ocean planet of Lure as a luxury vacation hub for a decade. But when climate change threatens Earth\'s long-term habitability, many of those who can afford it move to Lure for good. When the opportunity to work there for a year is offered to visual artist Jo Sparta, as part of a group of artists collaborating on a large-scale installation of public art, it seems like the chance of a lifetime. But then, Jo stumbles across a nefarious plot by her corporate benefactors and feels compelled to go public. Lure showcases Milburn\'s rich visual imagination, with the planet Lure itself an ever-seductive, otherworldly paradise against which he spotlights themes of climate change, the disparity of wealth, and the value of art ― all in the service of a grippingly moral thriller.',39.99,'GRAPHIC_NOVEL',10,1),(13,'978-0261102354','The Fellowship of the Ring','J.R.R. Tolkien','HarperCollins','Sauron, the Dark Lord, has gathered to him all the Rings of Power – the means by which he intends to rule Middle-earth. All he lacks in his plans for dominion is the One Ring – the ring that rules them all – which has fallen into the hands of the hobbit, Bilbo Baggins.\r\n\r\nIn a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as his elderly cousin Bilbo entrusts the Ring to his care. Frodo must leave his home and make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ring and foil the Dark Lord in his evil purpose.',10.99,'FANTASY',39,1),(14,' 978-0261102361','The Two Towers ','JRR Tolkien','HarperCollins','Frodo and the Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in the battle with an evil spirit in the Mines of Moria; and at the Falls of Rauros, Boromir, seduced by the power of the Ring, tried to seize it by force. While Frodo and Sam made their escape the rest of the company were attacked by Orcs.\r\n\r\nNow they continue their journey alone down the great River Anduin – alone, that is, save for the mysterious creeping figure that follows wherever they go.',10.99,'FANTASY',40,1),(15,'978-0261102378','The Return of the King','JRR Tolkien','HarperCollins','The armies of the Dark Lord Sauron are massing as his evil shadow spreads even wider. Men, Dwarves, Elves and Ents unite forces to do battle against the Dark. Meanwhile, Frodo and Sam struggle further into Mordor, guided by the treacherous creature Gollum, in their heroic quest to destroy the One Ring…\r\n\r\nJRR Tolkien’s great work of imaginative fiction has been labelled both a heroic romance and a classic fantasy fiction. By turns comic and homely, epic and diabolic, the narrative moves through countless changes of scene and character in an imaginary world which is totally convincing in its detail. Tolkien created a vast new mythology in an invented world which has proved timeless in its appeal.',0,'FANTASY',40,1),(16,'978-1770460478','Big Questions','Anders Nilsen','Drawn and Quarterly','This beautiful minimalist story, collected here for the first time, is the culmination of ten years and more than six hundred pages of work that details the metaphysical quandaries of the occupants of an endless plain, existing somewhere between a dream and a Russian steppe. A downed plane is thought to be a bird and the unexploded bomb that came from it is mistaken for a giant egg by the group of birds whose lives the story follows. The indifferent, stranded pilot is of great interest to the birds―some doggedly seek his approval, while others do quite the opposite, leading to tensions in the group. Nilsen seamlessly moves from humor to heartbreak. His distinctive, detailed line work is paired with plentiful white space and large, often frameless panels, conveying an ineffable sense of vulnerability and openness.',20.99,'GRAPHIC_NOVEL',15,1),(17,'979-8405801308','The Great Gatsby','F. Scott Fitzgerald ','Independently published ','The Great Gatsby is a Great American Novel of the 20th century. Set in the Jazz Age on Long Island, near New York City, The Great Gatsby depicts the tragic story of Jay Gatsby, a self-made millionaire, and his pursuit of Daisy Buchanan, a wealthy young woman who is his former lover. His doomed love story for the ultimately unattainable Daisy is considered an American dream that is never fulfilled.',9.99,'CLASSIC',34,1),(18,'978-1774262320','Crime and Punishment','Fyodor Dostoevsky ','East India Publishing Company','Crime and Punishment focuses on the mental anguish and moral dilemmas of Rodion Raskolnikov, an impoverished ex-student in St Petersburg who formulates and executes a plan to kill an unscrupulous pawnbroker for her cash.\r\n\r\nRaskolnikov argues that with the pawnbroker\'s money he can perform good deeds to counterbalance the crime, while ridding the world of a worthless vermin. He also commits this murder to test his own hypothesis that some people are naturally capable of such things, and even have the right to do them. Several times throughout the novel, Raskolnikov justifies his actions by comparing himself with Napoleon Bonaparte who pushed open all the boundaries in Europe and moved millions from one place to another.',12.99,'CLASSIC',15,1),(19,'978-0745341125','A Decolonial Feminism','Françoise Vergès ','Pluto Press','In this powerful manifesto, Françoise Vergès argues that feminists should no longer be accomplices of capitalism, racism, colonialism and imperialism: it is time to fight the system that created the boss, built the prisons and polices women\'s bodies.',12.99,'NON_FICTION',80,1),(20,'978-0553293357','Foundation','Isaac Asimov ','Spectra','For twelve thousand years the Galactic Empire has ruled supreme. Now it is dying. But only Hari Sheldon, creator of the revolutionary science of psychohistory, can see into the future--to a dark age of ignorance, barbarism, and warfare that will last thirty thousand years. To preserve knowledge and save mankind, Seldon gathers the best minds in the Empire--both scientists and scholars--and brings them to a bleak planet at the edge of the Galaxy to serve as a beacon of hope for a fututre generations. He calls his sanctuary the Foundation.\r\n\r\nBut soon the fledgling Foundation finds itself at the mercy of corrupt warlords rising in the wake of the receding Empire. Mankind\'s last best hope is faced with an agonizing choice: submit to the barbarians and be overrun--or fight them and be destroyed.',9.99,'SCIENCE_FICTION',20,1),(21,'978-0802129628','Convenience Store Woman','Sayaka Murata','Grove Press; Reprint edition','Convenience Store Woman is the heartwarming and surprising story of thirty-six-year-old Tokyo resident Keiko Furukura. Keiko has never fit in, neither in her family, nor in school, but when at the age of eighteen she begins working at the Hiiromachi branch of “Smile Mart,” she finds peace and purpose in her life. In the store, unlike anywhere else, she understands the rules of social interaction—many are laid out line by line in the store’s manual—and she does her best to copy the dress, mannerisms, and speech of her colleagues, playing the part of a “normal” person excellently, more or less. Managers come and go, but Keiko stays at the store for eighteen years. It’s almost hard to tell where the store ends and she begins. Keiko is very happy, but the people close to her, from her family to her coworkers, increasingly pressure her to find a husband, and to start a proper career, prompting her to take desperate action…',13.99,'FICTION',50,1),(22,'978-1552454299','Made-Up: A True Story of Beauty Culture under Late Capitalism','Daphne B. ','Coach House Books ','As Daphné B. obsessively watches YouTube makeup tutorials and haunts Sephora’s website, she’s increasingly troubled by the ways in which this obsession contradicts her anti-capitalist and intersectional feminist politics. In this poetic treatise, she rejects the false binaries of traditional beauty standards and delves into the celebrities and influencers, from Kylie to Grimes, and the poets and philosophers, from Anne Boyer to Audre Lorde, who have shaped the reflection she sees in the mirror. At once confessional and essayistic, Made-Up is a meditation on the makeup that colours, that obscures, that highlights who we are and who we wish we could be.',12.99,'NON_FICTION',59,1),(23,'978-1800198272','The Family Across the Street','Nicole Trope','Bookouture','Everybody wants to live on Hogarth Street, the pretty, tree-lined avenue with its white houses. The new family, The Wests, are a perfect fit. Katherine and Josh seem so in love and their gorgeous five-year-old twins race screeching around their beautiful emerald-green lawn.\r\n\r\nBut soon people start to notice: why don’t they join backyard barbecues? Why do they brush away offers to babysit? Why, when you knock at the door, do they shut you out, rather than inviting you in?\r\n\r\nEvery family has secrets, and on the hottest day of the year, the truth is about to come out. As a tragedy unfolds behind closed doors, the dawn chorus is split by the wail of sirens. And one by one the families who tried so hard to welcome the Wests begin to realise: Hogarth Street will never be the same again.',11.99,'MYSTERY_THRILLER',30,1),(24,'978-0062468475','Lullabies for Little Criminals','Heather O\'Neill','Harper Perennial','Baby, all of thirteen years old, is lost in the gangly, coltish moment between childhood and the strange pulls and temptations of the adult world. Her mother is dead; her father Jules is always on the lookout for his next score. Baby knows that “chocolate milk” is Jules’ slang for heroin and sees a lot more of that in her house than the real article. But she takes vivid delight in the scrappy bits of happiness and beauty that find their way to her, and moves through the threat of the streets as if she’s been choreographed in a dance.',14.99,'FICTION',40,1),(25,'978-1443423656','The Humans','Matt Haig ','HarperCollins','Cambridge University, the visitor is eager to complete the gruesome task assigned him and hurry back home to the utopian world of his own planet, where everyone enjoys immortality and infinite knowledge.\r\n\r\nHe is disgusted by the way humans look, what they eat, and their capacity for murder and war, and he is equally baffled by the concepts of love and family. But as time goes on, he starts to realize there may be more to this weird species than he has been led to believe. Disguised as Martin, he drinks wine, reads poetry, and develops an ear for rock music and a taste for peanut butter. Slowly, unexpectedly, he forges bonds with Martin’s family, and in picking up the pieces of the professor’s shattered personal life, he begins to see hope and beauty in the humans’ imperfections and to question the mission that brought him here.',13.99,'SCIENCE_FICTION',50,1),(26,'978-0307743657','The Shining ','Stephen King','Anchor','Jack Torrance’s new job at the Overlook Hotel is the perfect chance for a fresh start. As the off-season caretaker at the atmospheric old hotel, he’ll have plenty of time to spend reconnecting with his family and working on his writing. But as the harsh winter weather sets in, the idyllic location feels ever more remote . . . and more sinister. And the only one to notice the strange and terrible forces gathering around the Overlook is Danny Torrance, a uniquely gifted five-year-old.',9.99,'MYSTERY_THRILLER',25,1);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `status_update_date` date DEFAULT NULL,
  `status` enum('REQUEST','CANCELLED','FULFILLED') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `requests_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (7,8,'BuffySummers','Alex','2023-08-31','2023-08-31','FULFILLED'),(8,2,'BuffySummers','Alex','2023-08-31','2023-09-01','FULFILLED'),(9,2,'BuffySummers',NULL,'2023-08-31','2023-09-01','CANCELLED'),(10,8,'BuffySummers','Alex','2023-08-31','2023-09-01','FULFILLED'),(11,23,'BuffySummers',NULL,'2023-08-31','2023-09-01','CANCELLED'),(12,22,'BuffySummers','Alex','2023-08-31','2023-09-01','FULFILLED'),(13,17,'BuffySummers','Ehsan','2023-08-31','2023-09-01','FULFILLED'),(14,4,'BuffySummers','Ehsan','2023-08-31','2023-09-01','FULFILLED'),(15,13,'BuffySummers','Ehsan','2023-08-31','2023-09-01','FULFILLED'),(16,3,'RupertGiles',NULL,'2023-08-31',NULL,'REQUEST'),(17,12,'RupertGiles',NULL,'2023-08-31',NULL,'REQUEST'),(18,21,'RupertGiles',NULL,'2023-08-31',NULL,'REQUEST'),(19,4,'RupertGiles',NULL,'2023-08-31',NULL,'REQUEST'),(20,3,'WillowRosenberg',NULL,'2023-08-31',NULL,'REQUEST'),(21,19,'WillowRosenberg',NULL,'2023-08-31',NULL,'REQUEST'),(22,13,'WillowRosenberg',NULL,'2023-08-31',NULL,'REQUEST'),(23,10,'WillowRosenberg',NULL,'2023-08-31',NULL,'REQUEST'),(24,26,'WillowRosenberg',NULL,'2023-08-31',NULL,'REQUEST'),(25,17,'BuffySummers',NULL,'2023-09-01',NULL,'REQUEST');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `enabled` tinyint NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Alex','$2a$10$CDYsqhgdfA2UNkkks2tcYOR0apkGzbpP81kxlAZkGYeAmT3yUv1XK','Alex Franklin','alexandra.a.franklin@gmail.com',1),('alex1993','$2a$10$lRetscLZz/AVn5X6.MjPj.I1oZVyYkbdE1iMS.ttl1ErrWp24XkjW','Alexandra Franklin','alexandra.a.franklin@gmail.com',1),('alexandra93','{noop}hello123','Alexandra Franklin','alexandra.a.franklin@gmail.com',1),('BuffySummers','$2a$10$a5SXIBlEaViN.ua44EOMTeS4xWx/OFHK5qQtkFE1uIeNGMvnsZhra','Buffy Summers','vampire.slayer@gmail.com',1),('Ehsan','$2a$10$zAyAM3cVFHoYmpbSlUCw4uq.HbfgAKSlm2f/aCm22zrQaydYaqWxu','Ehsan Motlagh','ehsan@gmail.com',1),('Giles','$2a$10$tXKtKD1xIUXPDMkCknOukOML95JC4xscrZv/BXMUcDcMsQk2dRmum','Rupert Giles','r.giles@gmail.com',1),('hello_imauser','$2a$10$aWd0JACsvhC/xvTEeK18juRa.kiKC9Amjknc.wITfYzx2fZCxFXWa','User Name','ima.user@gmail.com',1),('john','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q','john smith','john.smith@gmail.com',1),('mary','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q','mary sure','mary.sue@gmail.com',1),('RupertGiles','$2a$10$RGKyo7lMj4ZlzXAdsP/I8.DGlxZTFaDp9mim2W9/thceLPCIqkop.','Rupert Giles','rupert.giles@gmail.com',1),('susan','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q','susan jones','susan.jones@gmail.com',1),('WillowRosenberg','$2a$10$.gIlxfTCzT1fVJ4HobxalePQeNA.OCkd2K3FAvyhftjFQ23hUdyWK','Willow Rosenburg','w.rosenburg@gmail.com',1);
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

-- Dump completed on 2023-09-01  1:33:54
