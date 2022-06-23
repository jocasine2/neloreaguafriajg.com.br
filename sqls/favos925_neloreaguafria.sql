-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 23-Jun-2022 às 11:43
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
-- Banco de dados: `favos925_neloreaguafria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acnp`
--

CREATE TABLE `acnp` (
  `id_acnp` float NOT NULL,
  `id_info_touro` float NOT NULL,
  `mgte` float NOT NULL,
  `top_mgte` float NOT NULL,
  `mp120` float NOT NULL,
  `top_mp120` float NOT NULL,
  `dp210` float NOT NULL,
  `top_dp210` float NOT NULL,
  `dp365` float NOT NULL,
  `top_dp365` float NOT NULL,
  `dp450` float NOT NULL,
  `top_dp450` float NOT NULL,
  `dpe365` float NOT NULL,
  `top_dpe365` float NOT NULL,
  `dpe450` float NOT NULL,
  `top_dpe450` float NOT NULL,
  `dpg` float NOT NULL,
  `top_dpg` float NOT NULL,
  `dipp` float NOT NULL,
  `top_dipp` float NOT NULL,
  `dstay` float NOT NULL,
  `top_dstay` float NOT NULL,
  `d3p` float NOT NULL,
  `top_d3p` float NOT NULL,
  `aol` float NOT NULL,
  `top_aol` float NOT NULL,
  `dacab` float NOT NULL,
  `top_dacab` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `acnp`
--

INSERT INTO `acnp` (`id_acnp`, `id_info_touro`, `mgte`, `top_mgte`, `mp120`, `top_mp120`, `dp210`, `top_dp210`, `dp365`, `top_dp365`, `dp450`, `top_dp450`, `dpe365`, `top_dpe365`, `dpe450`, `top_dpe450`, `dpg`, `top_dpg`, `dipp`, `top_dipp`, `dstay`, `top_dstay`, `d3p`, `top_d3p`, `aol`, `top_aol`, `dacab`, `top_dacab`) VALUES
(1, 1, 15.41, 2, 2.98, 5, 10.61, 2, 22.91, 0.1, 27.18, 0.1, 0.79, 3, 0.95, 4, 0, 0, -0.64, 18, 51.9, 60, 49.25, 60, 0.24, 30, 0, 30),
(2, 2, 15.22, 2, 1.87, 19, 5.57, 5, 22.22, 0.5, 27.02, 0.1, 0.34, 16, 0.29, 25, -0.35, 17, -0.45, 35, 54.65, 30, 50, 40, -0.09, 45, -0.14, 80),
(3, 3, 20.53, 0.5, 3.19, 6, 11.49, 33, 32.18, 2, 26.77, 0.5, 0.98, 2, 1.43, 2, -1.24, 3, -0.88, 8, 61.25, 4, 56.8, 4, 2.05, 4, 0.28, 4),
(4, 4, 0, 0, 2, 14, 0, 0, 0, 0, 25, 2, 0, 11, 1, 8, 0, 0, 0, 16, 85, 1, 74, 9, 4, 0, 0, 15),
(7, 6, 26.88, 1, 4.96, 0.5, 12.95, 3, 27.42, 1, 28.14, 1, 1.02, 6, 0.65, 19, 1.86, 89, -1.03, 5, 83.25, 5, 79.35, 5, 0, 0, 1.07, 0.1),
(8, 7, 33.33, 0.1, 5.77, 0.5, 15.82, 1, 33.28, 0.1, 35.44, 0.1, 1.86, 0.5, 2.26, 0.5, -0.68, 11, -1.1, 3, 88.37, 1, 85.03, 1, 0, 0, 0.57, 2),
(9, 8, 29.33, 0.5, 3.75, 3, 16.47, 1, 32.91, 0.5, 34.25, 0.5, 1.25, 3, 1.75, 2, 1.08, 71, -1.26, 1, 82.61, 6, 78.51, 6, 0, 0, -0.08, 58),
(10, 10, 26.26, 2, 5.14, 0.5, 9.02, 11, 19.48, 6, 21.9, 5, 1.69, 0.5, 1.66, 2, -0.59, 12, -1.15, 3, 89.65, 1, 79.77, 4, 0, 0, 0.96, 0.1),
(11, 5, 31.81, 0.1, -1.3, 95, 25.08, 0.1, 39.67, 0.1, 40.16, 0.1, 1.1, 5, 0.85, 13, 2.85, 98, -0.79, 17, 86.01, 3, 65.2, 49, 0, 0, -0.24, 88),
(12, 9, 29.5, 0.5, 3.07, 7, 17.5, 0.5, 32.28, 0.5, 36.54, 0.1, 1.07, 5, 1.21, 6, 0.99, 68, -1.09, 4, 82.76, 6, 71.38, 23, 0, 0, 0.37, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `id_fotos` mediumint(9) NOT NULL,
  `link_foto` varchar(255) NOT NULL,
  `titulo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`id_fotos`, `link_foto`, `titulo`) VALUES
(1, 'assets/imagens/enviados/20168231668.JPG', 'Doadoras'),
(2, 'assets/imagens/enviados/201682316626.JPG', 'Doadoras'),
(3, 'assets/imagens/enviados/201682316644.JPG', 'Doadoras'),
(4, 'assets/imagens/enviados/20168231670.JPG', 'Doadoras'),
(5, 'assets/imagens/enviados/201682316716.JPG', 'Doadoras'),
(6, 'assets/imagens/enviados/2016823144316.JPG', ''),
(7, 'assets/imagens/enviados/2016823144349.JPG', ''),
(8, 'assets/imagens/enviados/201682314460.JPG', ''),
(9, 'assets/imagens/enviados/2016823144515.JPG', ''),
(10, 'assets/imagens/enviados/2016823144428.JPG', ''),
(11, 'assets/imagens/enviados/2016823143953.JPG', ''),
(12, 'assets/imagens/enviados/201682314426.JPG', ''),
(13, 'assets/imagens/enviados/201681918125.jpg', ''),
(14, 'assets/imagens/enviados/2016823144034.JPG', ''),
(15, 'assets/imagens/enviados/201682314418.JPG', ''),
(16, 'assets/imagens/enviados/2016823144655.JPG', ''),
(17, 'assets/imagens/enviados/2016819181320.jpg', ''),
(18, 'assets/imagens/enviados/2016823144227.JPG', ''),
(19, 'assets/imagens/enviados/nelore_agurafria_abs_pecplan.jpeg', '&quot;O criador João Guimarães, gestor da Nelore Água Fria, comanda um dos maiores projetos de utilização de embriões para a produção de touros no Norte do país, com mais de mil prenhezes produzidas em cada estação de monta. Já são quase 50 anos dedicados ao melhoramento genético no Pará. Na foto, João Guimarães acompanhado do gerente de negócios Embriões da ABS, Emerson Faria. Desde 2013, a ABS contribui com o melhor da sua genética para promover a evolução de um dos rebanhos Nelore mais representativos da região.&quot; <a href=\'https://www.instagram.com/p/Bqjxx6kn_95/\'></strong>(ABS Pecplan)</strong></a>\r\n\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `info_touro`
--

CREATE TABLE `info_touro` (
  `id_info_touro` mediumint(9) NOT NULL,
  `id_touros` mediumint(9) NOT NULL,
  `nome_touro` text NOT NULL,
  `rgd` text NOT NULL,
  `raca` text NOT NULL,
  `data_nascimento` date NOT NULL,
  `link_mais_informacoes` varchar(255) NOT NULL,
  `link_miniatura_mais_informacoes` varchar(255) NOT NULL,
  `fonte_mais_informacoes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `info_touro`
--

INSERT INTO `info_touro` (`id_info_touro`, `id_touros`, `nome_touro`, `rgd`, `raca`, `data_nascimento`, `link_mais_informacoes`, `link_miniatura_mais_informacoes`, `fonte_mais_informacoes`) VALUES
(1, 1, 'TURBO ÁGUA FRIA', 'JCGG 4227', 'Nelore', '2012-08-04', 'http://www.altagenetics.com.br/Busca/Touro/12615', 'assets/imagens/enviados/2016819192828.png', 'Alta Genetics'),
(2, 2, 'COMENDADOR DA ÁGUA FRIA', 'JCGG 4345', 'Nelore', '2012-08-13', 'http://www.abspecplan.com.br/comendador', 'assets/imagens/enviados/2016819192843.png', 'ABS Pecplan'),
(3, 3, 'TITANIO DA AGUA FRIA', 'JCGG 9251', 'Nelore', '2016-08-30', 'https://www.abspecplan.com.br/?pages=bull&id=2029', 'assets/imagens/enviados/titanio_da_agua_fria_baixa2.jpg', 'ABS Pecplan'),
(4, 4, 'ABSOLUTO DA ÁGUA FRIA', 'JCGG 8247', 'Nelore', '2015-10-03', 'https://www2.crvlagoa.com.br/TourosPagina.aspx?idTipoRaca=15&idAnimal=2626#.XxXxTjdKhuR', 'assets/imagens/enviados/absoluto_aguafria_jg.jpeg', 'CRV Lagoa'),
(5, 5, 'BEIRUTE DA AGUA FRIA', '', 'Nelore', '2018-09-29', '', 'assets/imagens/enviados/beirute.jpeg', 'Alta Genetics'),
(6, 6, 'CAMAROTE DA AGUA FRIA', '', 'Nelore', '2019-11-15', 'https://touros.altagenetics.com.br/Busca/Touro/36236', 'assets/imagens/enviados/camarote.jpeg', 'Alta Genetics'),
(7, 7, 'CAPITAO DA AGUA FRIA', '', 'Nelore', '2019-11-14', '', 'assets/imagens/enviados/capitao.jpeg', 'ABS Pecplan'),
(8, 8, 'CENARIO DA AGUA FRIA', '', 'Nelore', '2019-10-12', '', 'assets/imagens/enviados/cenario.jpeg', 'Alta Genetics'),
(9, 9, 'COMANDO DA AGUA FRIA', '', 'Nelore', '2019-10-12', '', 'assets/imagens/enviados/comando.jpeg', 'ABS Pecplan'),
(10, 10, 'CONNOR DA AGUA FRIA', '', 'Nelore', '2012-08-04', '', 'assets/imagens/enviados/connor.jpeg', 'Genex');

-- --------------------------------------------------------

--
-- Estrutura da tabela `leiloes`
--

CREATE TABLE `leiloes` (
  `id_leiloes` bigint(20) NOT NULL,
  `nome` text NOT NULL,
  `ativo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `leiloes`
--

INSERT INTO `leiloes` (`id_leiloes`, `nome`, `ativo`) VALUES
(1, 'Leilão Nelore Água Fria 2020', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedigree`
--

CREATE TABLE `pedigree` (
  `id_pedigree` mediumint(9) NOT NULL,
  `id_info_touro` mediumint(9) NOT NULL,
  `nome_pedigree` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedigree`
--

INSERT INTO `pedigree` (`id_pedigree`, `id_info_touro`, `nome_pedigree`) VALUES
(1, 1, 'Bitelo DS'),
(2, 1, '308 da Água Fria'),
(3, 2, 'Donato de Naviraí'),
(4, 2, 'JG-2271 da Água Fria'),
(5, 3, 'Rem Usp (REM 5531)'),
(6, 3, 'JG-1991 da Agua Fria (JCGG 1991)'),
(7, 4, 'Bitelo DS'),
(8, 4, 'JA - 1997 DA ÁGUA FRIA'),
(9, 5, 'REM DHEEF'),
(10, 5, 'JG-5373 DA AGUA FRIA'),
(11, 6, 'D4685 DA MN (CAMPEÃO)'),
(12, 6, 'JG-5971 DA AGUA FRIA'),
(13, 7, 'REM USP'),
(14, 7, 'JG-7036 DA AGUA FRIA'),
(15, 8, 'TITANIO DA AGUA FRIA'),
(16, 8, 'JG-9600 DA AGUA FRIA'),
(17, 10, 'ZAPP BEABISA'),
(18, 10, 'JG-8975 DA AGUA FRIA'),
(19, 9, 'TITANIO DA AGUA FRIA'),
(20, 9, 'JG-5373 DA AGUA FRIA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pmgz`
--

CREATE TABLE `pmgz` (
  `id_pmgz` mediumint(9) NOT NULL,
  `id_info_touro` mediumint(9) NOT NULL,
  `iabcz` float NOT NULL,
  `top_iabcz` float NOT NULL,
  `pm_em` float NOT NULL,
  `top_pm_em` float NOT NULL,
  `pd_ed` float NOT NULL,
  `top_pd_ed` float NOT NULL,
  `tmd` float NOT NULL,
  `top_tmd` float NOT NULL,
  `ps_ed` float NOT NULL,
  `top_ps_ed` float NOT NULL,
  `gpd` float NOT NULL,
  `top_gpd` float NOT NULL,
  `ipp` float NOT NULL,
  `top_ipp` float NOT NULL,
  `esob` float NOT NULL,
  `top_esob` float NOT NULL,
  `psob` float NOT NULL,
  `top_psob` float NOT NULL,
  `msob` float NOT NULL,
  `top_msob` float NOT NULL,
  `pa_ed` float NOT NULL,
  `top_pa_ed` float NOT NULL,
  `stay` float NOT NULL,
  `top_stay` float NOT NULL,
  `pe365` float NOT NULL,
  `top_pe365` float NOT NULL,
  `pe450` float NOT NULL,
  `top_pe450` float NOT NULL,
  `aol` float NOT NULL,
  `top_aol` float NOT NULL,
  `acab` float NOT NULL,
  `top_acab` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pmgz`
--

INSERT INTO `pmgz` (`id_pmgz`, `id_info_touro`, `iabcz`, `top_iabcz`, `pm_em`, `top_pm_em`, `pd_ed`, `top_pd_ed`, `tmd`, `top_tmd`, `ps_ed`, `top_ps_ed`, `gpd`, `top_gpd`, `ipp`, `top_ipp`, `esob`, `top_esob`, `psob`, `top_psob`, `msob`, `top_msob`, `pa_ed`, `top_pa_ed`, `stay`, `top_stay`, `pe365`, `top_pe365`, `pe450`, `top_pe450`, `aol`, `top_aol`, `acab`, `top_acab`) VALUES
(1, 1, 28.66, 0.1, 1.58, 14, 12.15, 0.1, 8.17, 0.5, 17.66, 0.1, 50.83, 0.1, 10.03, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0.44, 22, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 16.11, 5, 1.54, 15, 8.06, 2, 5.75, 4, 11.34, 2, 21.12, 6, -0.13, 41, 1.47, 6, 0.68, 20, 0.26, 24, 9.37, 3, 0.41, 54, 0.22, 17, 0.16, 28, -0.1, 81, -0.13, 95),
(3, 3, 29, 1, 2.7, 2, 9.64, 1, 8.72, 1, 24.41, 1, 14.77, 1, -19.39, 3, 2.2, 1, 6.53, 1, 5.06, 1, 16.1, 1, 38.9, 2, 0.73, 1, 1.51, 1, 2.62, 1, -0.04, 50),
(4, 4, 0, 0, 0, 0, 7, 26, 5, 0, 19, 26, 0, 0, -14, 19, 0, 0, 0, 0, 0, 0, 13, 26, 39, 18, 0, 20, 0, 21, 3, 23, 0, 20),
(6, 7, 0, 0, 5.21, 1, 7.79, 1, 9.94, 1, 21.89, 1, 0, 0, -28.95, 1, 0, 0, 0, 0, 0, 0, 15.02, 1, 41.87, 1, 0.948, 1, 1.615, 1, 1.947, 1, 0.827, 2),
(7, 8, 0, 0, 4.11, 1, 11.69, 1, 11.52, 1, 27.46, 1, 0, 0, -17.09, 1, 0, 0, 0, 0, 0, 0, 21.57, 1, 37.5, 1, 0.629, 1, 1.272, 1, 2.146, 1, 0.124, 5),
(8, 5, 0, 0, -2.05, 10, 16.84, 1, 6.73, 1, 34.2, 1, 0, 0, -8.69, 3, 0, 0, 0, 0, 0, 0, 27.72, 1, 35.6, 1, 1.189, 1, 1.013, 1, 4.041, 1, -1.664, 10),
(9, 9, 0, 0, 3.08, 1, 10.7, 1, 9.09, 1, 23.89, 1, 0, 0, -19.12, 1, 0, 0, 0, 0, 0, 0, 17.49, 1, 39.57, 1, 1.033, 1, 1.703, 1, 2.737, 1, -0.53, 8),
(10, 10, 0, 0, 4.2, 1, 6.43, 1, 9.03, 1, 19.95, 1, 0, 0, -28.5, 1, 0, 0, 0, 0, 0, 0, 10.97, 1, 40.98, 1, 1.27, 1, 1.67, 1, 3.222, 1, 2.998, 1),
(11, 6, 0, 0, 4.23, 1, 9.9, 1, 10.32, 1, 23.02, 1, 0, 0, -17.92, 1, 0, 0, 0, 0, 0, 0, 17.84, 1, 37.52, 1, 0.683, 1, 0.951, 1, 3.578, 1, 3.017, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sub_pedigree`
--

CREATE TABLE `sub_pedigree` (
  `id_sub_pedigree` bigint(20) NOT NULL,
  `id_pedigree` mediumint(9) NOT NULL,
  `nome_sub_pedigree` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sub_pedigree`
--

INSERT INTO `sub_pedigree` (`id_sub_pedigree`, `id_pedigree`, `nome_sub_pedigree`) VALUES
(1, 1, 'Encarte DS'),
(2, 1, 'Dacia DS'),
(3, 2, 'Fajardo da GB'),
(4, 2, 'Descida da Água Fria'),
(5, 3, 'Atma de Naviraí'),
(6, 3, 'Batina da SM'),
(7, 4, '406 da Água Fria'),
(8, 4, 'JA - 1886 da Água Fria'),
(9, 5, 'REM Quisco (REM 3882)'),
(10, 5, 'REM Regis (REMC 2117)'),
(11, 6, 'Backup (AAAP 1653)'),
(12, 6, 'Foicada da Agua Fria (JCGA 1103)'),
(13, 7, 'Encarte DS (DWS 6494)'),
(14, 7, 'Dacia DS (EE 2391)'),
(15, 8, 'Backup (AAP 1653)'),
(16, 8, 'Farpada (BD 8723)'),
(17, 9, 'REM ARMADOR'),
(18, 9, 'REM ULICIA'),
(19, 10, 'BERLOQUE DA BONS'),
(20, 10, 'JG-1200 DA AGUA FRIA'),
(21, 11, 'D1484 DA MN (HUNO)'),
(22, 11, 'D1342 DA MN'),
(23, 12, 'PLAYBOY MAT.'),
(24, 12, 'JG-1013 DA AGUA FRIA'),
(25, 13, 'REM QUISCO'),
(26, 13, 'REM REGIS'),
(27, 14, 'BACKUP'),
(28, 14, 'JA-2967 DA AGUA FRIA'),
(29, 15, 'REM USP'),
(30, 15, 'JG-1991 DA AGUA FRIA'),
(31, 16, '1713 DA LACADA'),
(32, 16, 'JG-5859 DA AGUA FRIA'),
(33, 17, 'REM ARMADOR'),
(34, 17, 'RIENA DA BEABISA'),
(35, 18, 'D4685 DA MN (CAMPEÃO)'),
(36, 18, 'FACILA DA AGUA FRIA'),
(37, 19, 'REM USP'),
(38, 19, 'JG-1991 DA AGUA FRIA'),
(39, 20, 'BERLOQUE DA BONS'),
(40, 20, 'JG-1200 DA AGUA FRIA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `touros`
--

CREATE TABLE `touros` (
  `id_touros` mediumint(9) NOT NULL,
  `nome_touro` text NOT NULL,
  `link_img_miniatura` varchar(255) NOT NULL,
  `id_centrais` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `touros`
--

INSERT INTO `touros` (`id_touros`, `nome_touro`, `link_img_miniatura`, `id_centrais`) VALUES
(1, 'TURBO ÁGUA FRIA', 'assets/imagens/enviados/p201682311451.jpg', 1),
(2, 'COMENDADOR DA ÁGUA FRIA', 'assets/imagens/enviados/p201682311544.jpg', 2),
(3, 'TITÂNIO DA AGUA FRIA', 'assets/imagens/enviados/titanio_da_agua_fria_baixa2.jpg', 2),
(4, 'ABSOLUTO DA ÁGUA FRIA', 'assets/imagens/enviados/absoluto_aguafria_jg.jpeg', 3),
(5, 'BEIRUTE DA ÁGUA FRIA', 'assets/imagens/enviados/beirute.jpeg', 1),
(6, 'CAMAROTE DA ÁGUA FRIA', 'assets/imagens/enviados/camarote.jpeg', 1),
(7, 'CAPITÃO DA ÁGUA FRIA', 'assets/imagens/enviados/capitao.jpeg', 2),
(8, 'CENÁRIO DA ÁGUA FRIA', 'assets/imagens/enviados/cenario.jpeg', 1),
(9, 'COMANDO DA AGUA FRIA', 'assets/imagens/enviados/comando.jpeg', 2),
(10, 'CONNOR DA ÁGUA FRIA', 'assets/imagens/enviados/connor.jpeg', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `id_videos` mediumint(9) NOT NULL,
  `data_postagem` date NOT NULL,
  `titulo` text NOT NULL,
  `descricao` text NOT NULL,
  `link_youtube` varchar(255) NOT NULL,
  `link_img_miniatura` varchar(255) NOT NULL,
  `principal` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`id_videos`, `data_postagem`, `titulo`, `descricao`, `link_youtube`, `link_img_miniatura`, `principal`) VALUES
(1, '2017-06-27', 'Leilão Nelore Água Fria 2016', '28/08/2016 - 13h - Dantas Leilões - Xinguara PA', 'https://www.youtube.com/embed/0yppgp5ABXA', 'assets/imagens/enviados/p2016819173422.jpg', 0),
(2, '2017-06-27', 'Institucional Nelore Água Fria', 'Conheça a Nelore Água Fria.', 'https://www.youtube.com/embed/Csn8ZWAxXdM', 'assets/imagens/enviados/p2016819173432.jpg', 1),
(3, '2017-07-22', 'Nelore Agua Fria parceira InVitro Brasil', 'Novidades.', 'assets/videos/Nelore-Agua-Fria-Parceira-In-Vitro-Brasil.mp4', 'assets/imagens/logo_agua_fria.svg', 1),
(4, '2017-07-28', 'Leilão Nelore Água Fria 2017', 'Leilão 400 touros Nelore Água Fria dia 27/08 em Xinguara-PA. Transmissão Agrocanal e Remateweb. Leiloeira Programa Leilões.', 'assets/videos/video1.mp4', 'assets/imagens/miniaturas_videos/miniaturaleilao2017.jpg', 0),
(5, '2018-04-09', 'Abate Água Fria', 'Abate de 120 Touros descartamos para avaliação de rendimento de carcaça, qualidade de carne e correlação do Ultrassom de carcaça feito in Vivo aos 18 meses com o rendimento de carcaça ao abate', 'assets/videos/abate.mp4', 'assets/imagens/miniaturas_videos/abate_2018.jpg', 1),
(6, '2018-07-16', 'VT leilão Nelore Agua Fria 2018', 'Leilão Nelore Água Fria João Guimarães oferece o melhor da genética nelore\r\nem 400 touros PO com 100% de registro definitivo e avaliação de carcaça.\r\nSão grandes raçadores para elevar a produtividade do seu criatório,\r\nconsulte nosso frete facilitado. Dia 25 de agosto, sábado as 13 Horas no \r\nDantas Leilões em Xinguara, transmissão terra viva.', 'assets/videos/leilao_2018.mp4', 'assets/imagens/miniaturas_videos/leilao_2018.jpg', 0),
(7, '2018-08-19', 'Nelore Agua Fria', 'Quase meio século de seleção desbravando todos os desafios do sul do Pará, localizado em Xinguara o Nelore Água Fria desde o início de sua seleção trabalha em busca de eficiência e resultados para isso, a cada safra, importantes características são incorporadas no rebanho sempre com o suporte dos principais programas de melhoramento genético do país uma forma de garantir mais confiabilidade a genética que oferecem ao mercado.', 'assets/videos/prop_1-2018.mp4', 'assets/imagens/miniaturas_videos/ban_2018.jpg', 1),
(8, '2018-11-12', 'Leilão 17/11/2018', 'O leilão Nelore Água Fria coloca a venda 5000 bezerros de corte de convidados e 100 touros nelore PO com registro definitivo e avaliação de carcaça, dia 17 de novembro ao meio dia o remate será transmitido pelo canal terra viva direto do parque de exposições de marabá, a mesa operadora é da Estância Bahia produções.', 'assets/videos/leilao_2018-2.mp4', '	\r\nassets/imagens/miniaturas_videos/baner_leilao_2-2018.jpg', 0),
(9, '2019-08-03', 'Leilão 24/08/2019', 'Leilão Nelore Água fria oferece o melhor da genética em 400 touros PO 100%\r\ncom avaliação de carcaça e duplamente avaliados pela ANCP e PMGZ criados, selecionados e preparados para o leilão a pasto, estes raçadores são o caminho mais curto apara aumentar sua lucratividade. Estamos te esperando em nossos pontos de apoio. Dia 24 de agosto sábado as 12:00 no Tatersal Joel Lobato, Sindicato Rural de Xinguara, transmissão: Canal Rural.', 'assets/videos/leilao_nelore_aguafria_jg_2019.mp4', 'assets/imagens/miniaturas_videos/miniatura_nelore_aguafria_2019.png', 0),
(10, '2022-03-27', 'Conhecendo a Fazenda Nelore Água Fria', 'Conheçam uma fazenda que mescla pecuária comercial e seleção de Nelore para produzir em alta escala na região amazônica. No vídeo você virá desde a produção de novilhas super-precoces até o uso da integração Lavoura-Pecuária, seleção de touros Nelore e confinamento de gado de corte. Oportunidade ímpar para conhecer uma nova pecuária que se consolida no bioma Amazônia aliando produção de proteína animal com conservação ambiental e biodiversidade.', 'assets/videos/bate_papo_com_nelore_aguafria.mp4', 'assets/imagens/logo_agua_fria.svg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos_leiloes`
--

CREATE TABLE `videos_leiloes` (
  `id_videos_leiloes` bigint(20) NOT NULL,
  `nome` text NOT NULL,
  `link` text NOT NULL,
  `link_miniatura` text NOT NULL,
  `ativo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `videos_leiloes`
--

INSERT INTO `videos_leiloes` (`id_videos_leiloes`, `nome`, `link`, `link_miniatura`, `ativo`) VALUES
(1, 'LOTE 051', 'assets/videos/videos_leiloes/1/LOTE051.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/051.jpg', 1),
(2, 'LOTE 052', 'assets/videos/videos_leiloes/1/LOTE052.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/052.jpg', 1),
(3, 'LOTE 053', 'assets/videos/videos_leiloes/1/LOTE053.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/053.jpg', 1),
(4, 'LOTE 054', 'assets/videos/videos_leiloes/1/LOTE054.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/054.jpg', 1),
(5, 'LOTE 055', 'assets/videos/videos_leiloes/1/LOTE055.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/055.jpg', 1),
(6, 'LOTE 056', 'assets/videos/videos_leiloes/1/LOTE056.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/056.jpg', 1),
(7, 'LOTE 057', 'assets/videos/videos_leiloes/1/LOTE057.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/057.jpg', 1),
(8, 'LOTE 058', 'assets/videos/videos_leiloes/1/LOTE058.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/058.jpg', 1),
(9, 'LOTE 059', 'assets/videos/videos_leiloes/1/LOTE059.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/059.jpg', 1),
(10, 'LOTE 060', 'assets/videos/videos_leiloes/1/LOTE060.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/060.jpg', 1),
(11, 'LOTE 061', 'assets/videos/videos_leiloes/1/LOTE061.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/061.jpg', 1),
(12, 'LOTE 062', 'assets/videos/videos_leiloes/1/LOTE062.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/062.jpg', 1),
(13, 'LOTE 063', 'assets/videos/videos_leiloes/1/LOTE063.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/063.jpg', 1),
(14, 'LOTE 064', 'assets/videos/videos_leiloes/1/LOTE064.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/064.jpg', 1),
(15, 'LOTE 065', 'assets/videos/videos_leiloes/1/LOTE065.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/065.jpg', 1),
(16, 'LOTE 066', 'assets/videos/videos_leiloes/1/LOTE066.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/066.jpg', 1),
(17, 'LOTE 067', 'assets/videos/videos_leiloes/1/LOTE067.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/067.jpg', 1),
(18, 'LOTE 068', 'assets/videos/videos_leiloes/1/LOTE068.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/068.jpg', 1),
(19, 'LOTE 069', 'assets/videos/videos_leiloes/1/LOTE069.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/069.jpg', 1),
(20, 'LOTE 070', 'assets/videos/videos_leiloes/1/LOTE070.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/070.jpg', 1),
(21, 'LOTE 071', 'assets/videos/videos_leiloes/1/LOTE071.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/071.jpg', 1),
(22, 'LOTE 072', 'assets/videos/videos_leiloes/1/LOTE072.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/072.jpg', 1),
(23, 'LOTE 073', 'assets/videos/videos_leiloes/1/LOTE073.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/073.jpg', 1),
(25, 'LOTE 075', 'assets/videos/videos_leiloes/1/LOTE075.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/075.jpg', 1),
(26, 'LOTE 076', 'assets/videos/videos_leiloes/1/LOTE076.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/076.jpg', 1),
(27, 'LOTE 077', 'assets/videos/videos_leiloes/1/LOTE077.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/077.jpg', 1),
(28, 'LOTE 078', 'assets/videos/videos_leiloes/1/LOTE078.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/078.jpg', 1),
(29, 'LOTE 079', 'assets/videos/videos_leiloes/1/LOTE079.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/079.jpg', 1),
(30, 'LOTE 080', 'assets/videos/videos_leiloes/1/LOTE080.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/080.jpg', 1),
(31, 'LOTE 081', 'assets/videos/videos_leiloes/1/LOTE081.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/081.jpg', 1),
(32, 'LOTE 082', 'assets/videos/videos_leiloes/1/LOTE082.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/082.jpg', 1),
(33, 'LOTE 083', 'assets/videos/videos_leiloes/1/LOTE083.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/083.jpg', 1),
(34, 'LOTE 084', 'assets/videos/videos_leiloes/1/LOTE084.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/084.jpg', 1),
(35, 'LOTE 085', 'assets/videos/videos_leiloes/1/LOTE085.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/085.jpg', 1),
(36, 'LOTE 086', 'assets/videos/videos_leiloes/1/LOTE086.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/086.jpg', 1),
(37, 'LOTE 087', 'assets/videos/videos_leiloes/1/LOTE087.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/087.jpg', 1),
(38, 'LOTE 088', 'assets/videos/videos_leiloes/1/LOTE088.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/088.jpg', 1),
(39, 'LOTE 089', 'assets/videos/videos_leiloes/1/LOTE089.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/089.jpg', 1),
(40, 'LOTE 090', 'assets/videos/videos_leiloes/1/LOTE090.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/090.jpg', 1),
(41, 'LOTE 091', 'assets/videos/videos_leiloes/1/LOTE091.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/091.jpg', 1),
(42, 'LOTE 092', 'assets/videos/videos_leiloes/1/LOTE092.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/092.jpg', 1),
(43, 'LOTE 093', 'assets/videos/videos_leiloes/1/LOTE093.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/093.jpg', 1),
(44, 'LOTE 094', 'assets/videos/videos_leiloes/1/LOTE094.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/094.jpg', 1),
(45, 'LOTE 095', 'assets/videos/videos_leiloes/1/LOTE095.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/095.jpg', 1),
(46, 'LOTE 096', 'assets/videos/videos_leiloes/1/LOTE096.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/096.jpg', 1),
(47, 'LOTE 079', 'assets/videos/videos_leiloes/1/LOTE097.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/097.jpg', 1),
(48, 'LOTE 098', 'assets/videos/videos_leiloes/1/LOTE098.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/098.jpg', 1),
(49, 'LOTE 099', 'assets/videos/videos_leiloes/1/LOTE099.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/099.jpg', 1),
(50, 'LOTE 100', 'assets/videos/videos_leiloes/1/LOTE100.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/100.jpg', 1),
(51, 'LOTE 101', 'assets/videos/videos_leiloes/1/LOTE101.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/101.jpg', 1),
(52, 'LOTE 102', 'assets/videos/videos_leiloes/1/LOTE102.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/102.jpg', 1),
(53, 'LOTE 103', 'assets/videos/videos_leiloes/1/LOTE103.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/103.jpg', 1),
(54, 'LOTE 104', 'assets/videos/videos_leiloes/1/LOTE104.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/104.jpg', 1),
(55, 'LOTE 105', 'assets/videos/videos_leiloes/1/LOTE105.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/105.jpg', 1),
(56, 'LOTE 106', 'assets/videos/videos_leiloes/1/LOTE106.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/106.jpg', 1),
(57, 'LOTE 107', 'assets/videos/videos_leiloes/1/LOTE107.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/107.jpg', 1),
(58, 'LOTE 108', 'assets/videos/videos_leiloes/1/LOTE108.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/108.jpg', 1),
(59, 'LOTE 109', 'assets/videos/videos_leiloes/1/LOTE109.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/109.jpg', 1),
(60, 'LOTE 110', 'assets/videos/videos_leiloes/1/LOTE110.mp4', 'assets/imagens/miniaturas_videos_leiloes/1/110.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos_touros`
--

CREATE TABLE `videos_touros` (
  `id_videos_touros` int(11) NOT NULL,
  `id_touros` int(11) NOT NULL,
  `link_videos_touros` varchar(255) NOT NULL,
  `link_miniatura_video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `videos_touros`
--

INSERT INTO `videos_touros` (`id_videos_touros`, `id_touros`, `link_videos_touros`, `link_miniatura_video`) VALUES
(0, 2, 'https://www.youtube.com/embed/vOHNSwc67oA', 'assets/imagens/enviados/p2016823164352.jpg'),
(1, 1, 'https://www.youtube.com/embed/waqXca-Jegs', 'assets/imagens/enviados/p201682311451.jpg'),
(3, 3, 'assets/videos/videos_touros/3/titanio_agua_fria_2.mp4', 'assets/imagens/enviados/titanio_da_agua_fria_baixa2.jpg'),
(4, 4, 'assets/videos/videos_touros/4/absoluto_agua_fria_video.mp4', 'assets/imagens/enviados/absoluto_aguafria_jg.jpeg'),
(5, 5, 'assets/videos/videos_touros/5/video_beirute.mp4', 'assets/imagens/enviados/beirute.jpeg'),
(6, 6, 'assets/videos/videos_touros/6/video_camarote.mp4', 'assets/imagens/enviados/camarote.jpeg'),
(7, 7, 'assets/videos/videos_touros/7/video_capitao.mp4', 'assets/imagens/enviados/capitao.jpeg'),
(8, 8, 'assets/videos/videos_touros/8/video_cenario.mp4', 'assets/imagens/enviados/cenario.jpeg'),
(9, 9, 'assets/videos/videos_touros/9/video_comando.mp4', 'assets/imagens/enviados/comando.jpeg'),
(10, 10, 'assets/videos/videos_touros/10/video_connor.mp4', 'assets/imagens/enviados/connor.jpeg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acnp`
--
ALTER TABLE `acnp`
  ADD PRIMARY KEY (`id_acnp`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id_fotos`);

--
-- Índices para tabela `info_touro`
--
ALTER TABLE `info_touro`
  ADD PRIMARY KEY (`id_info_touro`);

--
-- Índices para tabela `leiloes`
--
ALTER TABLE `leiloes`
  ADD PRIMARY KEY (`id_leiloes`);

--
-- Índices para tabela `pedigree`
--
ALTER TABLE `pedigree`
  ADD PRIMARY KEY (`id_pedigree`);

--
-- Índices para tabela `pmgz`
--
ALTER TABLE `pmgz`
  ADD PRIMARY KEY (`id_pmgz`);

--
-- Índices para tabela `sub_pedigree`
--
ALTER TABLE `sub_pedigree`
  ADD PRIMARY KEY (`id_sub_pedigree`);

--
-- Índices para tabela `touros`
--
ALTER TABLE `touros`
  ADD PRIMARY KEY (`id_touros`);

--
-- Índices para tabela `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id_videos`),
  ADD UNIQUE KEY `id_videos` (`id_videos`),
  ADD KEY `id_videos_2` (`id_videos`);

--
-- Índices para tabela `videos_leiloes`
--
ALTER TABLE `videos_leiloes`
  ADD PRIMARY KEY (`id_videos_leiloes`);

--
-- Índices para tabela `videos_touros`
--
ALTER TABLE `videos_touros`
  ADD PRIMARY KEY (`id_videos_touros`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acnp`
--
ALTER TABLE `acnp`
  MODIFY `id_acnp` float NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id_fotos` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `info_touro`
--
ALTER TABLE `info_touro`
  MODIFY `id_info_touro` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `leiloes`
--
ALTER TABLE `leiloes`
  MODIFY `id_leiloes` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pedigree`
--
ALTER TABLE `pedigree`
  MODIFY `id_pedigree` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `pmgz`
--
ALTER TABLE `pmgz`
  MODIFY `id_pmgz` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `sub_pedigree`
--
ALTER TABLE `sub_pedigree`
  MODIFY `id_sub_pedigree` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `touros`
--
ALTER TABLE `touros`
  MODIFY `id_touros` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `videos`
--
ALTER TABLE `videos`
  MODIFY `id_videos` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `videos_leiloes`
--
ALTER TABLE `videos_leiloes`
  MODIFY `id_videos_leiloes` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
