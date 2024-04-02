
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `prioridad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `usuario` (`id`, `email`, `nombre`, `prioridad`) VALUES
(1, 'guerrahgv@gmail.com', 'henry Guerrero vargas', 0),
(2, 'guerrahgv@gmail.com', 'henry Guerrero vargas', 852),
(3, 'gisethmj@gmail.com', 'giseth', 2),
(4, 'carmeng@gmail.com', 'carmenza', 3),
(5, 'vvicooria@gmail.com', 'mariaVictoria', 6);


ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;
