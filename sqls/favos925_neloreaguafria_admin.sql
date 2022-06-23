-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 23-Jun-2022 às 11:44
-- Versão do servidor: 5.6.41-84.1
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `favos925_neloreaguafria_admin`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `centrais`
--

CREATE TABLE `centrais` (
  `id_centrais` bigint(20) NOT NULL,
  `nome` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `logo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `centrais`
--

INSERT INTO `centrais` (`id_centrais`, `nome`, `link`, `logo`) VALUES
(1, 'Alta Genetics', 'https://altagenetics.com.br', 'https://admin.neloreaguafriajg.com.br/assets/imagens/centrais/logos/altagenetics.png'),
(2, 'ABS Pecplan', 'https://www.absglobal.com/br', 'https://admin.neloreaguafriajg.com.br/assets/imagens/centrais/logos/abspecplan.png'),
(3, 'CRV Lagoa', 'https://crv4all.com.br/pt', 'https://admin.neloreaguafriajg.com.br/assets/imagens/centrais/logos/crv4all.png'),
(4, 'Genex', 'http://www.genexbrasil.com.br/home', 'https://admin.neloreaguafriajg.com.br/assets/imagens/centrais/logos/genex.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `leiloes`
--

CREATE TABLE `leiloes` (
  `id_leiloes` mediumint(9) NOT NULL,
  `nome` mediumtext,
  `data_leilao` date DEFAULT NULL,
  `hora_leilao` mediumtext,
  `desc_leilao` mediumtext,
  `banner` mediumtext,
  `local_evento` mediumtext,
  `ativo` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `leiloes`
--

INSERT INTO `leiloes` (`id_leiloes`, `nome`, `data_leilao`, `hora_leilao`, `desc_leilao`, `banner`, `local_evento`, `ativo`) VALUES
(1, 'Leilão Nelore Água Fria edição Xinguara 2020', '2020-08-22', '11:00', '400 Touros PO 100% com registro definitivo e avaliação de carcaça', '99e5c98f-f66b-4ea3-98e3-23b88f0e9a24.jpg', 'Xinguara - PA', '1'),
(8, '', '0000-00-00', '', '', '', '', '0'),
(9, 'Leilão Virtual Nelore Água Fria Edição Marabá 2020', '2020-10-24', '13:00', '150 touros PO 100% com registro definitivo e avaliação de carcaça e 1.000 animais de corte.', 'banner_leilao_2020_2.jpeg', 'Marabá - PA', '1'),
(10, 'Leilão Nelore Água Fria edição Xinguara 2021', '2021-08-21', '11:00', '500 Touros PO 100% com registro definitivo e avaliação de carcaça', 'banner_leilao_2021_2.jpeg', 'Xinguara - PA', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveis_usuario`
--

CREATE TABLE `niveis_usuario` (
  `id_niveis_usuario` mediumint(9) NOT NULL,
  `nivel` mediumtext,
  `ativo` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `niveis_usuario`
--

INSERT INTO `niveis_usuario` (`id_niveis_usuario`, `nivel`, `ativo`) VALUES
(1, 'Desenvolvedor', 1),
(2, 'Suporte', 1),
(3, 'Administrador', 1),
(4, 'Padr&atilde;o', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissoes_niveis_usuario`
--

CREATE TABLE `permissoes_niveis_usuario` (
  `id_permissoes_niveis_usuario` bigint(20) NOT NULL,
  `id_niveis_usuario` bigint(20) NOT NULL,
  `id_rotas` bigint(20) NOT NULL,
  `ativo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `permissoes_niveis_usuario`
--

INSERT INTO `permissoes_niveis_usuario` (`id_permissoes_niveis_usuario`, `id_niveis_usuario`, `id_rotas`, `ativo`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 3, 1, 1),
(8, 3, 2, 1),
(9, 3, 3, 1),
(10, 3, 6, 1),
(11, 3, 7, 1),
(12, 1, 7, 1),
(13, 1, 8, 1),
(14, 4, 1, 1),
(15, 4, 2, 1),
(16, 4, 3, 1),
(17, 4, 4, 1),
(18, 2, 1, 1),
(19, 2, 2, 1),
(20, 2, 3, 1),
(21, 2, 4, 1),
(22, 2, 6, 1),
(23, 2, 7, 1),
(24, 1, 9, 1),
(25, 4, 9, 1),
(26, 4, 8, 1),
(27, 4, 5, 1),
(28, 1, 10, 1),
(29, 1, 11, 1),
(30, 1, 12, 1),
(31, 4, 10, 1),
(32, 4, 11, 1),
(33, 3, 4, 1),
(34, 3, 5, 1),
(35, 1, 13, 1),
(36, 1, 14, 1),
(37, 1, 15, 1),
(38, 1, 17, 1),
(39, 1, 18, 1),
(40, 1, 19, 1),
(41, 1, 20, 1),
(42, 3, 14, 1),
(43, 3, 20, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id_pessoas` mediumint(9) NOT NULL,
  `nome` mediumtext,
  `telefone` mediumtext,
  `endereco` mediumtext,
  `ativo` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rotas`
--

CREATE TABLE `rotas` (
  `id_rotas` mediumint(9) NOT NULL,
  `menu` mediumtext,
  `rota` mediumtext,
  `path` mediumtext,
  `padrao` tinyint(4) DEFAULT NULL,
  `livre` tinyint(4) DEFAULT NULL,
  `ativo` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `rotas`
--

INSERT INTO `rotas` (`id_rotas`, `menu`, `rota`, `path`, `padrao`, `livre`, `ativo`) VALUES
(1, '', 'login', 'login', 1, 1, 1),
(2, '', 'logout', 'usuarios', 1, 1, 1),
(3, '', 'acesso-negado', 'acesso_negado', 1, 1, 1),
(4, 'Home', 'home', 'home', 0, 0, 1),
(5, '', 'rotas', 'rotas', 1, 0, 1),
(6, '', 'niveis-usuarios', 'niveis-usuarios', 1, 0, 1),
(7, '', 'usuarios', 'usuarios', 1, 1, 1),
(8, '', 'teste', 'teste', 1, 0, 1),
(9, '', 'login-facebook', 'login_facebook', 1, 1, 1),
(10, '', 'login-google', 'login_google', 1, 1, 1),
(11, '', 'login-instagram', 'login_instagram', 1, 1, 1),
(12, '', 'sync', 'sync', 1, 0, 1),
(13, '', 'modelos', 'modelos', 1, 0, 1),
(14, 'Leil&otilde;es', 'leiloes', 'leiloes', 0, 0, 1),
(20, 'V&iacute;deos Leil&otilde;es', 'videos-leiloes', 'videos_leiloes', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` mediumint(9) NOT NULL,
  `id_facebook` text,
  `id_google` text,
  `nome` mediumtext,
  `id_niveis_usuario` mediumint(9) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` mediumtext,
  `id_sessao` varchar(255) DEFAULT NULL,
  `avatar_img` mediumtext,
  `img_facebook` text,
  `img_google` text,
  `ativo` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `id_facebook`, `id_google`, `nome`, `id_niveis_usuario`, `email`, `senha`, `id_sessao`, `avatar_img`, `img_facebook`, `img_google`, `ativo`) VALUES
(1, '', '', 'Admin', 1, 'admin@admin', 'c56b050a3bc60bc0d680e6c3d2655c9b', 'f002e55cdbc0c1cc3cadf9a95a8a22e7', '', '', '', 1),
(2, '', '', 'Joaquim Campelo da Silva Neto', 3, 'xuakim@gmail.com', 'c56b050a3bc60bc0d680e6c3d2655c9b', '26369ae0831e1cf91fa334d7096b9b64', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos_leiloes`
--

CREATE TABLE `videos_leiloes` (
  `id_videos_leiloes` mediumint(9) NOT NULL,
  `id_leiloes` bigint(20) DEFAULT NULL,
  `link` mediumtext,
  `link_miniatura` mediumtext,
  `ativo` mediumtext,
  `nome` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `videos_leiloes`
--

INSERT INTO `videos_leiloes` (`id_videos_leiloes`, `id_leiloes`, `link`, `link_miniatura`, `ativo`, `nome`) VALUES
(1, 1, 'LOTE 051.mp4', '051.jpg', '1', 'LOTE 051'),
(2, 1, 'LOTE 052.mp4', '052.jpg', '1', 'LOTE 052'),
(3, 1, 'LOTE 053.mp4', '053.jpg', '1', 'LOTE 053'),
(4, 1, 'LOTE 054.mp4', '054.jpg', '1', 'LOTE 054'),
(5, 1, 'LOTE 055.mp4', '055.jpg', '1', 'LOTE 055'),
(6, 1, 'LOTE 056.mp4', '056.jpg', '1', 'LOTE 056'),
(7, 1, 'LOTE 057.mp4', '057.jpg', '1', 'LOTE 057'),
(8, 1, 'LOTE 058.mp4', '058.jpg', '1', 'LOTE 058'),
(9, 1, 'LOTE 059.mp4', '059.jpg', '1', 'LOTE 059'),
(10, 1, 'LOTE 060.mp4', '060.jpg', '1', 'LOTE 060'),
(11, 1, 'LOTE 061.mp4', '061.jpg', '1', 'LOTE 061'),
(12, 1, 'LOTE 062.mp4', '062.jpg', '1', 'LOTE 062'),
(13, 1, 'LOTE 063.mp4', '063.jpg', '1', 'LOTE 063'),
(14, 1, 'LOTE 064.mp4', '064.jpg', '1', 'LOTE 064'),
(15, 1, 'LOTE 065.mp4', '065.jpg', '1', 'LOTE 065'),
(16, 1, 'LOTE 066.mp4', '066.jpg', '1', 'LOTE 066'),
(17, 1, 'LOTE 067.mp4', '067.jpg', '1', 'LOTE 067'),
(18, 1, 'LOTE 068.mp4', '068.jpg', '1', 'LOTE 068'),
(19, 1, 'LOTE 069.mp4', '069.jpg', '1', 'LOTE 069'),
(20, 1, 'LOTE 070.mp4', '070.jpg', '1', 'LOTE 070'),
(21, 1, 'LOTE 071.mp4', '071.jpg', '1', 'LOTE 071'),
(22, 1, 'LOTE 072.mp4', '072.jpg', '1', 'LOTE 072'),
(23, 1, 'LOTE 073.mp4', '073.jpg', '1', 'LOTE 073'),
(25, 1, 'LOTE 075.mp4', '075.jpg', '1', 'LOTE 075'),
(26, 1, 'LOTE 076.mp4', '076.jpg', '1', 'LOTE 076'),
(27, 1, 'LOTE 077.mp4', '077.jpg', '1', 'LOTE 077'),
(28, 1, 'LOTE 078.mp4', '078.jpg', '1', 'LOTE 078'),
(29, 1, 'LOTE 079.mp4', '079.jpg', '1', 'LOTE 079'),
(30, 1, 'LOTE 080.mp4', '080.jpg', '1', 'LOTE 080'),
(31, 1, 'LOTE 081.mp4', '081.jpg', '1', 'LOTE 081'),
(32, 1, 'LOTE 082.mp4', '082.jpg', '1', 'LOTE 082'),
(33, 1, 'LOTE 083.mp4', '083.jpg', '1', 'LOTE 083'),
(34, 1, 'LOTE 084.mp4', '084.jpg', '1', 'LOTE 084'),
(35, 1, 'LOTE 085.mp4', '085.jpg', '1', 'LOTE 085'),
(36, 1, 'LOTE 086.mp4', '086.jpg', '1', 'LOTE 086'),
(37, 1, 'LOTE 087.mp4', '087.jpg', '1', 'LOTE 087'),
(38, 1, 'LOTE 088.mp4', '088.jpg', '1', 'LOTE 088'),
(39, 1, 'LOTE 089.mp4', '089.jpg', '1', 'LOTE 089'),
(40, 1, 'LOTE 090.mp4', '090.jpg', '1', 'LOTE 090'),
(41, 1, 'LOTE 091.mp4', '091.jpg', '1', 'LOTE 091'),
(42, 1, 'LOTE 092.mp4', '092.jpg', '1', 'LOTE 092'),
(43, 1, 'LOTE 093.mp4', '093.jpg', '1', 'LOTE 093'),
(44, 1, 'LOTE 094.mp4', '094.jpg', '1', 'LOTE 094'),
(45, 1, 'LOTE 095.mp4', '095.jpg', '1', 'LOTE 095'),
(46, 1, 'LOTE 096.mp4', '096.jpg', '1', 'LOTE 096'),
(47, 1, 'LOTE 097.mp4', '097.jpg', '1', 'LOTE 079'),
(48, 1, 'LOTE 098.mp4', '098.jpg', '1', 'LOTE 098'),
(49, 1, 'LOTE 099.mp4', '099.jpg', '1', 'LOTE 099'),
(50, 1, 'LOTE 100.mp4', '100.jpg', '1', 'LOTE 100'),
(51, 1, 'LOTE 101.mp4', '101.jpg', '1', 'LOTE 101'),
(52, 1, 'LOTE 102.mp4', '102.jpg', '1', 'LOTE 102'),
(53, 1, 'LOTE 103.mp4', '103.jpg', '1', 'LOTE 103'),
(54, 1, 'LOTE 104.mp4', '104.jpg', '1', 'LOTE 104'),
(55, 1, 'LOTE 105.mp4', '105.jpg', '1', 'LOTE 105'),
(56, 1, 'LOTE 106.mp4', '106.jpg', '1', 'LOTE 106'),
(57, 1, 'LOTE 107.mp4', '107.jpg', '1', 'LOTE 107'),
(58, 1, 'LOTE 108.mp4', '108.jpg', '1', 'LOTE 108'),
(59, 1, 'LOTE 109.mp4', '109.jpg', '1', 'LOTE 109'),
(60, 1, 'LOTE 110.mp4', '110.jpg', '1', 'LOTE 110'),
(61, 9, 'video_leia_2020_2.mp4', 'tumb_leilao_2020_2.png', '1', ''),
(63, 9, '01.mp4', '01.jpg', '1', 'LOTE 01'),
(64, 9, '02.mp4', '02.jpg', '1', 'LOTE 02'),
(65, 9, '03.mp4', '03.jpg', '1', 'LOTE 03'),
(66, 9, '04.mp4', '04.jpg', '1', 'LOTE 04'),
(67, 9, '05.mp4', '05.jpg', '1', 'LOTE 05'),
(68, 9, '06.mp4', '06.jpg', '1', 'LOTE 06'),
(69, 9, '07.mp4', '07.jpg', '1', 'LOTE 07'),
(70, 9, '08.mp4', '08.jpg', '1', 'LOTE 08'),
(71, 9, '09.mp4', '09.jpg', '1', 'LOTE 09'),
(72, 9, '10.mp4', '10.jpg', '1', 'LOTE 10'),
(73, 9, '11.mp4', '11.jpg', '1', 'LOTE 11'),
(74, 9, '12.mp4', '12.jpg', '1', 'LOTE 12'),
(75, 9, '13.mp4', '13.jpg', '1', 'LOTE 13'),
(76, 9, '14.mp4', '14.jpg', '1', 'LOTE 14'),
(77, 9, '15.mp4', '15.jpg', '1', 'LOTE 15'),
(78, 9, '16.mp4', '16.jpg', '1', 'LOTE 16'),
(79, 9, '17.mp4', '17.jpg', '1', 'LOTE 17'),
(80, 9, '18.mp4', '18.jpg', '1', 'LOTE 18'),
(81, 9, '19.mp4', '19.jpg', '1', 'LOTE 19'),
(82, 9, '20.mp4', '20.jpg', '1', 'LOTE 20'),
(83, 9, '21.mp4', '21.jpg', '1', 'LOTE 21'),
(84, 9, '22.mp4', '22.jpg', '1', 'LOTE 22'),
(85, 9, '23.mp4', '23.jpg', '1', 'LOTE 23'),
(86, 9, '24.mp4', '24.jpg', '1', 'LOTE 24'),
(87, 9, '25.mp4', '25.jpg', '1', 'LOTE 25'),
(88, 9, '26.mp4', '26.jpg', '1', 'LOTE 26'),
(89, 9, '27.mp4', '27.jpg', '1', 'LOTE 27'),
(90, 9, '28.mp4', '28.jpg', '1', 'LOTE 28'),
(91, 9, '29.mp4', '29.jpg', '1', 'LOTE 29'),
(92, 9, '30.mp4', '30.jpg', '1', 'LOTE 30'),
(93, 9, '31.mp4', '31.jpg', '1', 'LOTE 31'),
(94, 9, '32.mp4', '32.jpg', '1', 'LOTE 32'),
(95, 9, '33.mp4', '33.jpg', '1', 'LOTE 33'),
(96, 9, '34.mp4', '34.jpg', '1', 'LOTE 34'),
(97, 9, '35.mp4', '35.jpg', '1', 'LOTE 35'),
(98, 9, '36.mp4', '36.jpg', '1', 'LOTE 36'),
(99, 9, '37.mp4', '37.jpg', '1', 'LOTE 37'),
(100, 9, '38.mp4', '38.jpg', '1', 'LOTE 38'),
(101, 9, '39.mp4', '39.jpg', '1', 'LOTE 39'),
(102, 9, '40.mp4', '40.jpg', '1', 'LOTE 40'),
(103, 9, '41.mp4', '41.jpg', '1', 'LOTE 41'),
(104, 9, '42.mp4', '42.jpg', '1', 'LOTE 42'),
(105, 9, '43.mp4', '43.jpg', '1', 'LOTE 43'),
(106, 9, '44.mp4', '44.jpg', '1', 'LOTE 44'),
(107, 9, '45.mp4', '45.jpg', '1', 'LOTE 45'),
(108, 9, '47.mp4', '47.jpg', '1', 'LOTE 47'),
(109, 9, '48.mp4', '48.jpg', '1', 'LOTE 48'),
(110, 9, '49.mp4', '49.jpg', '1', 'LOTE 49'),
(111, 9, '50.mp4', '50.jpg', '1', 'LOTE 50'),
(112, 9, '51.mp4', '51.jpg', '1', 'LOTE 51'),
(113, 9, '52.mp4', '52.jpg', '1', 'LOTE 52'),
(114, 9, '53.mp4', '53.jpg', '1', 'LOTE 53'),
(115, 9, '54.mp4', '54.jpg', '1', 'LOTE 54'),
(116, 9, '55.mp4', '55.jpg', '1', 'LOTE 55'),
(117, 9, '56.mp4', '56.jpg', '1', 'LOTE 56'),
(118, 9, '57.mp4', '57.jpg', '1', 'LOTE 57'),
(119, 9, '58.mp4', '58.jpg', '1', 'LOTE 58'),
(120, 9, '59.mp4', '59.jpg', '1', 'LOTE 59'),
(121, 9, '60.mp4', '60.jpg', '1', 'LOTE 60'),
(122, 9, '61.mp4', '61.jpg', '1', 'LOTE 61'),
(123, 9, '62.mp4', '62.jpg', '1', 'LOTE 62'),
(124, 9, '63.mp4', '63.jpg', '1', 'LOTE 63'),
(125, 9, '64.mp4', '64.jpg', '1', 'LOTE 64'),
(126, 9, '65.mp4', '65.jpg', '1', 'LOTE 65'),
(127, 9, '66.mp4', '66.jpg', '1', 'LOTE 66'),
(128, 9, '67.mp4', '67.jpg', '1', 'LOTE 67'),
(129, 9, '68.mp4', '68.jpg', '1', 'LOTE 68'),
(130, 9, '69.mp4', '69.jpg', '1', 'LOTE 69'),
(131, 9, '70.mp4', '70.jpg', '1', 'LOTE 70'),
(132, 9, '71.mp4', '71.jpg', '1', 'LOTE 71'),
(133, 9, '72.mp4', '72.jpg', '1', 'LOTE 72'),
(134, 9, '73.mp4', '73.jpg', '1', 'LOTE 73'),
(135, 9, '74.mp4', '74.jpg', '1', 'LOTE 74'),
(136, 9, '75.mp4', '75.jpg', '1', 'LOTE 75'),
(137, 9, '76.mp4', '76.jpg', '1', 'LOTE 76'),
(138, 9, '77.mp4', '77.jpg', '1', 'LOTE 77'),
(139, 9, '78.mp4', '78.jpg', '1', 'LOTE 78'),
(140, 10, 'leilao_2021_1.mp4', 'miniatura_1.png', '1', '500 Touros Nelore feitos para o Brasil'),
(142, 10, 'leilao_2021_3.mp4', 'miniatura_3.png', '1', '500 Touros'),
(143, 10, 'LOTE 102.mp4', 'LOTE 102.jpg', '1', 'LOTE 102'),
(144, 10, 'LOTE 103.mp4', 'LOTE 103.jpg', '1', 'LOTE 103'),
(145, 10, 'LOTE 104.mp4', 'LOTE 104.jpg', '1', 'LOTE 104'),
(146, 10, 'LOTE 105.mp4', 'LOTE 105.jpg', '1', 'LOTE 105'),
(147, 10, 'LOTE 107.mp4', 'LOTE 107.jpg', '1', 'LOTE 107'),
(148, 10, 'LOTE 108.mp4', 'LOTE 108.jpg', '1', 'LOTE 108'),
(149, 10, 'LOTE 109.mp4', 'LOTE 109.jpg', '1', 'LOTE 109'),
(150, 10, 'LOTE 110.mp4', 'LOTE 110.jpg', '1', 'LOTE 110'),
(151, 10, 'LOTE 111.mp4', 'LOTE 111.jpg', '1', 'LOTE 111'),
(152, 10, 'LOTE 112.mp4', 'LOTE 112.jpg', '1', 'LOTE 112'),
(153, 10, 'LOTE 113.mp4', 'LOTE 113.jpg', '1', 'LOTE 113'),
(154, 10, 'LOTE 114.mp4', 'LOTE 114.jpg', '1', 'LOTE 114'),
(155, 10, 'LOTE 115.mp4', 'LOTE 115.jpg', '1', 'LOTE 115'),
(156, 10, 'LOTE 116.mp4', 'LOTE 116.jpg', '1', 'LOTE 116'),
(157, 10, 'LOTE 117.mp4', 'LOTE 117.jpg', '1', 'LOTE 117'),
(158, 10, 'LOTE 118.mp4', 'LOTE 118.jpg', '1', 'LOTE 118'),
(159, 10, 'LOTE 119.mp4', 'LOTE 119.jpg', '1', 'LOTE 119'),
(160, 10, 'LOTE 120.mp4', 'LOTE 120.jpg', '1', 'LOTE 120'),
(161, 10, 'LOTE 121.mp4', 'LOTE 121.jpg', '1', 'LOTE 121'),
(162, 10, 'LOTE 122.mp4', 'LOTE 122.jpg', '1', 'LOTE 122'),
(163, 10, 'LOTE 123.mp4', 'LOTE 123.jpg', '1', 'LOTE 123'),
(164, 10, 'LOTE 124.mp4', 'LOTE 124.jpg', '1', 'LOTE 124'),
(165, 10, 'LOTE 125.mp4', 'LOTE 125.jpg', '1', 'LOTE 125'),
(166, 10, 'LOTE 126.mp4', 'LOTE 126.jpg', '1', 'LOTE 126'),
(167, 10, 'LOTE 127.mp4', 'LOTE 127.jpg', '1', 'LOTE 127'),
(168, 10, 'LOTE 128.mp4', 'LOTE 128.jpg', '1', 'LOTE 128'),
(169, 10, 'LOTE 129.mp4', 'LOTE 129.jpg', '1', 'LOTE 129'),
(170, 10, 'LOTE 130.mp4', 'LOTE 130.jpg', '1', 'LOTE 130'),
(171, 10, 'LOTE 131.mp4', 'LOTE 131.jpg', '1', 'LOTE 131'),
(172, 10, 'LOTE 132.mp4', 'LOTE 132.jpg', '1', 'LOTE 132'),
(173, 10, 'LOTE 133.mp4', 'LOTE 133.jpg', '1', 'LOTE 133'),
(174, 10, 'LOTE 134.mp4', 'LOTE 134.jpg', '1', 'LOTE 134'),
(175, 10, 'LOTE 135.mp4', 'LOTE 135.jpg', '1', 'LOTE 135'),
(176, 10, 'LOTE 136.mp4', 'LOTE 136.jpg', '1', 'LOTE 136'),
(177, 10, 'LOTE 142.mp4', 'LOTE 142.jpg', '1', 'LOTE 142'),
(178, 10, 'LOTE 143.mp4', 'LOTE 143.jpg', '1', 'LOTE 143'),
(179, 10, 'LOTE 146.mp4', 'LOTE 146.jpg', '1', 'LOTE 146'),
(180, 10, 'LOTE 147.mp4', 'LOTE 147.jpg', '1', 'LOTE 147'),
(181, 10, 'LOTE 148.mp4', 'LOTE 148.jpg', '1', 'LOTE 148'),
(182, 10, 'LOTE 149.mp4', 'LOTE 149.jpg', '1', 'LOTE 149'),
(183, 10, 'LOTE 150.mp4', 'LOTE 150.jpg', '1', 'LOTE 150'),
(184, 10, 'LOTE 151.mp4', 'LOTE 151.jpg', '1', 'LOTE 151'),
(185, 10, 'LOTE 152.mp4', 'LOTE 152.jpg', '1', 'LOTE 152'),
(186, 10, 'LOTE 153.mp4', 'LOTE 153.jpg', '1', 'LOTE 153'),
(187, 10, 'LOTE 154.mp4', 'LOTE 154.jpg', '1', 'LOTE 154'),
(188, 10, 'LOTE 155.mp4', 'LOTE 155.jpg', '1', 'LOTE 155'),
(189, 10, 'LOTE 156.mp4', 'LOTE 156.jpg', '1', 'LOTE 156'),
(190, 10, 'LOTE 157.mp4', 'LOTE 157.jpg', '1', 'LOTE 157'),
(191, 10, 'LOTE 158.mp4', 'LOTE 158.jpg', '1', 'LOTE 158'),
(192, 10, 'LOTE 159.mp4', 'LOTE 159.jpg', '1', 'LOTE 159'),
(193, 10, 'LOTE 161.mp4', 'LOTE 161.jpg', '1', 'LOTE 161'),
(194, 10, 'LOTE 162.mp4', 'LOTE 162.jpg', '1', 'LOTE 162'),
(195, 10, 'LOTE 163.mp4', 'LOTE 163.jpg', '1', 'LOTE 163'),
(196, 10, 'LOTE 164.mp4', 'LOTE 164.jpg', '1', 'LOTE 164'),
(197, 10, 'LOTE 165.mp4', 'LOTE 165.jpg', '1', 'LOTE 165'),
(198, 10, 'LOTE 166.mp4', 'LOTE 166.jpg', '1', 'LOTE 166'),
(199, 10, 'LOTE 171.mp4', 'LOTE 171.jpg', '1', 'LOTE 171'),
(200, 10, 'LOTE 177.mp4', 'LOTE 177.jpg', '1', 'LOTE 177'),
(201, 10, 'LOTE 178.mp4', 'LOTE 178.jpg', '1', 'LOTE 178'),
(202, 10, 'LOTE 179.mp4', 'LOTE 179.jpg', '1', 'LOTE 179'),
(203, 10, 'LOTE 180.mp4', 'LOTE 180.jpg', '1', 'LOTE 180'),
(204, 10, 'LOTE 181.mp4', 'LOTE 181.jpg', '1', 'LOTE 181'),
(205, 10, 'LOTE 182.mp4', 'LOTE 182.jpg', '1', 'LOTE 182'),
(206, 10, 'LOTE 183.mp4', 'LOTE 183.jpg', '1', 'LOTE 183'),
(207, 10, 'LOTE 184.mp4', 'LOTE 184.jpg', '1', 'LOTE 184'),
(208, 10, 'LOTE 185.mp4', 'LOTE 185.jpg', '1', 'LOTE 185'),
(209, 10, 'LOTE 186.mp4', 'LOTE 186.jpg', '1', 'LOTE 186'),
(210, 10, 'LOTE 191.mp4', 'LOTE 191.jpg', '1', 'LOTE 191'),
(211, 10, 'LOTE 196.mp4', 'LOTE 196.jpg', '1', 'LOTE 196'),
(212, 10, 'LOTE 22.mp4', 'lote 22.png', '1', 'LOTE 22'),
(213, 10, 'LOTE 23.mp4', 'lote 23.png', '1', 'LOTE 23'),
(214, 10, 'LOTE 24.mp4', 'lote 24.png', '1', 'LOTE 24'),
(215, 10, 'LOTE 25.mp4', 'lote 25.png', '1', 'LOTE 25'),
(216, 10, 'LOTE 27.mp4', 'lote 27.png', '1', 'LOTE 27'),
(217, 10, 'LOTE 28.mp4', 'lote 28.png', '1', 'LOTE 28'),
(218, 10, 'LOTE 29.mp4', 'lote 29.png', '1', 'LOTE 29'),
(219, 10, 'LOTE 30.mp4', 'lote 30.png', '1', 'LOTE 30'),
(220, 10, 'LOTE 32.mp4', 'lote 32.png', '1', 'LOTE 32'),
(221, 10, 'LOTE 33.mp4', 'lote 33.png', '1', 'LOTE 33'),
(222, 10, 'LOTE 34.mp4', 'lote 34.png', '1', 'LOTE 34'),
(223, 10, 'LOTE 35.mp4', 'lote 35.png', '1', 'LOTE 35'),
(224, 10, 'LOTE 37.mp4', 'lote 37.png', '1', 'LOTE 37'),
(225, 10, 'LOTE 38.mp4', 'lote 38.png', '1', 'LOTE 38'),
(226, 10, 'LOTE 39.mp4', 'lote 39.png', '1', 'LOTE 39'),
(227, 10, 'LOTE 40.mp4', 'lote 40.png', '1', 'LOTE 40'),
(228, 10, 'LOTE 42.mp4', 'lote 42.png', '1', 'LOTE 42'),
(229, 10, 'LOTE 43.mp4', 'lote 43.png', '1', 'LOTE 43'),
(230, 10, 'LOTE 44.mp4', 'lote 44.png', '1', 'LOTE 44'),
(231, 10, 'LOTE 45.mp4', 'lote 45.png', '1', 'LOTE 45'),
(232, 10, 'LOTE 47.mp4', 'lote 47.png', '1', 'LOTE 47'),
(233, 10, 'LOTE 48.mp4', 'lote 48.png', '1', 'LOTE 48'),
(234, 10, 'LOTE 49.mp4', 'lote 49.png', '1', 'LOTE 49'),
(235, 10, 'LOTE 50.mp4', 'lote 50.png', '1', 'LOTE 50'),
(236, 10, 'LOTE 52.mp4', 'LOTE 52.jpg', '1', 'LOTE 52'),
(237, 10, 'LOTE 53.mp4', 'LOTE 53.jpg', '1', 'LOTE 53'),
(238, 10, 'LOTE 54.mp4', 'LOTE 54.jpg', '1', 'LOTE 54'),
(239, 10, 'LOTE 55.mp4', 'LOTE 55.jpg', '1', 'LOTE 55'),
(240, 10, 'LOTE 57.mp4', 'LOTE 57.jpg', '1', 'LOTE 57'),
(241, 10, 'LOTE 58.mp4', 'LOTE 58.jpg', '1', 'LOTE 58'),
(242, 10, 'LOTE 59.mp4', 'LOTE 59.jpg', '1', 'LOTE 59'),
(243, 10, 'LOTE 60.mp4', 'LOTE 60.jpg', '1', 'LOTE 60'),
(244, 10, 'LOTE 62.mp4', 'LOTE 62.jpg', '1', 'LOTE 62'),
(245, 10, 'LOTE 63.mp4', 'LOTE 63.jpg', '1', 'LOTE 63'),
(246, 10, 'LOTE 64.mp4', 'LOTE 64.jpg', '1', 'LOTE 64'),
(247, 10, 'LOTE 65.mp4', 'LOTE 65.jpg', '1', 'LOTE 65'),
(248, 10, 'LOTE 76.mp4', 'LOTE 76.jpg', '1', 'LOTE 76'),
(249, 10, 'LOTE 77.mp4', 'LOTE 77.jpg', '1', 'LOTE 77'),
(250, 10, 'LOTE 78.mp4', 'LOTE 78.jpg', '1', 'LOTE 78'),
(251, 10, 'LOTE 79.mp4', 'LOTE 79.jpg', '1', 'LOTE 79'),
(252, 10, 'LOTE 80.mp4', 'LOTE 80.jpg', '1', 'LOTE 80'),
(253, 10, 'LOTE 81.mp4', 'LOTE 81.jpg', '1', 'LOTE 81'),
(254, 10, 'LOTE 82.mp4', 'LOTE 82.jpg', '1', 'LOTE 82'),
(255, 10, 'LOTE 83.mp4', 'LOTE 83.jpg', '1', 'LOTE 83'),
(256, 10, 'LOTE 84.mp4', 'LOTE 84.jpg', '1', 'LOTE 84'),
(257, 10, 'LOTE 85.mp4', 'LOTE 85.jpg', '1', 'LOTE 85'),
(258, 10, 'LOTE 86.mp4', 'LOTE 86.jpg', '1', 'LOTE 86'),
(259, 10, 'LOTE 89.mp4', 'LOTE 89.jpg', '1', 'LOTE 89'),
(260, 10, 'LOTE 90.mp4', 'LOTE 90.jpg', '1', 'LOTE 90'),
(261, 10, 'LOTE 91.mp4', 'LOTE 91.jpg', '1', 'LOTE 91'),
(262, 10, 'LOTE 92.mp4', 'LOTE 92.jpg', '1', 'LOTE 92'),
(263, 10, 'LOTE 93.mp4', 'LOTE 93.jpg', '1', 'LOTE 93'),
(264, 10, 'LOTE 94.mp4', 'LOTE 94.jpg', '1', 'LOTE 94'),
(265, 10, 'LOTE 95.mp4', 'LOTE 95.jpg', '1', 'LOTE 95'),
(266, 10, 'LOTE 96.mp4', 'LOTE 96.jpg', '1', 'LOTE 96'),
(267, 10, 'BATERIA 01.mp4', 'bateria 1.png', '1', 'BATERIA 01');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `centrais`
--
ALTER TABLE `centrais`
  ADD PRIMARY KEY (`id_centrais`);

--
-- Índices para tabela `leiloes`
--
ALTER TABLE `leiloes`
  ADD PRIMARY KEY (`id_leiloes`);

--
-- Índices para tabela `niveis_usuario`
--
ALTER TABLE `niveis_usuario`
  ADD PRIMARY KEY (`id_niveis_usuario`);

--
-- Índices para tabela `permissoes_niveis_usuario`
--
ALTER TABLE `permissoes_niveis_usuario`
  ADD PRIMARY KEY (`id_permissoes_niveis_usuario`);

--
-- Índices para tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id_pessoas`);

--
-- Índices para tabela `rotas`
--
ALTER TABLE `rotas`
  ADD PRIMARY KEY (`id_rotas`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- Índices para tabela `videos_leiloes`
--
ALTER TABLE `videos_leiloes`
  ADD PRIMARY KEY (`id_videos_leiloes`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `centrais`
--
ALTER TABLE `centrais`
  MODIFY `id_centrais` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `leiloes`
--
ALTER TABLE `leiloes`
  MODIFY `id_leiloes` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `niveis_usuario`
--
ALTER TABLE `niveis_usuario`
  MODIFY `id_niveis_usuario` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `permissoes_niveis_usuario`
--
ALTER TABLE `permissoes_niveis_usuario`
  MODIFY `id_permissoes_niveis_usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id_pessoas` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `rotas`
--
ALTER TABLE `rotas`
  MODIFY `id_rotas` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `videos_leiloes`
--
ALTER TABLE `videos_leiloes`
  MODIFY `id_videos_leiloes` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
