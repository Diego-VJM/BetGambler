-- Active: 1684371989218@@127.0.0.1@3306

USE 5to_BetGambler;

INSERT INTO Continente (idContinente, continente)
VALUES		(1, "América del Norte"),
		(2, "América del Sur"),
		(3, "Europa"),
		(4, "Asia"),
		(5, "Oceania"),
		(6, "Africa");
		
INSERT INTO Pais(idPais, pais, idContinente)
VALUES		(1, "Argentina", 2),
		(2, "Brasil", 2),
		(3, "Chile", 2),
		(4, "Paraguay", 2),
		(5, "Estados Unidos", 1),
		(6, "Canada", 1),
		(7, "Mexico", 1),
		(8, "España", 3),
		(9, "Francia", 3),
		(10, "Portugal", 3),
		(11, "Alemania", 3),
		(12, "Inglaterra", 3),
		(13, "Rusia", 4),
		(14, "China", 4),
		(15, "Japon", 4);
	
INSERT INTO Estado_Apuesta (idEstado, estado)
VALUES		(1, "En Proceso"),
		(2, "Empezada"),
		(3, "Terminada");
		
INSERT INTO Temporada(idTemporada, temporada)
VALUES		(1, 2023);

INSERT INTO Tipo_Apuesta (tipoApuesta, apuesta)
VALUES		(1, "Goles"),
		(2, "Resultado");
	
INSERT INTO Equipo (nombre, idPais, entrenador)
VALUES	("Boca Juniors", 1, "Jorge Almirón"),
	("River Plate", 1, "Martin Demichelis"),
	("Estudiantes", 1, "Eduardo Domínguez"),
	("Talleres", 1, "Javier Gandolfi"),
	("San Lorenzo", 1, "Rubén Insúa"),
	("Rosario Central", 1, "Miguel Russo"),
	("Lanús", 1, "Frank Kudelka"),
	("Belgrano", 1, "Guillermo Farré"),
	("Defensa y Justicia", 1, "Julio Vaccari"),
	("Godoy Cruz", 1, "Diego Flores"),
	("Newell´s", 1, "Gabriel Heinze"),
	("Argentinos Juniors", 1, "Gabriel Milito"),
	("Sarmiento", 1, "Israel Damonte"),
	("Platense", 1, "Martín Palermo"),
	("Central Córdoba", 1, "Leonardo Madelón"),
	("Tigre", 1, "Diego Martínez"),
	("Racing Club", 1, "Fernando Gago"),
	("Barracas Central", 1, "Sergio Rondina"),
	("Gimnasia", 1, "Sebastian Romero"),
	("Instituto", 1, "Daniel Jiménez"),
	("Colón", 1, "Néstor Gorosito"),
	("Vélez", 1, "Marcelo Bravo"),
	("Independiente", 1, "Ricardo Zielinski"),
	("Atlético Tucumán", 1, "Lucas Pusineri"),
	("Huracán", 1, "Sebastián Battaglia"),
	("Banfield", 1, "Julio Falcioni"),
	("Unión", 1, "Sebastián Méndez"),
	("Arsenal", 1, "Federico Vilar"),
	("FC Cincinnati",5,"Chris Albright"),
	("Nashville SC",5,"Gary Neil Smith"),
	("Philadelphia Union",5,"Jim Curtin"),
	("New England Revolution",5,"Bruce Arena"),
	("Atlanta United FC",5,"Gonzalo Pineda Reyes"),
	("Columbus Crew SC",5,"Wilfried Nancy"),
	("Orlando City SC",5,"Óscar Pareja"),
	("DC United",5,"Wayne Mark Rooney"),
	("CF Montréal",5,"Hernán Losada"),
	("Charlotte FC",5,"Christian Lattanzio"),
	("NY Red Bulls",5,"Troy Lesesne"),
	("Toronto FC",5,"Bob Bradley"),
	("New York City FC",5,"Nicholas Cushing"),
	("Chicago Fire",5,"Fotios Klopas"),
	("Inter Miami",5,"Javier Morales"),
	("St. Louis City",5,"Bradley Neil Carnell"),
	("Seattle Sounders",5,"Brian Schmetzer"),
	("Los Angeles FC",5,"Steven Emil Cherundolo"),
	("FC Dallas",5,"Nico Estévez"),
	("SJ Earthquakes",5,"Luis González Gallaguer"),
	("Whitecaps FC",5,"Vanni Sartini"),
	("Houston Dynamo",5,"Benjamin Robert Olsen"),
	("Portland Timbers",5,"Giovanni Savarese Rubinaccio"),
	("Sporting KC",5,"Peter Joseph Vermes"),
	("Minnesota United",5,"Adrian Paul Heath"),
	("Real Salt Lake",5,"Pablo Mastroeni"),
	("Austin FC",5,"Joshua David Wolff"),
	("LA Galaxy",5,"Greg Vanney"),
	("Colorado Rapids",5,"Robin Lucius Fraser");

	
INSERT INTO Liga (idLiga, nombre, idTemporada, idPais)
VALUES 		(1, "Liga Profesional de Futbol", 1, 1),
		(2, "Master League Soccer", 1, 5),
		(3, "Ligue 1", 1, 9),
		(4, "Primera B Nacional", 1, 1),
		(5, "La Liga", 1, 8),
		(6, "Bundesliga", 1, 11),
		(7, "Premier League", 1, 12);

INSERT INTO Estadio (idEstadio, nombre, informacion)
VALUES 		(1, "La Bombonera", "Estadio de Boca Juniors, ubicado en La Boca."),
		(2, "El Monumental", "Estadio de River Plate, ubicado en Nuñez"),
		(3, "El Cilindro", "Estadio de Racing Club, ubicado en Avellaneda"),
		(4, "El Bosque", "Estadio de Gimnasia, ubicado en La Plata");

INSERT INTO Copa (idCopa, nombre, idTemporada, idContinente)
VALUES 		(1, "Libertadores de América", 1, 2);

INSERT INTO Fecha_Partido (fecha)
VALUES		(1),
		(2),
		(3),
		(4),
		(5),
		(6),
		(7),
		(8),
		(9),
		(20),
		(11),
		(12),
		(13),
		(14),
		(15),
		(16),
		(17),
		(18);
	
INSERT INTO Estado_Partido (idEstado, estado)
VALUES		(1, "A disputar"),
		(2, "En Juego"),
		(3, "Suspendido"),
		(4, "Postergado"),
		(5, "Terminado");
		
INSERT INTO Partido (idPartido, equipo_local, equipo_visitante, idFecha, idEstadio, idEstado)
VALUES 		(1, 1, 2, 15, 1, 2);

INSERT INTO Partido_Liga (idPartido, idLiga)
VALUES 		(1, 1);
	
CALL AltaUsuario ("SoyAdmin", "Administrador", "SuperAdmin", 61420233,  "adminroot@gmail.com", 18, "2004-12-25");

CALL AltaPartidoLiga(1, 1, 2, 15, 1); 

CALL AltaApuestaGol ();
