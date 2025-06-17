-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/05/2025 às 03:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sanquim`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `ra` varchar(15) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `fone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `ra`, `data_nascimento`, `cpf`, `rg`, `endereco`, `bairro`, `cidade`, `fone`, `email`, `status`) VALUES
(1, 'Matheus Freitas', '00000000001', '2015-05-12', '123.456.789-45', '45.654.652-8', 'Rua Francisco Fernadete', 'Boa Vista', 'Mogi Guaçu', '12-45698-4568', 'matheus@gmail.com', 1),
(2, 'Gabriel Morais', '00000000002', '2015-05-27', '456.658.789-98', '45.987.654-9', 'Rua José Venatti', 'Jardim Novo 1', 'Mogi Guaçu', '18-98745-5632', 'gabriel@gmail.com', 1),
(3, 'Miguel Honório', '00000000003', '2015-06-19', '256.654.785-56', '56.987.452-5', 'Rua Fernandes Vieira', 'Ipe 1 ', 'Mogi Mirim', '12-89655-6523', 'miguel@gmail.com', 1),
(4, 'Felipe Augusto', '000000000004', '2007-09-12', '452.369.785-89', '78.985.632-0', 'Rua Osvaldo Oliveira', 'Ipe 3', 'Mogi Guaçu', '19-96543-4566', 'felipe@gmail.com', 1),
(5, 'Nycolas Silva', '00000000005', '2005-10-14', '201.569.785-89', '45.987.632-6', 'Avenida dos Trabalhadores', 'Claudia Arraia', 'Mogi das Cruzes', '16-98746-6542', 'nycolas@gmail.com', 1),
(6, 'Nauã Henrique', '00000000006', '2007-01-27', '023.657.895-89', '12.654.321-0', 'Rua Fausto Vera', 'Ipe 15', 'Olimpia', '15-98756-9874', 'naua@gmail.com', 1),
(7, 'João Vitor', '00000000007', '1995-05-25', '456.982.315-89', '45.987.963-54', 'Rua Memphis Depay', 'Calleri Osvaldo', 'Mogi Mirim', '12-98753-5405', 'joao@gmail.com', 1),
(8, 'Enzo Silva', '00000000008', '2007-03-20', '452.632.023-56', '41.896.632-x', 'Rua Oscar Ancelloti', 'Bela Vista', 'Mogi Guaçu', '45-96535-8956', 'enzo@gamil.com', 1),
(9, 'Rosangela Candido', '00000000009', '2005-09-22', '201.632.987-56', '23.654.012-9', 'Avenida Kyllian Mbappe', 'Saint Germain', 'Paris', '23-98563-4565', 'rosangela@gmail.com', 1),
(10, 'Julia Faria', '00000000010', '2008-08-21', '132.650.452-03', '45.963.012-9', 'Avenida Hugo Souza', 'Luciano Alberto', 'Mogi das Cruzes', '12-56987-0321', 'julia@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nome_curso` varchar(30) NOT NULL,
  `periodo` varchar(30) NOT NULL,
  `carga_horaria` varchar(30) NOT NULL,
  `modalidade` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id`, `nome_curso`, `periodo`, `carga_horaria`, `modalidade`, `status`) VALUES
(1, 'Ensino Médio', 'Diurno', '2400 horas', 'Presencial', 1),
(2, 'Pré-Vestibulinho', 'Noturno', '400 horas', 'Presencial', 1),
(3, 'Pré-Vestibular', 'Noturno', '400 horas', 'Presencial', 1),
(4, 'Empreendedorismo', 'Noturno', '200 horas', 'EAD', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `nome_disciplina` varchar(15) NOT NULL,
  `carga_horaria` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome_disciplina`, `carga_horaria`, `status`) VALUES
(1, 'Matemática', '200 horas', 1),
(2, 'Português', '200 horas', 1),
(3, 'História', '80 horas', 1),
(4, 'Geografia', '80 horas', 1),
(5, 'Inglês', '100 horas', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `fone` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `cpf`, `rg`, `endereco`, `bairro`, `cidade`, `fone`, `email`, `status`) VALUES
(1, 'André Bueno', '452.032.659-89', '12.654.658-9', 'Rua João Vitor', 'Avenida Menegon', 'Péricles', '12-36595-4521', 'andre@gmail.com', 1),
(2, 'Paulo Cesar', '120.320.659-78', '12.655.895-9', 'Rua Honório dos Santos', 'Avenida Romário', 'Rio de Janeiro', '12-54694-9854', 'paulo@gmail.com', 1),
(3, 'Marcio Sabino', '120.658.986-85', '12.032.652-7', 'Avenida Roberto Alves', 'Jardim Francelino', 'São Paulo', '12-98025-2563', 'marcio@gmail.com', 1),
(4, 'João Marcelo', '452.032.658-98', '12.032.928-9', 'Rua Cicero Augusto', 'Jardim Thalles', 'Santos', '12-96322-9874', 'joaomarcelo@gmail.com', 1),
(5, 'Diogo Julio', '452.023.652-89', '45.659.987-8', 'Rua Maria Julia', 'Michele Martinelli', 'Jaguariuna', '45-98562-5612', 'diogo@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `id` int(11) NOT NULL,
  `nome_turma` varchar(30) NOT NULL,
  `curso` varchar(30) NOT NULL,
  `local` varchar(30) NOT NULL,
  `periodo` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`id`, `nome_turma`, `curso`, `local`, `periodo`, `status`) VALUES
(1, 'Sala 01', 'Ensino Médio', 'Sanquim', 'Diurno', 1),
(2, 'Sala 02', 'Pré-Vestibulinho', 'Sanquim', 'Noturno', 1),
(3, 'Sala 03', 'Pré-vestibular', 'Sanquim', 'Noturno', 1),
(4, 'EAD', 'Empreendedorismo', 'À Distância', 'Noturno', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `nivel` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `senha`, `nivel`, `status`) VALUES
(1, 'aluno1', '123456', 'usuario', 1),
(2, 'professor1', '123456', 'operador', 1),
(3, 'admin', '123456', 'administrador', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
