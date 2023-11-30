-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 12:41 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrosefoundation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'kadugyamfi4', '1234'),
(2, 'Trab', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `file` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `author` varchar(150) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `file`, `title`, `date`, `author`, `content`) VALUES
(1, 'E maths.jpg', 'Mathematics', '2021-12-01', 'Einstien-Shanon', 'Sport pertains to any form of competitive physical activity or game[1] that aims to use, maintain or improve physical ability and skills while providing enjoyment to participants and, in some cases, entertainment to spectators.[2] Sports can, through casual or organized participation, improve one\'s physical health. Hundreds of sports exist, from those between single contestants, through to those with hundreds of simultaneous participants, either in teams or competing as individuals. In certain sports such as racing, many contestants may compete, simultaneously or consecutively, with one winner; in others, the contest (a match) is between two sides, each attempting to exceed the other. Some sports allow a \"tie\" or \"draw\", in which there is no single winner; others provide tie-breaking methods to ensure one winner and one loser. A number of contests may be arranged in a tournament producing a champion. Many sports leagues make an annual champion by arranging games in a regular sports season, followed in some cases by playoffs.'),
(2, 'books.jpeg', 'Trial', '2021-12-01', 'trabs', 'There are opposing views on the necessity of competition as a defining element of a sport, with almost all professional sports involving competition, and governing bodies requiring competition as a prerequisite of recognition by the International Olympic Committee (IOC) or SportAccord.[1]\r\n\r\nOther bodies advocate widening the definition of sport to include all physical activity. For instance, the Council of Europe include all forms of physical exercise, including those competed just for fun.\r\n\r\nIn order to widen participation, and reduce the impact of losing on less able participants, there has been an introduction of non-competitive physical activity to traditionally competitive events such as school sports days, although moves like this are often controversial.[13][14]\r\n\r\nIn competitive events, participants are graded or classified based on their \"result\" and often divided into groups of comparable performance, (e.g. gender, weight and age). The measurement of the result may be objective or subjective, and corrected with \"handicaps\" or penalties. In a race, for example, the time to complete the course is an objective measurement. In gymnastics or diving the result is decided by a panel of judges, and therefore subjective. There are many shades of judging between boxing and mixed martial arts, where victory is assigned by judges if neither competitor has lost at the end of the match time.'),
(3, 'img_5.jpg', 'Physics', '2021-12-11', 'Trabeau', 'Physics is the natural science that studies matter,[a] its fundamental constituents, its motion and behavior through space and time, and the related entities of energy and force.[2] Physics is one of the most fundamental scientific disciplines, and its main goal is to understand how the universe behaves.[b][3][4][5]\r\n\r\nPhysics is one of the oldest academic disciplines and, through its inclusion of astronomy, perhaps the oldest.[6] Over much of the past two millennia, physics, chemistry, biology, and certain branches of mathematics were a part of natural philosophy, but during the Scientific Revolution in the 17th century these natural sciences emerged as unique research endeavors in their own right.[c] Physics intersects with many interdisciplinary areas of research, such as biophysics and quantum chemistry, and the boundaries of physics are not rigidly defined. New ideas in physics often explain the fundamental mechanisms studied by other sciences[3] and suggest new avenues of research in academic disciplines such as mathematics and philosophy.\r\n\r\nAdvances in physics often enable advances in new technologies. For example, advances in the understanding of electromagnetism, solid-state physics, and nuclear physics led directly to the development of new products that have dramatically transformed modern-day society, such as television, computers, domestic appliances, and nuclear weapons;[3] advances in thermodynamics led to the development of industrialization; and advances in mechanics inspired the development of calculus.'),
(4, 'img_5.jpg', 'Physics', '2021-12-11', 'Trabeau', 'Physics is the natural science that studies matter,[a] its fundamental constituents, its motion and behavior through space and time, and the related entities of energy and force.[2] Physics is one of the most fundamental scientific disciplines, and its main goal is to understand how the universe behaves.[b][3][4][5]\r\n\r\nPhysics is one of the oldest academic disciplines and, through its inclusion of astronomy, perhaps the oldest.[6] Over much of the past two millennia, physics, chemistry, biology, and certain branches of mathematics were a part of natural philosophy, but during the Scientific Revolution in the 17th century these natural sciences emerged as unique research endeavors in their own right.[c] Physics intersects with many interdisciplinary areas of research, such as biophysics and quantum chemistry, and the boundaries of physics are not rigidly defined. New ideas in physics often explain the fundamental mechanisms studied by other sciences[3] and suggest new avenues of research in academic disciplines such as mathematics and philosophy.\r\n\r\nAdvances in physics often enable advances in new technologies. For example, advances in the understanding of electromagnetism, solid-state physics, and nuclear physics led directly to the development of new products that have dramatically transformed modern-day society, such as television, computers, domestic appliances, and nuclear weapons;[3] advances in thermodynamics led to the development of industrialization; and advances in mechanics inspired the development of calculus.'),
(5, 'IMG-20190520-WA0063.jpg', 'The Journey', '2021-12-13', 'Kwabena Adu Gyamfi', 'Growing up, my dreams had been alternating; from wanting to be a Gynaecologist to a mining engineer until I finally settled on becoming an electrical engineer. I was quite young so my dreams werenâ€™t shuttered by my familyâ€™s financial status. I have six siblings and out of them only one had been able to struggle and make it through the polytechnic. Despite this, I had been very optimistic about my dreams. I had the privilege of attending St. Augustineâ€™s College, one of the most prestigious all male second cycle institutions in Ghana.\r\nThe reality of facing financial difficulties while at the University or even never having to enter the University was beginning to dawn on me after I had taken my final exam and because of that I decided to take a job as a primary school tutor. After passing my exam, it was obvious that I was going to gain admission to the University but I was also beginning to lose hope until I heard about the youths Mentorship Abilities Professionally (youthsMAP) scholarship program from one of my Teachers, Mrs. Beatrice Owusu who also happens to be a benefactor of the program. \r\nI am currently in my third year reading BSc Telecommunications Engineering at the Kwame Nkrumah University of Science and Technology (KNUST) and this is all because of the kind gesture YouthsMap has given me. Before I joined the youthsMAP program, I thought scholarship schemes were all about the academic and financial stuff. Probably other scholarship programs are only concerned with the academic and financial issues but youthsMAP is different. \r\nYouthsMAP has a well-structured mentorship scheme to help direct the path of all scholars. Initially I was just focused on getting my degree and getting myself a job after school but because of the mentorship program I have been inspired to want to do more. As a result of this inspiration, I decided to take up a leadership role on campus and fortunately I was voted in as the President of Telecommunication Students Association (TELESA).\r\nYouthsMAP also has a policy that mandates scholars to participate in extra curricula activities and also take Massive Open Online Courses in order to gain skills that are not only important for individual development but also significant to the job market. Through this Iâ€™ve been inspired to take other online courses in addition to the required ones. And now I hope not to be an electrical engineer only but also a software engineer.\r\n  If there is anything Iâ€™ve come to know since joining the youthsMAP program is that youthsMAP doesnâ€™t produce intellectuals only but also skilled and responsible individuals. To me youthsMAP is more than a scholarship program, it is a family that I am happy and proud to be part of. I believe all of us scholars (beneficiaries of youthsMAP), hope for nothing more than to grow up to be like our mentors and also give back to the society\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
