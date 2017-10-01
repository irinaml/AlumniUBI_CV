-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2016 at 03:40 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caboubi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `Nome` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `PASSWORD`, `Nome`) VALUES
(1, 'irimaml@gmail.com', '123456', 'Irina Lopes');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `ID` int(11) NOT NULL,
  `NUMERO` int(11) NOT NULL,
  `Nome` varchar(500) DEFAULT NULL,
  `Ano_Lec` int(11) DEFAULT NULL,
  `email_um` varchar(100) DEFAULT NULL,
  `email_dois` varchar(100) DEFAULT NULL,
  `Instituicao` varchar(100) DEFAULT NULL,
  `profissao` varchar(100) DEFAULT NULL,
  `ilha_id` int(11) DEFAULT NULL,
  `Morada` varchar(1000) DEFAULT NULL,
  `Telefone_um` int(11) DEFAULT NULL,
  `Telefone_dois` int(11) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `curso_id` int(11) NOT NULL,
  `Pais` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`ID`, `NUMERO`, `Nome`, `Ano_Lec`, `email_um`, `email_dois`, `Instituicao`, `profissao`, `ilha_id`, `Morada`, `Telefone_um`, `Telefone_dois`, `password`, `curso_id`, `Pais`) VALUES
(2, 7091, 'Fernando Elfsio Leboucher Freire de Andrade ', 1993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(3, 19195, 'Filander de Matos Ferreira Santos mes ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(4, 15940, 'Flßvio Jorge Tavares Almada ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(5, 17163, 'Florissandra mes Dias ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 4, NULL),
(6, 18128, 'Fredson Emanuel Monteiro Barbosa ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(7, 24054, 'GardTnia Natally Rodrigues Rocha ', 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(8, 13398, 'Gerson Adriano Silva Cardoso ', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(9, 9670, 'Gil Carlos Silva Costa ', 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(10, 23909, 'Gilberto Mendes Tavares ', 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(11, 7994, 'Gilda Maria Neves Lopes ', 1994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(12, 12424, 'Gilda Ramos Duarte ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(13, 18130, 'Helga Eveline Ramalho Pires ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 7, NULL),
(14, 27513, 'Heliana Alexandra Sequeira Bejarano ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 8, NULL),
(15, 13713, 'Helida Izabel de Barros Moreira ', 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(16, 19211, 'Idßnia Cristina Delgado Fortes Chantre ', 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 9, NULL),
(17, 19495, 'Idelmira Fortes Monteiro ', 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(18, 16843, 'Indira Filomena Silva Lisboa Leite ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 9, NULL),
(19, 18349, 'Ioland de Pina Tavares ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(20, 18116, 'Irina de Melo Lopes ', 2004, 'irimaml@gmail.com', 'irina.m.lopes@nosi.cv', 'NOSi', 'Analista de Sistemas', NULL, 'rua vila de sal reittt', NULL, NULL, '123456', 10, ''),
(21, 19430, 'Ivan Renato Soares Lopes ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL),
(22, 23374, 'Ivanilda Teresa dos Reis Correia ', 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL),
(23, 15941, 'Iven Gualberto Rocha Rodrigues ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(24, 13425, 'Jackson Varela Monteiro ', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 11, NULL),
(25, 15884, 'Jaclin Elaine Semedo Freire ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 9, NULL),
(26, 24031, 'Jacqueline Cibele Monteiro Delgado ', 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 12, NULL),
(27, 6206, 'Jaime Augusto Ferreira Carvalho de Melo ', 1992, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(28, 16872, 'Jakson Augusto Leger Monteiro ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 11, NULL),
(29, 15898, 'Jaquelindo Vieira Fernandes ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 4, NULL),
(30, 16868, 'Jopo da Cruz Sequeira Centeio ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(31, 7998, 'Joaquim dos Santos Duarte ', 1994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(32, 7999, 'Jorge Pedro dos Santos ', 1994, NULL, NULL, NULL, NULL, NULL, 'Monte Sosse, Porta 104- S. Vicente', NULL, NULL, 'password', 13, NULL),
(33, 9671, 'JosT Armindo Fernandes Duarte ', 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(34, 15900, 'JosT Cesaltino Ramos Semedo Borges ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(35, 15901, 'JosT Felismino Vieira Furtado ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL),
(36, 17221, 'JosT Manuel Monteiro de Andrade ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 13, NULL),
(37, 13429, 'JosT Maria Barbosa Vicente Vieira ', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(38, 17178, 'JosT Mßrio Fernandes ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 4, NULL),
(39, 17211, 'JosT Rui Monteiro Chantre ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL),
(40, 25851, 'Josiane Janette Reis Correia ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 14, NULL),
(41, 11356, 'Juliana Amarise Barros Correia ', 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(42, 12419, 'J·lio Tavares dos Santos Baptista ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(43, 17188, 'Karina Barbosa de Aguiar Sousa Brito ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 14, NULL),
(44, 7989, 'Kßtia Suzana Silva Antunes ', 1994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(45, 10183, 'Kira Helena Monteiro Lopes ', 1997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(46, 17164, 'Leida Cristina Baptista mes Furtado ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 15, NULL),
(47, 20944, 'Leida Marisa Martins Semedo ', 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(48, 15903, 'Leila Cristina de Portela e Prado Brito ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 4, NULL),
(49, 12477, 'Lenilda Soraia dos Reis Rodrigues Duarte ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 13, NULL),
(50, 16860, 'Leonilde Sofia Mendes Tavares ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL),
(51, 2725, 'Leonor Lopes Fidal ', 1989, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(52, 28000, 'Liliane Ailine Miranda Almeida dos Reis ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 8, NULL),
(53, 19256, 'Loyde Eunice mes Rodrigues Pereira ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 9, NULL),
(54, 16867, 'Lucilia de Sousa Alves Freire ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(55, 16863, 'Ludmila Priscila Lima Juff ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(56, 19814, 'Mafalda Monteiro Chantre ', 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(57, 24037, 'Manuel Ant=nio Monteiro ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 16, NULL),
(58, 6205, 'Manuela Moreira Borges ', 1992, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(59, 18324, 'Mara Soalene mes Lima ', 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 15, NULL),
(60, 10176, 'Marcila Carla Cruz Almeida ', 1997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 17, NULL),
(61, 25767, 'Marco Ant=nio Santos Nobre Ferreira ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 18, NULL),
(62, 25795, 'Marco Paulo Alves Rocha ', 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 19, NULL),
(63, 18444, 'Margarete Hegina Martins Cardoso ', 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL),
(64, 28032, 'Maria do Nascimento Soares Rosa ', 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 20, NULL),
(65, 18110, 'Mßrio Adnilson LTlis Ramos ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(66, 7842, 'Mßrio Paulo da Fonseca Brito ', 1994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(67, 9678, 'Mßrio Rui Lopes Fernandes ', 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(68, 10178, 'Matinilde Augusta Amado Dias ', 1997, NULL, NULL, NULL, NULL, NULL, 'Morada fixa Portugal: Rua dos Vencedores, Lote 162/ St¦ Iria da Az=ia. Morada de Cabo Verde: Terra Branca- Praia', 238614246, 9597916, 'password', 13, NULL),
(69, 15890, 'Mavlinda Clodete Mendes Cabral ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(70, 27512, 'MTlanie Tatianne Pires Lima ', 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 21, NULL),
(71, 16862, 'Miriam Cristina Lima ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 14, NULL),
(72, 22604, 'Mirte Ailine Sequeira da Grata ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 22, NULL),
(73, 17179, 'Naldina Solange Ferreira Lima ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 13, NULL),
(74, 13428, 'Natßlio de Jesus Pereira Barbosa ', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(75, 11239, 'Nely Aline Fonseca Silva ', 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(76, 19231, 'NTrito JosT Monteiro Lopes ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 15, NULL),
(77, 12420, 'Odair SilvTrio Lopes Lima ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 11, NULL),
(78, 12417, 'Osvaldino Domins ntalves Afonso ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(79, 7996, 'Paulo Jorge Medina Soares ', 1994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(80, 16871, 'Pedro Alexandre Marta e Silva ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 23, NULL),
(81, 11147, 'Ricardo Afranio Filipe do Rosßrio ', 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(82, 19535, 'Rodri Carlos Silva Vera Cruz ', 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 15, NULL),
(83, 27509, 'R=mio J·nior Silva Pinto ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 21, NULL),
(84, 8818, 'Rui Manuel de Almeida Santos ', 1995, NULL, NULL, NULL, NULL, NULL, 'Lar Prata IndependOncia- S.Vicente', NULL, NULL, 'password', 13, NULL),
(85, 15969, 'Ruth Helena Chantre Lima Andrade ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 14, NULL),
(86, 10177, 'Samira da Conceitpo Lopes Furtado ', 1997, NULL, NULL, NULL, NULL, NULL, 'Achadinha Cima - Praia', 238616853, NULL, 'password', 13, NULL),
(87, 25789, 'Sandira Delisa Alves Cardoso ', 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 13, NULL),
(88, 15938, 'Sandra Helena Grata dos Reis ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(89, 15526, 'Silvania Benr=s Santos Lopes ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(90, 12432, 'Sflvio da Veiga Martins ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(91, 18408, 'S=nia Cristina Pereira Sousa Varela ', 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 24, NULL),
(92, 12422, 'S=nia Freitas Lopes Semedo ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(93, 20940, 'Suely de Fßtima +vora da Grata ', 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 14, NULL),
(94, 21769, 'Suzano InocOncio mes ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 18, NULL),
(95, 7865, 'Tatiana Rodrigues Pires Pereira Neves ', 1994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(96, 12418, 'Ulisses Silva Cardoso ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 11, NULL),
(97, 24061, 'Vadilene Martins Reis Cruz ', 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL),
(98, 12426, 'Vanusa Coelho dos Santos ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(99, 10186, 'Vassilisa Coelho dos Santos ', 1997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(100, 6994, 'Vera Lucia Santia da Cruz ', 1993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(101, 15570, 'Waldir Simpo Alves Moreira ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL),
(102, 18347, 'Walter Jorge Rodrigues Soares ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 25, NULL),
(103, 17139, 'Wilson Gabriel Araujo Lima Barbosa Vicente ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(104, 12421, 'Wilson Madaleno Leger Monteiro ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 11, NULL),
(105, 17209, 'Yannick Fortes Teixeira ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 25, NULL),
(106, 11466, 'Zacarias Isabel Fernandes Vasconcelos ', 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(107, 7997, 'Zaida Helena Pereira Sanches ', 1994, NULL, NULL, NULL, NULL, NULL, 'Cabo Verde- Cidade da Praia', 238616694, NULL, 'password', 13, NULL),
(108, 25682, 'Adelina Maria Rocha Vieira ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7777, NULL, 'password', 26, NULL),
(109, 14582, 'Adilson Augusto Fortes InocOncio Santos ', 2001, NULL, NULL, NULL, NULL, NULL, 'bbbb', NULL, NULL, 'password', 3, NULL),
(110, 7995, 'Adilson Jorge Almeida Pinto ', 1994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(111, 12042, 'Adilson JosT ntalves Correia ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(112, 9664, 'Adriano Ferreira Soares ', 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(113, 24421, 'Agnelo Augusto Correia Rodrigues ', 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 26, NULL),
(114, 20926, 'Ailton Aguinaldo Monteiro Pina ', 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 15, NULL),
(115, 19981, 'Albertina Helena mes Fernandes ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 8, NULL),
(116, 13440, 'Alberto Fortes Piedade ', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 4, NULL),
(117, 18270, 'Aleida Helena Semedo Moniz de Barros ', 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 19, NULL),
(118, 20950, 'Alessandro Almeida Santos ', 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(119, 11432, 'Alexey Odair Barros Delgado Coimbra ', 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(120, 27033, 'Alexsander Lopes Varela ', 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 27, NULL),
(121, 13459, 'Alina Helena Chantre Lima Andrade ', 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(122, 22619, '-lvaro Manuel Silva Lima ', 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL),
(123, 19573, 'AmGndia Jacira dos Reis Correia ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 14, NULL),
(124, 20159, 'Ana Catarina mes Monteiro ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(125, 6996, 'Ana Cristina Lopes Semedo ', 1993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(126, 7975, 'Andrea Ferro Marques ', 1994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 13, NULL),
(127, 14289, 'Anfbal da Luz Santos Mota ', 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(128, 17226, 'Anicildina Conceitpo Lopes Teixeira ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 20, NULL),
(129, 15928, 'Anilson de Natividade dos Santos Almeida ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 28, NULL),
(130, 29385, 'Anisa Serruto Costa e Silva ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(131, 14604, 'Ant=nio Monteiro Mascarenhas ', 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 29, NULL),
(132, 12423, 'Ant=nio Monteiro Vaz ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(133, 9673, 'Ant=nio Ramos Verfssimo ', 1996, NULL, NULL, NULL, NULL, NULL, 'Fonte- Filpe, 540 -Mindelo- S.Vicente', NULL, NULL, 'password', 13, NULL),
(134, 13394, 'Ant=nio Vicente Silva Lisboa Leite ', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(135, 12433, 'Argentina Tomar Fortes ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(136, 9675, 'Ariano Cormeno Moreno Barbosa ', 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(137, 6135, 'Armando Moreira da Veiga ', 1992, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(138, 11240, 'Artemisa Afonso Monteiro ', 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(139, 16865, 'Bela Rosangela Conceitpo Costa Correia ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 19, NULL),
(140, 7991, 'Bernardina Correia Silves Ferreira ', 1994, NULL, NULL, NULL, NULL, NULL, 'Morada Portugal: Rua dos Reis n¦ 3-b Cova da Moura ', 214975036, NULL, 'password', 13, NULL),
(141, 9677, 'Bruno Augusto Benjamim Cardoso Vieira de Andrade ', 1996, 'Brunoandrade-9677@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 13, NULL),
(142, 20941, 'Carla Alberta Miranda Mendes Borges ', 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 9, NULL),
(143, 14584, 'Carla Andreia Duarte Soares +vora ', 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(144, 24029, 'Carla Cristina Ortet Benchimol ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 21, NULL),
(145, 10428, 'Carla Irineia Tancredo Rocha ', 1997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(146, 10184, 'Carla Patrfcia Dupret Carvalhal ', 1997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(147, 31741, 'Carlitos Lopes Varela ', 2012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 23, NULL),
(148, 17165, 'Carlos Adilson Ara·jo Teixeira ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 24, NULL),
(149, 12425, 'Carlos Alberto Sß Nogueira Borges ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 13, NULL),
(150, 12481, 'Carlos JosT Arteaga Barbosa Rodrigues ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(151, 17219, 'Carlos Manuel Carvalho de Pina ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 30, NULL),
(152, 18132, 'Carmen Helena Amado Varela ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(153, 6998, 'Carmen Helena Carvalho Cruz ', 1993, NULL, NULL, NULL, NULL, NULL, 'Morada em Portugal: Bairro Sr¬ de Sa·de, Rua Santa Maria , Vivenda AmTlia Tarouca', 219417135, NULL, 'password', 13, NULL),
(154, 11431, 'Cecflia Ermelinda Benholiel Barbosa Monteiro ', 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(155, 15132, 'Christian Ara·jo de Brito Lopes ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL),
(156, 15541, 'Clotilde Martins Cardoso ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 13, NULL),
(157, 15934, 'Cris Ivaldo Monteiro Fernandes ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 11, NULL),
(158, 9676, 'Crisolita da Cruz Oliveira ', 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(159, 17212, 'Daniel Amarando Pires Santos ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(160, 17194, 'Daniela Suely Monteiro Furtado ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(161, 18261, 'Danielson dos Santos Don ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(162, 15542, 'Denilson mes Ribeiro ', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 2, NULL),
(163, 14587, 'Denis Jorge Ferreira Martins ', 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(164, 9674, 'Denise Fortes Nascimento ', 1996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 5, NULL),
(165, 13396, 'Djamilton Lima Mendes Ramos ', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(166, 20914, 'Eder Wolsen Henriques Lopes ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL),
(167, 19135, 'Edilene do Rosßrio Ramos Spencer Andrade ', 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 4, NULL),
(168, 18386, 'Edmir de Jesus +vora da Veiga Freire ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 18, NULL),
(169, 14326, 'Edson Alves Silva Valadares ', 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 6, NULL),
(170, 12430, 'ElisGngela Rosely do Rosßrio Leite ', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(171, 16859, 'Elisangela Soares Moniz ', 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 19, NULL),
(172, 29791, 'Elody Crystel Rodrigues Semedo ', 2011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 21, NULL),
(173, 6995, 'Elsa Marflia Delgado de Brito ', 1993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(174, 8817, 'Elvis Garcia Monteiro Evora ', 1995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 1, NULL),
(175, 8819, 'Emanuel Almeida Cabral ', 1995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 3, NULL),
(176, 25782, 'Ernesto ntalves Pina Cardoso ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 26, NULL),
(177, 11470, 'EugTnia Margarida de Sousa Modesto Moeda ', 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 13, NULL),
(178, 18468, 'Evelin Pires ', 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'password', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alumni_registo`
--

CREATE TABLE `alumni_registo` (
  `ID` int(11) NOT NULL,
  `NUMERO` int(11) DEFAULT NULL,
  `Nome` varchar(500) DEFAULT NULL,
  `Ano_Lec` int(11) DEFAULT NULL,
  `email_um` varchar(100) DEFAULT NULL,
  `email_dois` varchar(100) DEFAULT NULL,
  `Instituicao` varchar(100) DEFAULT NULL,
  `profissao` varchar(100) DEFAULT NULL,
  `ilha_id` int(11) DEFAULT NULL,
  `Morada` varchar(1000) DEFAULT NULL,
  `Telefone_um` int(11) DEFAULT NULL,
  `Telefone_dois` int(11) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL,
  `Pais` varchar(100) DEFAULT NULL,
  `estado` varchar(1) DEFAULT 'R',
  `outro_curso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(555) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curso`
--

INSERT INTO `curso` (`id`, `nome`, `descricao`) VALUES
(1, 'Economia', NULL),
(2, 'Engenharia Aeronáutica', NULL),
(3, 'Sociologia', NULL),
(4, 'Ciências do Desporto', NULL),
(5, 'Gestão', NULL),
(6, 'Engenharia Civil', NULL),
(7, 'Optometria e Optotécnica- Física Aplicada', NULL),
(8, 'Design Industrial', NULL),
(9, 'Psicologia', NULL),
(10, 'Engenharia Informática', NULL),
(11, 'Engenharia Mecánica', NULL),
(12, 'Ciências Farmacéuticas', NULL),
(13, 'Ciências da Comunicação', NULL),
(14, 'Marketing', NULL),
(15, 'Arquitetura', NULL),
(16, 'Medicina', NULL),
(17, 'Engenharia da Produção e Gestão Industrial', NULL),
(18, 'Engenharia Eletromecánica', NULL),
(19, 'Bioquímica', NULL),
(20, 'Filosofia', NULL),
(21, 'Ciências Biomédicas', NULL),
(22, 'Design Textil e do Vestuário', NULL),
(23, 'Design Multimédia', NULL),
(24, 'Matemática(Ensino)', NULL),
(25, 'Engenharia Eletrotécnica e de Computadores', NULL),
(26, 'Ciência Política e Relações Internacionais', NULL),
(27, 'Tecnologias e Sistemas de Informação', NULL),
(28, 'Engenharia Química', NULL),
(29, 'Informática(Ensino)', NULL),
(30, 'Ensino da Informática', NULL),
(34, 'tsyr', 'kjhkjhkjnjk'),
(35, 'testeeee', 'werwer');

-- --------------------------------------------------------

--
-- Table structure for table `ilha`
--

CREATE TABLE `ilha` (
  `id` int(11) NOT NULL,
  `ilha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ilha`
--

INSERT INTO `ilha` (`id`, `ilha`) VALUES
(8, 'Boa Vista'),
(11, 'Brava'),
(10, 'Fogo'),
(9, 'Maio'),
(7, 'Sal'),
(1, 'Santiago'),
(4, 'Santo Antão'),
(5, 'Santo Vicente'),
(6, 'São Nicolão');

-- --------------------------------------------------------

--
-- Table structure for table `mensagem`
--

CREATE TABLE `mensagem` (
  `id` int(11) NOT NULL,
  `assunto` varchar(200) DEFAULT NULL,
  `alumni_id` int(11) NOT NULL,
  `msg` varchar(4000) NOT NULL,
  `dt_msg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resposta` varchar(4000) DEFAULT NULL,
  `dt_resp` datetime DEFAULT NULL,
  `admin_id_resp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mensagem`
--

INSERT INTO `mensagem` (`id`, `assunto`, `alumni_id`, `msg`, `dt_msg`, `resposta`, `dt_resp`, `admin_id_resp`) VALUES
(8, '68678678', 20, '678678j68678678 768678', '2016-03-23 15:29:01', NULL, '2016-03-23 21:58:58', NULL),
(9, '788879', 20, '879789', '2016-03-23 15:29:24', NULL, '2016-03-23 22:37:40', 1),
(10, 'tttkj', 20, 'jhbkbbk er ert', '2016-03-23 15:29:59', NULL, '2016-03-23 22:39:02', 1),
(11, 'erter', 20, 'ertertet', '2016-03-24 10:02:24', NULL, '2016-03-24 10:17:21', 1),
(12, 'etert', 20, 'retertert', '2016-03-24 10:02:27', NULL, '2016-03-24 10:17:21', 1),
(13, 'fdffgfg', 20, 'hfghfgh', '2016-03-24 10:02:30', NULL, NULL, NULL),
(14, 'fghf fghfgh', 20, 'fhvh trhh rthrvr rth rthv', '2016-03-24 10:02:36', NULL, NULL, NULL),
(15, 'fd fdg ', 110, 'dfg df g', '2016-03-24 10:03:15', NULL, NULL, NULL),
(16, 'dfgdf gdf ', 110, 'dfg dhh ty hj y', '2016-03-24 10:03:19', NULL, NULL, NULL),
(17, ' erert ert ', 110, ' rrth eetert er', '2016-03-24 10:03:23', NULL, '2016-03-24 10:18:45', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NUMERO` (`NUMERO`),
  ADD UNIQUE KEY `email_um` (`email_um`),
  ADD KEY `ALUMNI_CURSO_FK` (`curso_id`),
  ADD KEY `alumni_ilha_fk` (`ilha_id`);

--
-- Indexes for table `alumni_registo`
--
ALTER TABLE `alumni_registo`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NUMERO` (`NUMERO`),
  ADD UNIQUE KEY `email_um` (`email_um`),
  ADD KEY `REG_CURSO_FK` (`curso_id`),
  ADD KEY `REG_ilha_fk` (`ilha_id`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Indexes for table `ilha`
--
ALTER TABLE `ilha`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ilha` (`ilha`);

--
-- Indexes for table `mensagem`
--
ALTER TABLE `mensagem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_alumni_fk` (`alumni_id`),
  ADD KEY `mensagem_admin_fk` (`admin_id_resp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `alumni_registo`
--
ALTER TABLE `alumni_registo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `ilha`
--
ALTER TABLE `ilha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mensagem`
--
ALTER TABLE `mensagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `ALUMNI_CURSO_FK` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`),
  ADD CONSTRAINT `alumni_ilha_fk` FOREIGN KEY (`ilha_id`) REFERENCES `ilha` (`id`);

--
-- Constraints for table `alumni_registo`
--
ALTER TABLE `alumni_registo`
  ADD CONSTRAINT `REG_CURSO_FK` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`),
  ADD CONSTRAINT `REG_ilha_fk` FOREIGN KEY (`ilha_id`) REFERENCES `ilha` (`id`);

--
-- Constraints for table `mensagem`
--
ALTER TABLE `mensagem`
  ADD CONSTRAINT `mensagem_admin_fk` FOREIGN KEY (`admin_id_resp`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `message_alumni_fk` FOREIGN KEY (`alumni_id`) REFERENCES `alumni` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
