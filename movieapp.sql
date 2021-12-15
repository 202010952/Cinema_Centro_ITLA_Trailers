-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 05:15 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `Titulo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Genero` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sinopsis` varchar(6000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Trailer` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Imagen` varchar(6000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fecha_ingreso` timestamp NOT NULL DEFAULT current_timestamp(),
  `Director` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Actores` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AnoPub` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `peliculas`
--

INSERT INTO `peliculas` (`id`, `Titulo`, `Genero`, `Sinopsis`, `Trailer`, `Imagen`, `Fecha_ingreso`, `Director`, `Actores`, `AnoPub`) VALUES
(20, 'Spiderman No Way Home', 'Acción / Aventura / Ciencia Ficción', 'Después de que Mysterio desvelara la identidad de Spider-Man a todo el mundo en Lejos de casa, Peter Parker (Tom Holland), desesperado por volver a la normalidad y recuperar su anterior vida, pide ayuda a Doctor Strange para enmendar tal acción. El Hechicero Supremo de Marvel accede a ayudar al joven Hombre Araña, sin embargo, algo sale mal y el multiverso se convierte en la mayor amenaza hasta el momento.', 'JfVOs4VSpmA', 'https://m.media-amazon.com/images/M/MV5BNTMxOGI4OGMtMTgwMy00NmFjLWIyOTUtYjQ0OGQ4Mjk0YjNjXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_FMjpg_UY720_.jpg', '2021-04-22 19:57:32', 'Jon Watts', 'Tom Holland, Jacob Batalon, Marisa Tomel y Amy Pascal', '2021'),
(23, 'Shang-Chi and the Legend of the Ten Rings', 'Acción / Aventura / Cienc', 'Shang-Chi, the master of weaponry-based Kung Fu, is forced to confront his past after being drawn into the Ten Rings organization.', 'VaIoM36G-0Y', 'https://m.media-amazon.com/images/M/MV5BYmVhNmY4YWQtNDcxZS00YTI0LTk5M2QtYzlhYWZlMjNjMGQ0XkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_FMjpg_UX540_.jpg', '2021-04-22 21:31:10', 'Destin Daniel Cretton', 'Simu Liu, Awkwafina, Fala Chen y Benedict Wong', '2021'),
(25, 'Resident Evil: Welcome to Raccoon City', 'Acción / Terror', 'Esta historia de orígenes gira en torno al experto en artes marciales y maestro del Kung-Fu nacido en los cómics de Marvel durante los años 70, escritos por Steve Englehart e ilustrados por Jim Starlin. Su protagonista responde al nombre de Shang-Chi (Simu Liu), hijo de un poderoso criminal de China. Educado en un complejo aislado del resto del mundo, Shang-Chi fue entrenado en las artes marciales y ha desarrollado habilidades sin igual. En esta primera aventura Shang-Chi se enfrentará a un poderoso enemigo: El Mandarín (Tony Leung).', 'sKNQM7JmF-k', 'https://m.media-amazon.com/images/M/MV5BOTU5NjVkN2YtNmFjZS00MzhjLWI0MGMtZjE3ZmE1OTc0ZjczXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1080_.jpg', '2021-11-30 02:15:12', 'Johannes Roberts', 'Kaya Scodelario, Robbie Amell y Hannah John-Kamen', '2021'),
(26, 'Clifford', 'Familiar / Animación / Comedia', 'Clifford es un perro muy muy grande de color rojo. Su dueña es Emily Elizabeth, una amigable y curiosa niña de ocho años. Emily adoptó a Clifford cuando era un cachorrito muy pequeño, y fue precisamente el amor de la niña hacia su cachorro lo que hizo que Clifford creciera enormemente.', 'HU3PtgrtaM4', 'https://m.media-amazon.com/images/M/MV5BZGIxYTU5MzctY2MzNS00MTRhLWEwM2UtY2Q5Mzk3OTAzMzcwXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_FMjpg_UX1016_.jpg', '2021-11-30 02:47:07', 'Walt Becker', 'David Alan Grier, Darby Camp y Jack Whitehall', '2021'),
(27, 'The Matrix Resurrections', 'Ciencia Ficción / Acción ', 'Neo (Keanu Reeves) es un pirata informático que lleva una doble vida: durante el día trabaja en una empresa multinacional, mientras que por la noche se dedica a piratear bases de datos y saltarse sistemas de alta seguridad. Su vida cambiará cuando una noche conozca a Trinity (Carrie-Anne Moss), una misteriosa chica que parece ser una leyenda en el mundo de los \'hackers\'. Será ella quien lleve a Neo ante su líder: Morfeo (Laurence Fishburne). Así descubrirá una terrible realidad y el joven deberá decidir si unirse a la resistencia o vivir su vida como hasta ahora.\r\n', 'https://youtu.be/GF3aGovu8To', 'https://m.media-amazon.com/images/M/MV5BMGJkNDJlZWUtOGM1Ny00YjNkLThiM2QtY2ZjMzQxMTIxNWNmXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_FMjpg_UY720_.jpg', '2021-11-30 02:48:55', 'Lana Wachowski', 'Keanu Reeves, Carrie-Anne Moss y Yahya Abdul-Mateen II', '2021'),
(29, 'Sing 2', 'Comedia / Animación / Familia', 'Buster Moon y su elenco de artistas animales se preparan para lanzar un deslumbrante espectáculo en la capital del entretenimiento. Sin embargo, tiene que encontrar y persuadir a la estrella de rock más solitaria del mundo para que se una a ellos.', 'oGL_p2wrpVs', 'https://m.media-amazon.com/images/M/MV5BZjVhNGQ1OWYtYTJiNi00OWFlLWJhY2MtNTViNzRmMDFmNjk1XkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_FMjpg_UX682_.jpg', '2021-11-30 02:59:45', 'Garth Jennings', 'Matthew McConaughey, Reese Witherspoon y Scarlett Johansson', '2021'),
(30, 'Scream 5', 'Horror / Misterio / Thriller', 'Una mujer regresa a su ciudad natal para tratar de averiguar quién está cometiendo unos crímenes atroces.', 'beToTslH17s', 'https://m.media-amazon.com/images/M/MV5BNmQ0OWJiNWUtZGRiOS00MDRkLTk5NzMtN2RhN2NiZDg5NTE0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UY748_.jpg', '2021-11-30 03:02:04', 'Matt Bettinelli-Olpin y Tyler Gillett', 'Neve Campbell, Courteney Cox y David Arquette', '2022'),
(31, 'Way Down', 'Robo / Acción / Suspenso / Aventura / Crimen', 'El brillante ingeniero Thom Johnson es reclutado para averiguar cómo acceder al interior del Banco de España. El objetivo es robar un pequeño tesoro que va a estar depositado en el banco solo diez días.', 'H6RhIXAv8oo', 'https://m.media-amazon.com/images/M/MV5BZTliM2M5MjktZmY2NC00NjdlLWE5YzUtNDU2NzA0MzkyMDNlXkEyXkFqcGdeQXVyMTE1Nzg4NjY0._V1_FMjpg_UX800_.jpg', '2021-11-30 03:19:02', 'Jaume Balagueró', 'Freddie Highmore, Astrid Berges y Liam Cunning', '2021'),
(32, 'IMPERDONABLE', 'Drama / Suspenso', 'Ruth Slater ha salido de prisión tras estar encerrada durante 15 años por un violento crimen: un doble homicidio en el que acabó con la vida de dos agentes de policía, responsables del desalojo de su familia de la casa de campo donde vivían. Lo que comienza como un intento por rehacer su vida junto a su hermana, pronto se tornará en un torbellino de emociones en busca de venganza. Para saciar la sed que no ha dejado de atormentarla durante esos quince años, Slater centrará su objetivo en transmitir todo el dolor que ella ha sufrido a través de los hijos de los responsables de sus desgracias. Su destino será la venganza, fría y sin piedad que la quita el sueño desde aquel fatídico día en el que su vida y su naturaleza interior cambiaron para dar paso a la ira y la violencia en este intenso drama.\r\n', 'MiFEZu7pQo0', 'https://es.web.img3.acsta.net/r_1920_1080/pictures/21/10/27/11/06/5133242.jpg', '2021-11-30 07:19:02', 'Nora Fingscheidt.', 'Sandra Bullock, Viola Davis, Vincent D’Onofrio y Jon Bernthal', '2021'),
(33, 'COMPETENCIA OFICIAL', 'Comedia', 'Buscando notoriedad y prestigio social, un rico empresario se lanza a rodar una película que deje huella. Para ello, ficha a los mejores: un equipo estelar formado por la prestigiosa cineasta Lola Cuevas (Penélope Cruz) y dos reconocidos intérpretes, de enorme talento pero con un ego aún más grande: el actor de Hollywood Félix Rivero (Antonio Banderas) y el actor radical de teatro Iván Torres (Oscar Martínez). Ambos son leyendas, pero tienen rencillas del pasado que solucionar. A través de una serie de pruebas cada vez más peculiares propuestas por Lola, Félix e Iván deben enfrentarse no solo entre sí, sino también con sus propios legados.\r\n', 'uTHm_ZsXTAg', 'https://es.web.img2.acsta.net/r_1920_1080/pictures/21/09/09/16/46/4055018.jpg', '2021-11-30 07:19:02', 'Gastón Duprat y Mariano Cohn', 'Antonio Banderas, Penélope Cruz y Oscar Martínez', '2021'),
(35, 'ANTLERS: CRIATURA OSCURA', 'Terror / Suspense', 'Una profesora de un aislado pueblo cerca de Oregón (Keri Russell) comienza a interesarse por un estudiante silencioso y enigmático (Jeremy T. Thomas), muy apartado del resto de su clase. Para desgracia de la mujer, esta preocupación se acaba convirtiendo en una experiencia de vida o muerte cuando el catastrófico secreto del niño amenaza con destruir el pueblo. La profesora recurrirá a su hermano (Jesse Plemons), un sheriff de policía del lugar, para trabajar juntos con el pequeño y tratar de salvar el mundo.', 'pEiJsRmp_sA', 'https://es.web.img3.acsta.net/r_1920_1080/pictures/21/11/05/11/42/1154408.jpg', '2021-11-30 07:19:02', 'Scott Cooper', 'Keri Russell, Jesse Plemons y Graham Greene', '2021'),
(36, 'LA HIJA', 'Drama / Crimen / Suspense', 'Irene es una adolescente de quince años que acaba de escaparse de un centro de menores. La joven, se ha quedado embarazada y ahora tendrá que vivir bajo la custodia de su tutor legal, Javier.  Ambos tendrán que aprender a vivir juntos y la chica tendrá que aprender a convivir bajo las reglas de Javier.', 'P7caELChAyY', 'https://es.web.img3.acsta.net/r_1920_1080/pictures/21/08/02/13/58/1533330.jpg', '2021-11-30 07:19:02', 'Manuel Martín Cuenca', 'Javier Gutierrez Alvarez, Irene Virguez y Patricia Lopez', '2021'),
(37, 'EL AMOR EN SU LUGAR', 'Drama / Histórico / Music', 'Enero, 1942. 400.000 judíos de toda Polonia llevan más de un año confinados en un pequeño gueto en mitad de la ciudad. Un alto muro de ladrillos les separa de su libertad, sin embargo, el espíritu de aquellos habitantes no se debilita. Un grupo de actores judíos deciden interpretar una comedia musical en el teatro Fémina para levantar los ánimos de su gente. Entre bambalinas, los actores se enfrentan a un dilema de vida o muerte ante la posibilidad de llevar a cabo una fuga después de la función.', 'QfBD7pMYObg', 'https://es.web.img3.acsta.net/r_1920_1080/pictures/21/11/10/14/21/1307001.jpg', '2021-11-30 07:19:02', 'Nostromo Pictures', 'Ferdia Walsh y Clara Rugaard', '2021'),
(38, 'LA FAMILIA PERFECTA', 'Comedia', 'Lucía (Belén Rueda) es una mujer para la que llevar una vida modélica y tomar el control de su vida es lo más importante. Desde que se casó, ha centrado todos sus esfuerzos en el cuidado de su familia, hasta conseguir lo que para ella es una familia perfecta. Sin embargo, todo su mundo comienza a derrumbarse con la llegada de Sara (Carolina Yuste), la novia de su hijo; una chica joven con gran libertad y sin pelos en la lengua que tiene una familia muy diferente a lo que Lucía siempre soñó como familia política. Ahora, Lucía deberá aceptar que la familia perfecta no era exactamente lo que ella pensaba.', 'fbC5Ccvy-hw', 'https://es.web.img3.acsta.net/r_1920_1080/pictures/21/11/05/12/59/5755461.jpg', '2021-11-30 07:19:02', 'Arantxa Echevarría', 'Carolina Yuste, Gonzalo Ramos y Belen Rueda', '2021'),
(39, 'SIN TIEMPO PARA MORIR', 'Accion', 'Nueva entrega de la saga 007, el célebre espía británico del MI6 creado por el escritor Ian Fleming. En esta película, la número 25 de la franquicia, James Bond (Daniel Craig) ha dejado el servicio activo y disfruta de una vida tranquila en Jamaica. Pero su descanso es de corta duración, porque su viejo amigo Félix Leiter (Jeffrey Wright), de la CIA, aparecerá pidiéndole ayuda. La misión de rescatar a un científico secuestrado resultará ser mucho más complicada de lo esperado, ya que en medio de todo aparecerá Safin (Rami Malek), un misterioso villano armado con una nueva y peligrosa tecnología. Los aliados de Bond en esta misión serán sus antiguos conocidos M (Ralph Fiennes), Moneypenny (Naomie Harris) y Q (Ben Whishaw), además de una nueva Agente 00 (Lashana Lynch). Las dudas le asaltarán cuando Bond vea con preocupación los oscuros secretos que esconde Madeleine Swann (Léa Seydoux), secretos que en caso de salir a la luz acabarían con él.', '90HtfG6dZAM', 'https://es.web.img3.acsta.net/r_1920_1080/pictures/21/09/09/10/40/0885856.jpg', '2021-11-30 07:19:02', 'Cary Fukunaga', 'Daniel Craig, Lea Seydoux y Rami Malek', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Passw` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `rol` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `Email`, `Passw`, `rol`) VALUES
(1, '202010952@itla.edu.do', '123456', 'admin'),
(2, '20175331@itla.edu.do', '12345', 'user'),
(6, '20187068@itla.edu.do', '123456', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `MAIL` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
