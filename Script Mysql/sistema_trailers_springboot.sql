-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2023 a las 00:04:48
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_trailers_springboot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `titulo`) VALUES
(1, 'Terror'),
(2, 'Comedia'),
(3, 'Romance'),
(4, 'Sexo'),
(5, 'Accion'),
(6, 'Aventuras'),
(7, 'Ciencia Ficción'),
(8, 'Drama'),
(9, 'Suspenso'),
(10, 'Policíacas'),
(11, 'Animación'),
(12, 'Comedia Romantica'),
(13, 'Fantasia'),
(14, 'Musical');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero_pelicula`
--

CREATE TABLE `genero_pelicula` (
  `id_pelicula` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero_pelicula`
--

INSERT INTO `genero_pelicula` (`id_pelicula`, `id_genero`) VALUES
(1, 5),
(1, 1),
(14, 11),
(14, 12),
(14, 3),
(13, 1),
(16, 6),
(16, 2),
(18, 5),
(18, 2),
(19, 8),
(12, 6),
(12, 3),
(9, 5),
(9, 8),
(4, 5),
(4, 9),
(4, 1),
(10, 5),
(10, 10),
(7, 5),
(7, 6),
(7, 7),
(7, 2),
(7, 8),
(7, 10),
(7, 3),
(7, 4),
(7, 9),
(7, 1),
(20, 5),
(20, 8),
(20, 10),
(15, 8),
(15, 3),
(15, 4),
(6, 5),
(6, 7),
(21, 5),
(21, 7),
(21, 2),
(17, 5),
(17, 4),
(17, 1),
(22, 5),
(22, 7),
(23, 5),
(23, 7),
(25, 2),
(25, 8),
(2, 3),
(26, 14),
(3, 6),
(24, 5),
(24, 7),
(28, 8),
(28, 3),
(27, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id_pelicula` int(11) NOT NULL,
  `fecha_estreno` date NOT NULL,
  `ruta_portada` varchar(255) DEFAULT NULL,
  `sinopsis` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `youtube_trailer_id` varchar(255) DEFAULT NULL,
  `actores` varchar(255) DEFAULT NULL,
  `ruta_videos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id_pelicula`, `fecha_estreno`, `ruta_portada`, `sinopsis`, `titulo`, `youtube_trailer_id`, `actores`, `ruta_videos`) VALUES
(1, '2023-11-14', 'Saw_X_Poster.webp', 'John Kramer conoce a una persona que le promete curarle el cáncer en una clínica de la Ciudad de México. Tras descubrir que todo era una estafa, se venga de los timadores secuestrándolos y obligándolos a participar en un juego perverso.', 'Saw X', '0Nth2F7KCD8', 'Michael B. Jordan\r\nViktor Drago\r\nMila Davis-Kent\r\nAmara Creed\r\nTony Bellew\r\nRicky Conlan\r\nWood Harris\r\nTony \"Little Duke\" Evers\r\nSaúl Álvarez\r\nCanelo Alvarez\r\nDamian Anderson\r\nSpence Moore II\r\nDamian Anderson\r\nPhylicia Rasha', 'https://drive.google.com/file/d/1nMgDbC9r2tUIXWMbXMq_6cr9uh-qkfIu/view?usp=sharing'),
(2, '2023-07-21', 'barbie-2748009.webp', 'Después de ser expulsada de Barbieland por no ser una muñeca de aspecto perfecto, Barbie parte hacia el mundo humano para encontrar la verdadera felicidad.', 'Barbie', 'gH2mRECr6y4', ' America Ferrera,Ariana Greenblatt,Emerald Fennell,Helen Mirren,Kate McKinnon,Margot Robbie,Michael Cera,Ryan Gosling,Simu Liu,Will Ferrell.', 'https://drive.google.com/file/d/15xNbUI45vo1YDNXAxZmGVoTaVRXunbYE/view?usp=sharing'),
(3, '2023-09-08', 'Pinocho_de_Guillermo_del_Toro-534628657-large.jpg', 'En un pueblo italiano, el títere de madera Pinocho cobra vida gracias al Hada Azul. Pinocho se esfuerza por comportarse como un niño de carne y hueso, pero su vida da un vuelco al abandonar a su padre para unirse a un circo.', 'Pinocho', '-WgZ_IQU0Ks', 'Cate Blanchett,Christoph Waltz,David Bradley,Ewan McGregor,Finn Wolfhard,Gregory Mann,John Turturro,Ron Perlman,Tilda Swinton,Tim Blake Nelson.', 'https://drive.google.com/file/d/1CBCv_sb0PQr4m4pjr0pZPV1aagCuCInh/view?usp=sharing'),
(4, '2023-10-06', 'exorcista-2023-poster-2-64ba5e977d1f2.png', 'Victor percibe con horror que su hija, Angela, y la amiga de esta, Katherine, muestran síntomas de haber sido poseídas por una entidad demoníaca. Desesperado, busca la ayuda de Chris MacNeil, la única persona viva que ha experimentado algo así.', 'El Exorcista: Creyentes', 'lziHAdN_7k8', 'Ellen Burstyn , Linda Blair , Olivia O’Neill , Lidya Jewett , Leslie Odom Jr , Jennifer Nettles , Ann Dowd , E.J. Bonilla , Raphael Sbarge , Okwui Okpokwasili.\r\n', 'https://drive.google.com/file/d/19L-KFzoRNJfiuSxbRNZYEiSZgupN07C2/view?usp=sharing'),
(6, '2019-04-26', 'MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg', 'Los Vengadores restantes deben encontrar una manera de recuperar a sus aliados para un enfrentamiento épico con Thanos, el malvado que diezmó el planeta y el universo.', 'Avengers: Endgame', 'TcMBFSGVi1c', 'Benedict Cumberbatch,Chadwick Boseman,Chris Evans,Chris Hemsworth,Don Cheadle,Jeremy Renner,Mark Ruffalo,Paul Rudd,Robert Downey Jr, Scarlett Johansson.', 'https://drive.google.com/file/d/105N3UvqB19tEVF5z7XMbN8YVdsZIRXTN/view?usp=sharing'),
(7, '2018-07-17', 'La_Monja_2.webp', 'Una monja se suicida en una abadía rumana y el Vaticano envía a un sacerdote y una novicia a investigar lo sucedido. Lo que ambos encuentran allá es un secreto perverso que los enfrentará cara a cara con el mal en su esencia más pura.', 'La Monja 2', 'pdrPvHulyUY', 'Taissa Farmiga , Jonas Bloquet , Storm Reid , Anna Popplewell , Bonnie Aarons , Katelyn Rose Downey , Suzanne Bertish  , David Horovitch , Andrew Morgado , Vera Farmiga , Patrick Wilson , Steve Coulter', 'https://drive.google.com/file/d/1AihG-91G3Uo2idXBbKti8bIxeDIM73v7/view?usp=sharing'),
(9, '2023-03-03', 'Creed_III_Poster.webp', 'Adonis Creed, aún dominando el mundo del boxeo, prospera en su carrera y en su vida familiar, pero un amigo de la infancia y antiguo prodigio del boxeo reaparece tras salir de la cárcel y está ansioso por demostrar que merece otra oportunidad.', 'Creed III', 'PvxZuRfrk54', 'Michael B. Jordan. Adonis Creed.\r\nTessa Thompson. Bianca Taylor.\r\nJonathan Majors. Damian \'Dame\' Anderson.\r\nPhylicia Rashād. Mary-Anne Creed.', 'https://drive.google.com/file/d/1IDYTN4cwZ-Uig03qSA3l6wyIEE1CBIm7/view?usp=sharing'),
(10, '2023-05-12', 'themother.jpg', 'Una agente del Gobierno adopta una nueva identidad y abandona a su hija recién nacida para protegerla de sus enemigos. Años más tarde, unos criminales secuestran a la chica, lo que obliga a la madre a abandonar el anonimato para salvarla.', 'The Mother', '8BFdFeOS3oM', 'Jennifer Lopez , Omari Hardwick , Joseph Fiennes , Leslie Lluvet , Gael García Bernal , Jesse Garcia , Edie Falco ,Noah Crawford , Paul Raci.', 'https://drive.google.com/file/d/1vGiy5k9o4C_HZgqU8pO6-za5Zs4vB28A/view?usp=sharing'),
(12, '2022-12-21', 'ElgatoconbotasElaultimodeseo.jpg', 'El Gato con Botas descubre que, debido a su pasión por la aventura, ha gastado ya 8 de sus 9 vidas. Por tanto, emprende un peligroso viaje en busca del legendario Último Deseo para solicitar que le restauren las vidas que ya perdió.', 'Gato con Botas: El último deseo', 'hxJyt1oDyOA', 'Antonio Banderas , Salma Hayek , Harvey Guillén , Florence Pugh , Ray Winstone , Olivia Colman , Samson Kayo , John Mulaney , Wagner Moura , Kevin McCann .', 'https://drive.google.com/file/d/12wC569Y67zlj46Nji3oxIq0KwFimAP_M/view?usp=sharing'),
(13, '2009-02-12', 'Viernes_13-910183131-large.jpg', 'Mientras busca a su hermana desaparecida, un joven y un grupo de estudiantes descubren a un asesino enmascarado armado con un machete en las ruinas de Camp Crystal Lake.', 'Viernes 13', 'NrNCwFG8Yrw', 'Jared Padalecki , Danielle Panabaker , Derek Mears , Amanda Righetti , Travis Van Winkle , Julianna Guill ,  Arlen Escarpeta , Willa Ford , Aaron Yoo , Ryan Hansen , Jonathan Sadowski , America Olivo .', 'https://drive.google.com/file/d/1DNR_pw566nPb73KIeGgx8NRB-f4HNwlX/view?usp=sharing'),
(14, '2005-08-23', 'El_cadaver_de_la_novia_poster8.webp', 'En la Europa del siglo XIX, un talentoso pianista se casa accidentalmente con una mujer muerta que lo lleva a otro mundo.', 'El cadáver de la novia', 'Jq8EXyd-2Io', 'Johnny Depp , Helena Bonham Carter , Emily Watson , Richard E. Grant , Christopher Lee , Michael Gough , Joanna Lumley , Albert Finney , Tracey Ullman.', 'https://drive.google.com/file/d/1O-qk8Srl3buD-EyNGEWr2PhVnj7lW9pK/view?usp=sharing'),
(15, '2023-09-18', 'afterporsiempre.jpg', 'Angustiado por el bloqueo creativo y la dolorosa ruptura con Tessa, el escritor Hardin Scott viaja a Portugal con la intención de encontrar a una mujer a la que hizo daño en el pasado y pedirle perdón.', 'After Everything', 'NsmopvKNSE4', 'Hero Fiennes Tiffin, Josephine Langford, Louise Lombard, Stephen Moyer, Mimi Keene, Benjamin Mascolo.', 'https://drive.google.com/file/d/1A4r3nvia42FKcAXQZgNQZT5r8H6tFUKK/view?usp=sharing'),
(16, '2023-09-14', 'images.jpg', 'Presionado por su esposa, Polito se esfuerza para que en el trabajo lo asciendan y trasladen de Izamal, Yucatán, donde reside, a Cancún. Sin embargo, termina solo y en Tijuana, una tierra que teme porque considera de pandilleros.', 'Welcome al norte', 'HMCb1Bf4luY', 'Amorita Rasgado , Ricardo Abarca, Silverio Palacios.', 'https://drive.google.com/file/d/1nEE4d4yNWcU2nbNwDa1M4kCeX0BsTspM/view?usp=sharing'),
(17, '2003-09-25', 'image.jpg', 'Unos adolescentes quedan atrapados en medio de la batalla entre Freddy Krueger y el asesino enmascarado Jason.', 'Freddy vs. Jason', 'rLsWWX74TeI', 'Robert Englund , Ken Kirzinger , Monica Keena , Katharine Isabelle , Kelly Rowland , Jason Ritter , Chris Marquette , Lochlyn Munro , Rey Mysterio , Tom Butler.', 'https://drive.google.com/file/d/1qMjRXDfQS-Hy6UJbYnuMwFJe8LVvf0Nm/view?usp=sharing'),
(18, '2013-08-14', 'images.jpeg', 'Después de que Hit Girl es atrapada y obligada a retirarse, Kick-Ass se une a un equipo de superhéroes novatos encabezados por un mafioso reformado y se involucra con un villano maldito, antiguamente conocido como Red Mist.', 'Kick-Ass 2', 'Td921lYSBIA', 'Aaron Taylor-Johnson , Christopher Mintz-Plasse , Chloë Grace Moretz , Jim Carrey , Clark Duke , Olga Kurkulina , Lindy BoothJohn Leguizamo , Morris Chestnut.', 'https://drive.google.com/file/d/1q5a17zzG6oeXgfAzKCFeuC4gkV33n3GN/view?usp=sharing'),
(19, '2023-04-06', 'images (1).jpeg', 'Aoy regenta el restaurante de su familia en el casco antiguo de Bangkok. Un día, recibe una invitación para dejar el negocio familiar y unirse al Team Hunger, el principal equipo de chefs de lujo de Tailandia.', 'Hambre', 'hCIt_LAiPv4', 'Nopachai Chaiyanam , Chutimon Chuengcharoensukying , Emilio Ferreira , Alex Gravenstein , Chimwemwe Miller , Gunn Svasti Na Ayudhya , Majid Sajadi , Bhumibhat Thavornsiri.', 'https://drive.google.com/file/d/1ckq78KMDO51qOr_jhweuBl-YghkD09uQ/view?usp=sharing'),
(20, '2023-07-04', 'images (2).jpeg', 'Un agente federal retirado se embarca en una peligrosa misión para salvar a una niña de unos despiadados traficantes de menores. Se adentra en la selva colombiana, arriesgando su vida, para liberarla de un destino peor que la muerte.', 'Sonido de libertad', 'H82uvLvszQ0', 'Jim Caviezel , Mira Sorvino , Bill Camp , Eduardo Verástegui , Javier Godino , José Zúñiga , Kurt Fuller , Manny Pérez , Gerardo Taracena , Gustavo Sánchez Parra , Scott Haze .                                                                               ', 'https://drive.google.com/file/d/14dH6FB7iov7t4tuATThnbd1Lv3E7r2uJ/view?usp=sharing'),
(21, '2023-08-18', 'images (3).jpeg', 'El Escarabajo, una antigua reliquia extraterrestre, elige al estudiante Jaime Reyes como el huésped simbiótico en cuyo cuerpo resguardarse. A partir de ese momento, Jaime desarrolla una armadura que le otorga poderes increíbles e impredecibles.', 'Blue Beetle', 'dAkmmZMjKNY', 'Adriana Barraza,Belissa Escobedo,Bruna Marquezine,Damián Alcázar,Elpidia Carrillo,George Lopez,Harvey Guillén,Raoul Max Trujillo,Susan Sarandon,Xolo Mariduena.', 'https://drive.google.com/file/d/13SlJbuOevpMlCEqTGHcVAVz9j84MVj11/view?usp=sharing'),
(22, '2019-07-02', 'Spider_Man_Lejos_de_casa-642122608-large.jpg', 'Peter Parker decide pasar unas merecidas vacaciones en Europa junto a MJ, Ned y el resto de sus amigos. ', 'Spider-Man: Lejos de Casa ', 's1OxOBPWBeU', 'Angourie Rice,Jacob Batalon,Jake Gyllenhaal,Jon Favreau,Marisa Tomei,Remy Hii,Samuel L. Jackson,Tom Holland,Tony Revolori,Zendaya.', ''),
(23, '2021-12-17', 'SMNWH_Poster.webp', 'Tras descubrirse la identidad secreta de Peter Parker como Spider-Man, la vida del joven se vuelve una locura. Peter le pide ayuda al Doctor Strange para recuperar su vida, pero algo sale mal y provoca una fractura en el multiverso.', 'Spider-Man: Sin camino a casa ', 'r6t0czGbuGI', 'Alfred Molina,Andrew Garfield,Angourie Rice,Benedict Cumberbatch,J.K. Simmons,Jacob Batalon,Jamie Foxx,Jon Favreau,Marisa Tomei,Tobey Maguire,Tom Holland,Willem Dafoe,Zendaya.', ''),
(24, '2021-10-01', 'images (5).jpeg', 'Después de encontrar un cuerpo anfitrión en el periodista de investigación Eddie Brock, el simbionte alienígena debe enfrentarse a un nuevo enemigo, Carnage, el alter ego del asesino en serie Cletus Kasady.', 'Venom: Carnage Liberado ', '-AnsJLpsxms', 'Michelle Greenidge,Michelle Williams,Naomie Harris,Peggy Lu,Reid Scott,Rob Bowen,Sian Webber,Stephen Graham,Tom Hardy,Woody Harrelson.', 'https://drive.google.com/file/d/19iqEBJf6Q52kxla0cRJYrexuK4bFx_R1/view?usp=sharing'),
(25, '2023-03-11', 'images (6).jpeg', 'Richard Montanez, hijo de un inmigrante mexicano, era conserje en Frito Lay cuando se le ocurrió la idea de los Flamin\' Hot Cheetos. Su creación, inspirada en los sabores de su comunidad, revitalizó Frito-Lay y transformó la industria alimentaria.', 'Flamin’ Hot: El sabor que cambió la historia ', 'Wsk-FfaV6po', 'Annie Gonzalez,Bobby Soto,Dennis Haysbert,Emilio Rivera,Jesse Garcia,Jimmy Gonzales,Matt Walsh,Pepe Serna,Tony Shalhoub,Vanessa Martinez.', 'https://drive.google.com/file/d/1lVtYWeqYLmUyik-1CvVZ24aMoW2uxJl0/view?usp=sharing'),
(26, '2023-02-01', 'images (7).jpeg', 'Antes de hacer una pausa de dos años para cumplir el servicio militar obligatorio, el grupo BTS ofrece un concierto especial en Busan, durante el cual interpretan los grandes éxitos de su carrera.', 'BTS: Yet To Come', 'u0kJfkDix4Y', 'Jeon Jung-kook,Jung Ho-seok,Kim Nam-joon,Kim Seok-jin,Kim Tae-hyung,Min Yoon-gi,Park Ji-min', 'https://drive.google.com/file/d/1pYMI_5mVryfvV25PjOKG52c-pv6iof9l/view?usp=sharing'),
(27, '2023-04-21', 'images (8).jpeg', 'En un edificio de apartamentos de Los Ángeles, dos hermanas luchan contra los demonios sedientos de sangre que han salido de un libro antiguo.', 'Evil Dead: El despertar ', 'keW_fKq187k', 'Alyssa Sutherland,Anna-Maree Thomas,Gabrielle Echols,Jayden Daniels,Lily Sullivan,Mark Mitchinson,Mirabai Pease,Morgan Davies,Nell Fisher,Richard Crouchley.', 'https://drive.google.com/file/d/1vSiEtavCri6a10qsPk6DfVpUdx-DIdel/view?usp=sharing'),
(28, '1998-01-23', 'titanic.webp', 'Una joven de la alta sociedad abandona a su arrogante pretendiente por un artista humilde en el trasatlántico que se hundió durante su viaje inaugural.', 'Titanic', 'wMZuro21wtE', ' Bernard Hill,Bill Paxton,Billy Zane,David Warner,Frances Fisher,Gloria Stuart,Kate Winslet,Kathy Bates,Leonardo DiCaprio,Victor Garber.', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `genero_pelicula`
--
ALTER TABLE `genero_pelicula`
  ADD KEY `FKnpb8vdeybu4p41dibnbawra2q` (`id_genero`),
  ADD KEY `FK7rxwafj1id7f40i0mq446ivw6` (`id_pelicula`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id_pelicula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id_pelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `genero_pelicula`
--
ALTER TABLE `genero_pelicula`
  ADD CONSTRAINT `FK7rxwafj1id7f40i0mq446ivw6` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`),
  ADD CONSTRAINT `FKnpb8vdeybu4p41dibnbawra2q` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
