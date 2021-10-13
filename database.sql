-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2021 a las 18:31:57
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
(60, 'Descartan una lesión grave de Hazard', 'Las primeras pruebas realizadas al jugador belga descartan una rotura No obstante, los servicios médicos del Madrid continuarán evaluando las molestias de su atacante', 'Eden Hazard volvió a salir tocado de un partido. El centrocampista fue titular en la semifinal de la Nations League contra Francia y en el minuto 75 tuvo que ser sustituido por unas molestias. Tras este nuevo episodio, se le han realizado las primeras pruebas y todo hace indicar que se trata de una sobrecarga y no padece ninguna rotura.', 36),
(62, 'Inédito: Cristiano metió dos penales en cinco minutos', 'Ronaldo arrancó con todo ante Luxemburgo. Metió un doblete desde los 12 pasos en un abrir y cerrar de ojos', 'Cristiano Ronaldo es letal -entre varias de sus facetas futbolísticas- desde el punto penal. Generalmente no falla cada vez que le toca posar la pelota en el centro del área y tomar carrera. Este martes lo volvió a hacer y por duplicado. Fue vistiendo la camiseta de Portugal, frente a Luxemburgo por las Eliminatorias Europeas del Mundial de Qatar. El 7 metió dos penales antes de los 13 minutos de partido, para abrir el marcador y ampliar la diferencia.', 37),
(63, 'Lo que la FIFA todavía no definió del Mundial', 'Mientras se empiezan a saber los clasificados, al camino a Qatar todavía le queda un tema por resolver. Mirá.', 'El Mundial de Qatar 2022 está cada vez más cerca. Alemania ya aseguró su boleto para ser el primer clasificado junto al anfitrión. Pero así como Argentina y Brasil cada vez se despegan más en Sudamérica, hay una situación que la FIFA todavía no resolvió de la Copa del Mundo. Se trata de los repechajes, estipulados para junio de 2022 y donde se sabrán los últimos países que completarán los 32 clasificados', 37);

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
  `id_usuario` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contraseña` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `email`, `contraseña`) VALUES
(2, 'prueba@gmail.com', '$2y$10$2wKw2hiCyN4Hvj7JkdTgVeKjyUdqjKURzG9h9G6vDuJ.jNhy5j8R2'),
(4, 'prueba2@gmail.com', '$2y$10$DKtfXiZ11Fq8ESATjcs2yexasaIjPfmHY/cs04kmdLGmwLx/d7SEO');

--
-- Índices para tablas volcadas
--

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
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id_seccion` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`id_seccionfk`) REFERENCES `secciones` (`id_seccion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
