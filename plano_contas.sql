-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Jan-2022 às 16:01
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sigeco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `plano_contas`
--

CREATE TABLE `plano_contas` (
  `id` tinyint(4) UNSIGNED NOT NULL,
  `codigo` varchar(8) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `conta_pai` tinyint(1) NOT NULL,
  `tipo_movimento` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `plano_contas`
--

INSERT INTO `plano_contas` (`id`, `codigo`, `descricao`, `conta_pai`, `tipo_movimento`) VALUES
(1, '01', 'RECEITAS', 1, 0),
(3, '01.01', 'Taxa de Condom&iacute;nio', 0, 0),
(4, '01.02', 'Acordos', 0, 0),
(5, '01.03', 'Taxa Controle Port&atilde;o', 0, 0),
(6, '01.04', 'Outras Taxas', 0, 0),
(7, '01.10', 'Desconto de Adimplencia', 0, 1),
(8, '02', 'DESPESAS', 1, 1),
(9, '02.01', 'Despesas com Pessoal', 1, 1),
(10, '02.01.01', 'Sal&aacute;rios', 0, 1),
(11, '02.01.02', '13.o Sal&aacute;rio', 0, 1),
(12, '02.01.03', 'INSS', 0, 1),
(13, '02.01.04', 'FGTS', 0, 1),
(14, '02.01.05', 'PIS', 0, 1),
(15, '02.01.06', 'Cesta B&aacute;sica', 0, 1),
(16, '02.01.07', 'Vale Transporte', 0, 1),
(17, '02.01.08', 'Exames M&eacute;dico', 0, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `plano_contas`
--
ALTER TABLE `plano_contas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `plano_contas`
--
ALTER TABLE `plano_contas`
  MODIFY `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
