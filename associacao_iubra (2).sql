-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/09/2025 às 15:43
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `associacao_iubra`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `associados`
--

CREATE TABLE `associados` (
  `id_associado` int(11) NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `comunidade` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `data_associada` date NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `profissao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `associados`
--

INSERT INTO `associados` (`id_associado`, `nome_completo`, `cpf`, `email`, `cidade`, `comunidade`, `cep`, `data_associada`, `telefone`, `profissao`) VALUES
(1, 'João', '87549597641', 'joao@gmail.com', 'curitiba', '', '82220-400', '0000-00-00', '4199968135', 'padeiro'),
(2, 'Pérrela', '65916691443', 'Perrela@gmail.com', 'xique-xique', '', '47400-000', '0000-00-00', '7499887766', 'gari'),
(3, 'ana_laura', '666666666666', 'passafome@gmail.com', 'Uiramutã', '', '69358-000', '0000-00-00', '9599676844', 'desempregada'),
(4, 'Maria', '88667539014', 'maria@gmail.com', 'Uiramutã', '', '69358-000', '0000-00-00', '9577685360', 'veterinária'),
(5, 'Gregório', '11749355687', 'gregório@gmail.com', 'São Francisco', '', '39300-000', '0000-00-00', '38999564247', 'agricultor');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contribuido`
--

CREATE TABLE `contribuido` (
  `id_contribuido` int(11) NOT NULL,
  `data_vencimento` date NOT NULL,
  `valor_pago` float NOT NULL,
  `mes_ano_referencia` varchar(255) NOT NULL,
  `pendencia` varchar(255) NOT NULL,
  `data_pagamento` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `associados`
--
ALTER TABLE `associados`
  ADD PRIMARY KEY (`id_associado`);

--
-- Índices de tabela `contribuido`
--
ALTER TABLE `contribuido`
  ADD PRIMARY KEY (`id_contribuido`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contribuido`
--
ALTER TABLE `contribuido`
  ADD CONSTRAINT `contribuido_ibfk_1` FOREIGN KEY (`id_contribuido`) REFERENCES `associados` (`id_associado`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
