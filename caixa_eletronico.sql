-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Out-2018 às 21:51
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `contas` (
  `id` int(11) UNSIGNED NOT NULL,
  `titular` varchar(100) DEFAULT NULL,
  `agencia` int(11) DEFAULT NULL,
  `conta` int(11) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `saldo` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `contas` (`id`, `titular`, `agencia`, `conta`, `senha`, `saldo`) VALUES
(1, 'Marcos Andre', 123, 321, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(2, 'Jose Gustavo', 987, 456, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(3, 'Fulano de Tal', 456, 98, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(4, 'Usuario Teste', 999, 999, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(5, 'Paulo Soares', 734, 985, '81dc9bdb52d04dc20036dbd8313ed055', 0);

CREATE TABLE `historico` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_conta` int(11) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `data_operacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `contas`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `historico`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `contas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `historico`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
