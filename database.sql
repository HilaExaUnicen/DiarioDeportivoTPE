-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2021 a las 22:06:25
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
(44, 'hola', '*', 102, 1),
(45, 'aaw', '*****', 102, 1),
(46, 'ADADWWADWAD', '***', 62, 1),
(57, 'lol', '*', 62, 1),
(58, 'lol', '****', 62, 1),
(59, 'probando', '****', 101, 1),
(60, 'comment', '**', 101, 1),
(65, 'a', '*', 59, 41),
(66, 'penaldo', '***', 62, 41),
(70, 'el bicho', '*****', 62, 44),
(83, 'awante leonardo meci', '*****', 102, 2),
(87, 'xd', '*****', 59, 46),
(88, 'aaaaaaa', '**', 62, 2),
(91, 'looool', '*', 101, 1),
(93, 'dwadwa', '*', 59, 2),
(94, 'aaaaaa', '***', 59, 46),
(95, 'aaaa', '*', 59, 46),
(96, 'aaa', '*', 59, 46),
(99, 'aaa', '***', 62, 2),
(100, 'dawd', '***', 62, 2),
(101, 'a', '*', 101, 2),
(102, 'vamo', '*****', 111, 41),
(103, 'aaa', '**', 111, 41),
(104, 'nice', '****', 111, 46),
(105, 'aaaaaaaaa', '***', 112, 46),
(106, 'a', '*****', 114, 46),
(107, 'comentario prueba', '***', 111, 44),
(108, 'prueba', '*', 113, 44),
(109, 'comentario', '***', 114, 44),
(110, 'probando', '*', 112, 2),
(111, 'aa', '*****', 112, 2),
(112, 'con messi', '**', 113, 2),
(113, 'siuuu', '**', 62, 1),
(114, 'a', '**', 62, 1),
(115, 'jaaaaa', '*****', 113, 2),
(116, 'vamooo', '****', 114, 2);

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
(59, 'Alemania se convierte en la primera nación en clasificarse para la Copa Mundial de la FIFA 2022 después del anfitrión Qatar', 'Alemania se convirtió en la primera selección, después del anfitrión Qatar, en clasificar para la Copa Mundial de la FIFA del próximo año con una victoria por 4-0 contra Macedonia del Norte el lunes.', 'El resultado, junto con el fracaso de Armenia para vencer a Rumania, le dio a Alemania, cuatro veces campeona del mundo, un lugar en la Copa del Mundo por vigésima vez; sólo Brasil ha tenido más apariciones con 21. Estamos muy contentos de haber superado la clasificación. Y ahora, obviamente, queremos continuar ganando la Copa del Mundo el próximo año\", dijo Havertz, delantero del Chelsea.  \"Para Alemania, el objetivo principal es siempre levantar la copa\".  El triunfo del lunes fue la séptima victoria de Alemania en esta campaña de clasificación para la Copa del Mundo, con la única derrota co', 37),
(62, 'Inédito: Cristiano metió dos penales en cinco minutos', 'Ronaldo arrancó con todo ante Luxemburgo. Metió un doblete desde los 12 pasos en un abrir y cerrar de ojos', 'Cristiano Ronaldo es letal -entre varias de sus facetas futbolísticas- desde el punto penal. Generalmente no falla cada vez que le toca posar la pelota en el centro del área y tomar carrera. Este martes lo volvió a hacer y por duplicado. Fue vistiendo la camiseta de Portugal, frente a Luxemburgo por las Eliminatorias Europeas del Mundial de Qatar. El 7 metió dos penales antes de los 13 minutos de partido, para abrir el marcador y ampliar la diferencia.', 37),
(101, 'Cuáles son las 13 selecciones que ya se clasificaron al Mundial de Qatar', 'La Argentina se sumó este martes tras el empate ante Brasil y una serie de resultados que la acompañaron', 'Naturalmente, el primero en estar confirmado fue el anfitrión, Qatar. A su vez, este martes se completó la Eliminatoria de Europa que entregó ya 10 boletos para Alemania, Bélgica, Croacia, Dinamarca, España, Francia, Inglaterra, Serbia, Suiza y Países Bajos que quedaron líderes de sus grupos.  A su vez, en la UEFA también quedaron definidos los 12 participantes del repechaje. Diez por ser segundos en sus zonas y los otros dos por ser los dos mejores campeones de la clasificación general de la UEFA Nations League 2020/21 que no se hayan clasificado directamente ni hayan quedado segundos en sus ', 37),
(102, ' Messi: \"Me gustaría terminar este año de la mejor manera posible con el PSG\"', 'El argentino completó el choque contra Brasil y aseguró que está en buenas condiciones y con ganas de enfrentarse al City', 'Messi ha vuelto esta tarde a París tras completar el choque de anoche contra Brasil sin problemas. Como avanzó Scaloni en la antesala, el argentino estaba en condiciones de afrontarlo como titular. No hubo nada que lamentar: “Se ha conseguido el objetivo del pase al Mundial de Qatar. Es sin duda la frutilla del postre en un año muy especial que vivimos con nuestra selección\", ha escrito en su cuenta de Instagram.', 36),
(111, 'Tigre ascendio a Primera Division', 'Con gol de Cristian Zabala derrotó a Barracas Central en la cancha de Banfield y jugará en la máxima categoría.', 'Tigre llegó a la final luego de adjudicarse la zona A con 60 puntos, dejando en el camino en la última fecha a San Martín de Tucumán 2 a 0 y superando tan solo por una unidad a Quilmes y Almirante Brown.  Barracas Central ganó el grupo B con 58 unidades, postergando las ilusiones de Ferro que llegó segundo con 57. En la última jornada del torneo regular, Barracas se impuso por 3 a 1 a Villa Dálmine en Campana.', 1),
(112, 'Atlético Madrid pone en juego su futuro en Champions League ante el Milan', 'El Colchonero necesita ganar y esperar un traspié del Porto para no correr riesgo en la competencia. Además, Real Madrid realizará una visita peligrosa al sorprendente Sheriff', 'La Champions League entró en etapas decisivas y esta quinta jornada tendrá un componente dramático con equipos de peso que están al borde de la eliminación. Atlético Madrid recibirá al Milan desde las 17 (hora Argentina) con un ojo puesto en lo que sucede al mismo tiempo en Liverpool-Porto.  Con los Reds ya clasificados a la siguiente ronda, el segundo boleto quedará a disposición de Atlético Madrid, Porto o Milan. El equipo italiano es el más complicado y no depende de sus propios resultados, algo que sí tiene sobre su mesa el combinado español.', 36),
(113, '¿Cómo el Barcelona puede evitar un papelón en la Champions?', 'Si bien el conjunto catalán está en zona de clasificación, la última fecha pinta complicada...', 'Problemas y más problemas. En Cataluña la situación es delicada. Tal es así que el Barcelona está a punto de enfrentarse a una situación crítica, que no veía al club desde hace más de 20 años, cuando en la temporada 2000/2001 de la Champions League quedó eliminada en fase de grupos por última vez en su historia.No queda del todo claro si el empate sin goles de este martes ante el Benfica en el Camp Nou termina siendo un buen resultado para el Barcelona, que a pesar de enfrentar a un cuco en la última fecha, sigue dependiendo de sí mismo para clasificarse a octavos de final de la Champions.', 36),
(114, 'La Selección Argentina logró la clasificación más anticipada de la historia', 'El conjunto de Lionel Scaloni igualó ante Brasil por la fecha 14 de las Eliminatorias Sudamericanas, pero gracias a la caída de Chile ante Ecuador logró sellar su pase a la Copa del Mundo, en lo que f', 'La Selección Argentina finalizó con saldo positiva otra doble fecha de las Eliminatorias Sudamericanas. El equipo de Lionel Scaloni venció a Uruguay, igualó ante Brasil y, por la derrota de Chile ante Ecuador, selló su pase al Mundial de Qatar 2022 cuando aún restan cuatro fechas y la resolución de la FIFA respecto al clásico ante la Verdeamarela que terminó suspendido tras un escándalo. De esta manera, la Albiceleste consiguió cerrar la clasificación a una Copa del Mundo más temprana en toda su historia.', 1);

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
(36, 'lolencio@gmail.com', '$2y$10$pNbenWi1mboselMSY5zDR.tjpM0O2gAhX4hvltBD2LqiYunNOfQRq', 0),
(41, 'usuario3@gmail.com', '$2y$10$wQLmDVL8eQQuHpJkjd12yeCqBp0GFSyEFmfjCL6r.Opfi4q9fyrkG', 0),
(43, 'asdasad@gmail.com', '$2y$10$ldERlHvYkCm25b7SYWDIy.rhLCMCxpgcTwdesNcdTTBO/ocNeRbBq', 0),
(44, 'hilario@gmail.com', '$2y$10$2Y6kGYSWRPcPJhdddgFsjexQf09kA646YopKGsBoVc9WX84AA1Jha', 0),
(45, 'matias@gmail.com', '$2y$10$CW4LbGtJSzWuqEfKoTGqkOCI2QROorUQARxvgDYCwqMtsP/mMTUwu', 0),
(46, 'user00@gmail.com', '$2y$10$m.Q4e3ODbaSALYqQ3p.sI.xh6yGDVEp3fb.VoNnOuEHlxFXDJgafq', 0);

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
  MODIFY `id_comentario` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id_seccion` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
