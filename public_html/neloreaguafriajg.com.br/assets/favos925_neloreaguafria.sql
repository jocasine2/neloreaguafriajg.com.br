-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 19-Ago-2020 às 11:16
-- Versão do servidor: 5.6.41-84.1
-- versão do PHP: 7.3.6

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
(4, 4, 0, 0, 2, 14, 0, 0, 0, 0, 25, 2, 0, 11, 1, 8, 0, 0, 0, 16, 85, 1, 74, 9, 4, 0, 0, 15);

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
(4, 4, 'ABSOLUTO DA ÁGUA FRIA', 'JCGG 8247', 'NELORE', '2015-10-03', 'https://www2.crvlagoa.com.br/TourosPagina.aspx?idTipoRaca=15&idAnimal=2626#.XxXxTjdKhuR', 'assets/imagens/enviados/absoluto_aguafria_jg.jpeg', 'CRV Lagoa');

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
(8, 4, 'JA - 1997 DA ÁGUA FRIA');

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
(4, 4, 0, 0, 0, 0, 7, 26, 5, 0, 19, 26, 0, 0, -14, 19, 0, 0, 0, 0, 0, 0, 13, 26, 39, 18, 0, 20, 0, 21, 3, 23, 0, 20);

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
(16, 8, 'Farpada (BD 8723)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `touros`
--

CREATE TABLE `touros` (
  `id_touros` mediumint(9) NOT NULL,
  `nome_touro` text NOT NULL,
  `link_img_miniatura` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `touros`
--

INSERT INTO `touros` (`id_touros`, `nome_touro`, `link_img_miniatura`) VALUES
(1, 'TURBO ÁGUA FRIA', 'assets/imagens/enviados/p201682311451.jpg'),
(2, 'COMENDADOR DA ÁGUA FRIA', 'assets/imagens/enviados/p201682311544.jpg'),
(3, 'TITÂNIO DA AGUA FRIA', 'assets/imagens/enviados/titanio_da_agua_fria_baixa2.jpg'),
(4, 'ABSOLUTO DA ÁGUA FRIA', 'assets/imagens/enviados/absoluto_aguafria_jg.jpeg');

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
  `link_img_miniatura` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`id_videos`, `data_postagem`, `titulo`, `descricao`, `link_youtube`, `link_img_miniatura`) VALUES
(1, '2017-06-27', 'Leilão Nelore Água Fria 2016', '28/08/2016 - 13h - Dantas Leilões - Xinguara PA', 'https://www.youtube.com/embed/0yppgp5ABXA', 'assets/imagens/enviados/p2016819173422.jpg'),
(2, '2017-06-27', 'Institucional Nelore Água Fria', 'Conheça a Nelore Água Fria.', 'https://www.youtube.com/embed/Csn8ZWAxXdM', 'assets/imagens/enviados/p2016819173432.jpg'),
(3, '2017-07-22', 'Nelore Agua Fria parceira InVitro Brasil', 'Novidades.', 'assets/videos/Nelore-Agua-Fria-Parceira-In-Vitro-Brasil.mp4', 'assets/imagens/logo_agua_fria.svg'),
(4, '2017-07-28', 'Leilão Nelore Água Fria 2017', 'Leilão 400 touros Nelore Água Fria dia 27/08 em Xinguara-PA. Transmissão Agrocanal e Remateweb. Leiloeira Programa Leilões.', 'assets/videos/video1.mp4', 'assets/imagens/miniaturas_videos/miniaturaleilao2017.jpg'),
(5, '2018-04-09', 'Abate Água Fria', 'Abate de 120 Touros descartamos para avaliação de rendimento de carcaça, qualidade de carne e correlação do Ultrassom de carcaça feito in Vivo aos 18 meses com o rendimento de carcaça ao abate', 'assets/videos/abate.mp4', 'assets/imagens/miniaturas_videos/abate_2018.jpg'),
(6, '2018-07-16', 'VT leilão Nelore Agua Fria 2018', 'Leilão Nelore Água Fria João Guimarães oferece o melhor da genética nelore\r\nem 400 touros PO com 100% de registro definitivo e avaliação de carcaça.\r\nSão grandes raçadores para elevar a produtividade do seu criatório,\r\nconsulte nosso frete facilitado. Dia 25 de agosto, sábado as 13 Horas no \r\nDantas Leilões em Xinguara, transmissão terra viva.', 'assets/videos/leilao_2018.mp4', 'assets/imagens/miniaturas_videos/leilao_2018.jpg'),
(7, '2018-08-19', 'Nelore Agua Fria', 'Quase meio século de seleção desbravando todos os desafios do sul do Pará, localizado em Xinguara o Nelore Água Fria desde o início de sua seleção trabalha em busca de eficiência e resultados para isso, a cada safra, importantes características são incorporadas no rebanho sempre com o suporte dos principais programas de melhoramento genético do país uma forma de garantir mais confiabilidade a genética que oferecem ao mercado.', 'assets/videos/prop_1-2018.mp4', 'assets/imagens/miniaturas_videos/ban_2018.jpg'),
(8, '2018-11-12', 'Leilão 17/11/2018', 'O leilão Nelore Água Fria coloca a venda 5000 bezerros de corte de convidados e 100 touros nelore PO com registro definitivo e avaliação de carcaça, dia 17 de novembro ao meio dia o remate será transmitido pelo canal terra viva direto do parque de exposições de marabá, a mesa operadora é da Estância Bahia produções.', 'assets/videos/leilao_2018-2.mp4', '	\r\nassets/imagens/miniaturas_videos/baner_leilao_2-2018.jpg'),
(9, '2019-08-03', 'Leilão 24/08/2019', 'Leilão Nelore Água fria oferece o melhor da genética em 400 touros PO 100%\r\ncom avaliação de carcaça e duplamente avaliados pela ANCP e PMGZ criados, selecionados e preparados para o leilão a pasto, estes raçadores são o caminho mais curto apara aumentar sua lucratividade. Estamos te esperando em nossos pontos de apoio. Dia 24 de agosto sábado as 12:00 no Tatersal Joel Lobato, Sindicato Rural de Xinguara, transmissão: Canal Rural.', 'assets/videos/leilao_nelore_aguafria_jg_2019.mp4', 'assets/imagens/miniaturas_videos/miniatura_nelore_aguafria_2019.png');

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
(4, 4, 'assets/videos/videos_touros/4/absoluto_agua_fria_video.mp4', 'assets/imagens/enviados/absoluto_aguafria_jg.jpeg');

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
  MODIFY `id_acnp` float NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id_fotos` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `info_touro`
--
ALTER TABLE `info_touro`
  MODIFY `id_info_touro` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pedigree`
--
ALTER TABLE `pedigree`
  MODIFY `id_pedigree` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `pmgz`
--
ALTER TABLE `pmgz`
  MODIFY `id_pmgz` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `sub_pedigree`
--
ALTER TABLE `sub_pedigree`
  MODIFY `id_sub_pedigree` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `touros`
--
ALTER TABLE `touros`
  MODIFY `id_touros` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `videos`
--
ALTER TABLE `videos`
  MODIFY `id_videos` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
