-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Set-2024 às 19:39
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_store`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `data_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `email`, `cpf`, `data_nascimento`) VALUES
(1, 'João Silva', 'joao.silva@example.com', '123.456.789-00', '1980-05-15'),
(2, 'Maria Oliveira', 'maria.oliveira@example.com', '234.567.890-11', '1985-07-22'),
(3, 'Pedro Santos', 'pedro.santos@example.com', '345.678.901-22', '1990-12-01'),
(4, 'Ana Costa', 'ana.costa@example.com', '456.789.012-33', '1992-03-10'),
(5, 'Lucas Almeida', 'lucas.almeida@example.com', '567.890.123-44', '1988-09-17'),
(6, 'Fernanda Lima', 'fernanda.lima@example.com', '678.901.234-55', '1983-11-25'),
(7, 'Carlos Pereira', 'carlos.pereira@example.com', '789.012.345-66', '1995-06-30'),
(8, 'Juliana Martins', 'juliana.martins@example.com', '890.123.456-77', '1991-02-19'),
(9, 'Roberto Fernandes', 'roberto.fernandes@example.com', '901.234.567-88', '1987-10-05'),
(10, 'Patrícia Souza', 'patricia.souza@example.com', '012.345.678-99', '1993-04-12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cep` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Rua das Flores', '123', 'Apto 101', 'Jardim das Rosas', 'São Paulo', 'SP', '01000-000'),
(2, 'Rua dos Lírios', '456', '', 'Jardim Primavera', 'São Paulo', 'SP', '01001-001'),
(3, 'Rua das Margaridas', '789', 'Casa', 'Jardim das Acácias', 'São Paulo', 'SP', '01002-002'),
(4, 'Rua das Orquídeas', '101', 'Casa', 'Jardim das Tulipas', 'São Paulo', 'SP', '01003-003'),
(5, 'Rua das Violetas', '202', 'Sala 202', 'Jardim das Pedras', 'São Paulo', 'SP', '01004-004'),
(6, 'Rua das Bromélias', '303', '', 'Jardim dos Pinheiros', 'São Paulo', 'SP', '01005-005'),
(7, 'Rua das Rosas', '404', 'Apto 303', 'Jardim das Hortênsias', 'São Paulo', 'SP', '01006-006'),
(8, 'Rua dos Cravos', '505', 'Apto 404', 'Jardim das Aves', 'São Paulo', 'SP', '01007-007'),
(9, 'Rua das Begônias', '606', '', 'Jardim das Águas', 'São Paulo', 'SP', '01008-008'),
(10, 'Rua dos Girassóis', '707', 'Casa', 'Jardim das Estrelas', 'São Paulo', 'SP', '01009-009');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_cliente`
--

CREATE TABLE `endereco_cliente` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `endereco_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco_cliente`
--

INSERT INTO `endereco_cliente` (`id`, `cliente_id`, `endereco_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10),
(11, 6, 1),
(12, 6, 3),
(13, 7, 2),
(14, 7, 4),
(15, 8, 5),
(16, 8, 7),
(17, 9, 6),
(18, 9, 8),
(19, 10, 9),
(20, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `data_pedido` date NOT NULL,
  `status_pedido` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id`, `cliente_id`, `data_pedido`, `status_pedido`) VALUES
(1, 1, '2024-09-06', 'Processando'),
(2, 2, '2024-09-05', 'Enviado'),
(3, 3, '2024-09-04', 'Entregue'),
(4, 4, '2024-09-03', 'Cancelado'),
(5, 5, '2024-09-02', 'Processando'),
(6, 6, '2024-09-01', 'Enviado'),
(7, 7, '2024-08-31', 'Entregue'),
(8, 8, '2024-08-30', 'Cancelado'),
(9, 9, '2024-08-29', 'Processando'),
(10, 10, '2024-08-28', 'Enviado'),
(11, 1, '2024-08-27', 'Processando');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos_produtos`
--

CREATE TABLE `pedidos_produtos` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidos_produtos`
--

INSERT INTO `pedidos_produtos` (`id`, `pedido_id`, `produto_id`, `quantidade`) VALUES
(1, 1, 1, 2),
(2, 1, 3, 1),
(3, 1, 5, 3),
(4, 1, 7, 1),
(5, 2, 2, 1),
(6, 2, 4, 2),
(7, 2, 6, 1),
(8, 2, 8, 1),
(9, 3, 3, 2),
(10, 3, 5, 1),
(11, 3, 7, 2),
(12, 3, 9, 1),
(13, 4, 1, 1),
(14, 4, 10, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `marca` varchar(100) NOT NULL,
  `validade` date NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `marca`, `validade`, `preco`) VALUES
(1, 'Leite Integral', 'Leite integral com 1 litro.', 'Lactalis', '2024-12-31', '3.50'),
(2, 'Arroz Tipo 1', 'Arroz tipo 1, 5kg.', 'Tio João', '2025-05-15', '10.00'),
(3, 'Feijão Preto', 'Feijão preto, 1kg.', 'Sabor do Brasil', '2024-10-30', '6.00'),
(4, 'Macarrão Espaguete', 'Macarrão espaguete, 500g.', 'Barilla', '2024-08-20', '4.00'),
(5, 'Óleo de Soja', 'Óleo de soja, 900ml.', 'Soya', '2025-03-01', '5.50'),
(6, 'Café em Pó', 'Café em pó, 250g.', 'Melitta', '2024-11-25', '8.00'),
(7, 'Açúcar Cristal', 'Açúcar cristal, 1kg.', 'União', '2025-01-10', '3.00'),
(8, 'Sal Refinado', 'Sal refinado, 1kg.', 'Salgadinho', '2024-09-15', '2.50'),
(9, 'Suco de Laranja', 'Suco de laranja, 1 litro.', 'Do Vale', '2024-12-01', '7.00'),
(10, 'Biscoito Recheado', 'Biscoito recheado com chocolate, 400g.', 'Bauducco', '2025-06-30', '5.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `id` int(11) NOT NULL,
  `numero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`id`, `numero`) VALUES
