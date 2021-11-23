-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2021 a las 14:04:51
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tpe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(6) NOT NULL,
  `comentario` varchar(50) NOT NULL,
  `puntaje` varchar(5) NOT NULL,
  `id_noticiafk` int(4) NOT NULL,
  `id_usuariofk` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `comentario`, `puntaje`, `id_noticiafk`, `id_usuariofk`) VALUES
(14, 'comentariooo', '*****', 102, 2),
(16, 'aguante chacarita', '*', 103, 2),
(17, 'nuevo comentario', '***', 103, 36),
(18, 'aaaaaaa', '**', 59, 2),
(19, 'lasdasddsa', '*****', 102, 2),
(20, 'hola', '****', 102, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(4) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cuerpo` varchar(600) NOT NULL,
  `id_seccionfk` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `descripcion`, `cuerpo`, `id_seccionfk`) VALUES
(57, 'De la mano de Messi y De Paul, Argentina armó un show de fútbol y goleó a Uruguay para acercarse al Mundial de Qatar 2022', 'El equipo de Lionel Scaloni lleva 24 partidos invicto e hizo delirar un Monumental con un 50% de aforo habilitado. Fue 3-0.', 'La Selección de Lionel Scaloni, que lleva 24 partidos invicta, armó un show de altísimo nivel contra Uruguay, por la quinta fecha de la Eliminatoria Sudamericana hacia el Mundial de Qatar 2022. En un partido electrizante que hizo delirar al Monumental, con buenas atajadas de Dibu Martínez en el primer tiempo y con mucho fútbol en el mediocampo y en el ataque, la Argentina se impuso por 3-0 con goles de Lionel Messi, Rodrigo De Paul y Lautaro Martínez.', 1),
(59, 'Alemania se convierte en la primera nación en clasificarse para la Copa Mundial de la FIFA 2022 después del anfitrión Qatar', 'Alemania se convirtió en la primera selección, después del anfitrión Qatar, en clasificar para la Copa Mundial de la FIFA del próximo año con una victoria por 4-0 contra Macedonia del Norte el lunes.', 'El resultado, junto con el fracaso de Armenia para vencer a Rumania, le dio a Alemania, cuatro veces campeona del mundo, un lugar en la Copa del Mundo por vigésima vez; sólo Brasil ha tenido más apariciones con 21. Estamos muy contentos de haber superado la clasificación. Y ahora, obviamente, queremos continuar ganando la Copa del Mundo el próximo año\", dijo Havertz, delantero del Chelsea.  \"Para Alemania, el objetivo principal es siempre levantar la copa\".  El triunfo del lunes fue la séptima victoria de Alemania en esta campaña de clasificación para la Copa del Mundo, con la única derrota co', 37),
(62, 'Inédito: Cristiano metió dos penales en cinco minutos', 'Ronaldo arrancó con todo ante Luxemburgo. Metió un doblete desde los 12 pasos en un abrir y cerrar de ojos', 'Cristiano Ronaldo es letal -entre varias de sus facetas futbolísticas- desde el punto penal. Generalmente no falla cada vez que le toca posar la pelota en el centro del área y tomar carrera. Este martes lo volvió a hacer y por duplicado. Fue vistiendo la camiseta de Portugal, frente a Luxemburgo por las Eliminatorias Europeas del Mundial de Qatar. El 7 metió dos penales antes de los 13 minutos de partido, para abrir el marcador y ampliar la diferencia.', 37),
(101, 'Cuáles son las 13 selecciones que ya se clasificaron al Mundial de Qatar', 'La Argentina se sumó este martes tras el empate ante Brasil y una serie de resultados que la acompañaron', 'Naturalmente, el primero en estar confirmado fue el anfitrión, Qatar. A su vez, este martes se completó la Eliminatoria de Europa que entregó ya 10 boletos para Alemania, Bélgica, Croacia, Dinamarca, España, Francia, Inglaterra, Serbia, Suiza y Países Bajos que quedaron líderes de sus grupos.  A su vez, en la UEFA también quedaron definidos los 12 participantes del repechaje. Diez por ser segundos en sus zonas y los otros dos por ser los dos mejores campeones de la clasificación general de la UEFA Nations League 2020/21 que no se hayan clasificado directamente ni hayan quedado segundos en sus ', 37),
(102, ' Messi: \"Me gustaría terminar este año de la mejor manera posible con el PSG\"', 'El argentino completó el choque contra Brasil y aseguró que está en buenas condiciones y con ganas de enfrentarse al City', 'Messi ha vuelto esta tarde a París tras completar el choque de anoche contra Brasil sin problemas. Como avanzó Scaloni en la antesala, el argentino estaba en condiciones de afrontarlo como titular. No hubo nada que lamentar: “Se ha conseguido el objetivo del pase al Mundial de Qatar. Es sin duda la frutilla del postre en un año muy especial que vivimos con nuestra selección\", ha escrito en su cuenta de Instagram.', 36),
(103, '¿Con cuántos puntos y cuándo River puede salir campeón?', 'Vuelve la Liga Profesional y en Núñez, con la ilusión a pleno, hacen cuentas. Acá, lo que falta y cómo se puede dar.', 'A cinco fechas para la conclusión y, con 15 puntos en juego, el equipo de Marcelo Gallardo suma 46 unidades, a siete de Talleres, su perseguidor inmediato. Más atrás: Lanús con 35, Vélez y Defensa con 34 y Boca con 33. ¿Cómo puede dar la vuelta olímpica? Sin depender de terceros, River necesita nueve puntos de los 15 que restan. Así, llegaría a 55 y se le haría imposible a la T igualar su línea por más que ganara todo lo restante (alcanzaría las 54 unidades). En caso de empate en el primer puesto, el título se define por una final o mini torneo entre los que sumen la misma cantidad de puntos. ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id_seccion` int(4) NOT NULL,
  `secciones` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id_seccion`, `secciones`) VALUES
(1, 'Futbol argentino'),
(36, 'Champions League'),
(37, 'Futbol internacional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(6) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contraseña` varchar(300) NOT NULL,
  `rol` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `email`, `contraseña`, `rol`) VALUES
(1, 'admin@gmail.com', '$2y$10$DSLP9yHROdkDIjBUUVervO9VoPLZxv1PALgDnb5t1Nf1MQ9HDfUMq', 1),
(2, 'usuario@gmail.com', '$2y$10$c1qZ/FlFMYnTQ620odeABuL3rT1LHhomYjNNYN5wIwtBpDLQroKFW', 0),
(36, 'lolencio@gmail.com', '$2y$10$pNbenWi1mboselMSY5zDR.tjpM0O2gAhX4hvltBD2LqiYunNOfQRq', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `comentarios_ibfk_1` (`id_noticiafk`),
  ADD KEY `comentarios_ibfk_2` (`id_usuariofk`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`),
  ADD KEY `id_categoria` (`id_seccionfk`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id_seccion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id_seccion` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_noticiafk`) REFERENCES `noticias` (`id_noticia`) ON DELETE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_usuariofk`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`id_seccionfk`) REFERENCES `secciones` (`id_seccion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