(1, '11987654321'),
(2, '11923456789'),
(3, '2134567890'),
(4, '2198765432'),
(5, '3198765432'),
(6, '4198765432'),
(7, '5198765432'),
(8, '6198765432'),
(9, '7198765432'),
(10, '8198765432');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_cliente`
--

CREATE TABLE `telefone_cliente` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `telefone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefone_cliente`
--

INSERT INTO `telefone_cliente` (`id`, `cliente_id`, `telefone_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10),
(11, 6, 1),
(12, 6, 2),
(13, 7, 3),
(14, 7, 4),
(15, 8, 5),
(16, 8, 6),
(17, 9, 7),
(18, 9, 8),
(19, 10, 9),
(20, 10, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `uc_cliente` (`email`,`cpf`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `endereco_cliente`
--
ALTER TABLE `endereco_cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cliente_id` (`cliente_id`,`endereco_id`),
  ADD KEY `endereco_id` (`endereco_id`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Índices para tabela `pedidos_produtos`
--
ALTER TABLE `pedidos_produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pedido_id` (`pedido_id`,`produto_id`),
  ADD KEY `produto_id` (`produto_id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `telefone_cliente`
--
ALTER TABLE `telefone_cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cliente_id` (`cliente_id`,`telefone_id`),
  ADD KEY `telefone_id` (`telefone_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco_cliente`
--
ALTER TABLE `endereco_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `pedidos_produtos`
--
ALTER TABLE `pedidos_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `telefone`
--
ALTER TABLE `telefone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `telefone_cliente`
--
ALTER TABLE `telefone_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `endereco_cliente`
--
ALTER TABLE `endereco_cliente`
  ADD CONSTRAINT `endereco_cliente_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `endereco_cliente_ibfk_2` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);

--
-- Limitadores para a tabela `pedidos_produtos`
--
ALTER TABLE `pedidos_produtos`
  ADD CONSTRAINT `pedidos_produtos_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`),
  ADD CONSTRAINT `pedidos_produtos_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`);

--
-- Limitadores para a tabela `telefone_cliente`
--
ALTER TABLE `telefone_cliente`
  ADD CONSTRAINT `telefone_cliente_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `telefone_cliente_ibfk_2` FOREIGN KEY (`telefone_id`) REFERENCES `telefone` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
