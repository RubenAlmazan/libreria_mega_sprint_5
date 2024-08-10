USE [bd_libreria_mega]
GO
/****** Object:  Table [dbo].[catalogo]    Script Date: 10/08/2024 13:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catalogo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_genero] [int] NOT NULL,
	[titulo] [varchar](200) NOT NULL,
	[imagen] [varchar](500) NOT NULL,
	[descripcion] [varchar](600) NOT NULL,
	[autor] [varchar](600) NOT NULL,
	[editorial] [varchar](100) NOT NULL,
	[enlace] [varchar](600) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contenido_eliminado]    Script Date: 10/08/2024 13:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contenido_eliminado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_libro] [int] NOT NULL,
	[id_genero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contenido_favorito]    Script Date: 10/08/2024 13:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contenido_favorito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_libro] [int] NOT NULL,
	[id_genero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contenido_leer_mas_tarde]    Script Date: 10/08/2024 13:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contenido_leer_mas_tarde](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_libro] [int] NOT NULL,
	[id_genero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contenido_leido]    Script Date: 10/08/2024 13:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contenido_leido](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_libro] [int] NOT NULL,
	[id_genero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genero]    Script Date: 10/08/2024 13:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genero](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genero_favorito]    Script Date: 10/08/2024 13:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genero_favorito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_genero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 10/08/2024 13:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](200) NOT NULL,
	[correo] [varchar](500) NOT NULL,
	[password] [varchar](600) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[catalogo] ON 
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (1, 1, N'Cien años de soledad', N'imagen1.jpg', N'Es una saga familiar que narra la historia de la familia Buendía en el ficticio pueblo de Macondo. Con realismo mágico, la novela explora temas como la soledad, el amor, la guerra y la muerte, creando un retrato complejo y mágico de la humanidad.', N'Gabriel García Márquez', N'Editorial Sudamericana', N'https://www.secst.cl/upfiles/documentos/19072016_1207am_578dc39115fe9.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (2, 1, N'Don Quijote de la Mancha', N'imagen2.jpg', N'Sigue las aventuras de Alonso Quijano, quien, tras leer libros de caballería, se autoproclama "Don Quijote" y emprende una serie de aventuras junto a su escudero, Sancho Panza. Es una crítica a la sociedad de la época y una reflexión sobre la realidad y la ficción.', N'Miguel de Cervantes', N'Francisco de Robles', N'https://www.imprentanacional.go.cr/editorialdigital/libros/literatura%20universal/quijote_edincr.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (3, 1, N'La sombra del viento', N'imagen3.jpg', N'Ambientada en la Barcelona de la posguerra, narra la historia de Daniel Sempere, quien encuentra un misterioso libro que lo lleva a desentrañar secretos oscuros y peligrosos. La novela mezcla elementos de misterio, romance y literatura.', N'Carlos Ruiz Zafón', N'Editorial Planeta', N'https://cel.edu.py/v2/wp-content/uploads/2020/10/Ruiz-Zafon-Carlos-La-Sombra-Del-Viento_54Y.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (4, 2, N'Sapiens: De animales a dioses', N'imagen4.jpg', N'Un recorrido por la historia de la humanidad, desde los primeros Homo sapiens hasta la actualidad. El autor explora cómo la biología, la cultura y la tecnología han moldeado a nuestra especie y el mundo en que vivimos.', N'Yuval Noah Harari', N'Debate', N'https://www.pratec.org/wpress/pdfs-pratec/De-animales-a-dioses-Breve-historia-de-la-humanidad.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (5, 2, N'Historia del tiempo', N'imagen5.jpg', N'Stephen Hawking ofrece una explicación accesible sobre temas complejos de cosmología, como el Big Bang, los agujeros negros y la naturaleza del tiempo. El libro desafía al lector a cuestionar la comprensión del universo.', N'Stephen Hawking', N'Crítica', N'https://antroposmoderno.com/word/Stephen_Hawking_Historia_del_Tiempo.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (6, 2, N'El diario de Ana Frank', N'imagen6.jpg', N'El diario real de una joven judía, Ana Frank, que relata su vida y pensamientos mientras se esconde de los nazis durante la Segunda Guerra Mundial. Es un testimonio conmovedor de la resiliencia humana en tiempos de horror.', N'Ana Frank', N'Contact Publishing', N'https://www.secst.cl/upfiles/documentos/29082016_1042am_57c465f3719b0.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (7, 3, N'Dune', N'imagen7.jpg', N'En un futuro lejano, Paul Atreides, el heredero de una noble familia, se enfrenta a un destino épico en el desértico planeta Arrakis, donde se produce la especia más valiosa del universo. "Dune" es una mezcla de política, religión y ecología.', N'Frank Herbert', N'Chilton Books', N'http://bibliotecadigital.tamaulipas.gob.mx/archivos/descargas/49744d255_Herbert,%20Frank%20-%20Dune%20II.%20El%20Mesias%20de%20Dune.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (8, 3, N'Neuromante', N'imagen8.jpg', N'Un clásico de la ciencia ficción ciberpunk, narra la historia de Case, un hacker que es contratado para realizar un ciberatraco en un futuro distópico dominado por corporaciones y tecnología avanzada. El libro explora temas de identidad y realidad virtual.', N'William Gibson', N'Ace', N'https://es.scribd.com/document/335543380/William-Gibson-Neuromante-pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (9, 3, N'Fundación', N'imagen9.jpg', N'En un futuro lejano, el Imperio Galáctico está en decadencia. El científico Hari Seldon crea la Fundación, una organización destinada a preservar el conocimiento humano y reducir el periodo de caos tras la caída del Imperio. Es una saga sobre el poder de la ciencia y la historia.', N'Isaac Asimov', N'Gnome Press', N'https://clubdelphos.org/sites/default/files/Fundacion-Isaac_Asimov.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (10, 4, N'El hobbit', N'imagen10.jpg', N'Bilbo Bolsón, un hobbit pacífico, es arrastrado a una aventura épica para ayudar a un grupo de enanos a recuperar su hogar de un dragón llamado Smaug. El libro es una historia de crecimiento personal y descubrimiento.', N'J.R.R. Tolkien', N'George Allen & Unwin', N'https://web.seducoahuila.gob.mx/biblioweb/upload/J.R.R.%20Tolkien%20-%20El%20Hobbit.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (11, 4, N'Harry Potter y la piedra filosofal', N'imagen11.jpg', N'El joven Harry Potter descubre que es un mago y asiste a la escuela de magia Hogwarts, donde comienza su lucha contra el malvado Voldemort. Esta primera entrega de la saga mezcla magia, amistad y la lucha entre el bien y el mal.', N'J.K. Rowling', N'Bloomsbury', N'https://fecolsa.com.co/upload/Actividades%20Equilibrio%20Total/Rowling,%20J.%20K.%20-%20%20Harry%20Potter%20y%20la%20piedra%20filosofal.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (12, 4, N'Juego de tronos', N'imagen12.jpg', N'La primera novela de la saga "Canción de Hielo y Fuego" presenta un mundo medieval en el que varias familias nobles luchan por el control del Trono de Hierro. Con múltiples personajes y tramas, la historia es una mezcla de intriga política, traición y guerra.', N'George R.R. Martin', N'Bantam Books', N'https://www.sev.gob.mx/clasesdesdecasa/documentos/17c08e45734090a3124426075040c7dcJuegodetronos1.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (13, 5, N'El nombre de la rosa', N'imagen13.jpg', N'En una abadía benedictina en el siglo XIV, el monje franciscano Guillermo de Baskerville investiga una serie de muertes misteriosas. La novela es un thriller medieval que mezcla filosofía, religión y el poder del conocimiento.', N'Umberto Eco', N'Bompiani', N'https://www.suneo.mx/literatura/subidas/Umberto%20Eco%20El%20Nombre%20de%20la%20Rosa.pdf')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (14, 5, N'El código Da Vinci', N'imagen14.jpg', N'El profesor Robert Langdon investiga el asesinato de un curador del Louvre, lo que lo lleva a descubrir secretos antiguos relacionados con el Santo Grial. Es una novela de suspenso que mezcla historia, religión y conspiraciones.', N'Dan Brown', N'Doubleday', N'https://usercontent.one/wp/www.puro-geek.com/wp-content/uploads/2021/11/El-codigo-Da-Vinci-Dan-Brown.pdf?media=1630018077')
GO
INSERT [dbo].[catalogo] ([id], [id_genero], [titulo], [imagen], [descripcion], [autor], [editorial], [enlace]) VALUES (15, 5, N'Sherlock Holmes: Estudio en escarlata', N'imagen15.jpg', N'El primer caso del detective Sherlock Holmes, donde él y su compañero Dr. Watson investigan un misterioso asesinato en Londres. La novela introduce al icónico detective y su método deductivo para resolver crímenes.', N'Arthur Conan Doyle', N'Ward Lock & Co', N'https://web.seducoahuila.gob.mx/biblioweb/upload/estudio_en_escarlata.pdf')
GO
SET IDENTITY_INSERT [dbo].[catalogo] OFF
GO
SET IDENTITY_INSERT [dbo].[contenido_eliminado] ON 
GO
INSERT [dbo].[contenido_eliminado] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (1, 3, 9, 4)
GO
INSERT [dbo].[contenido_eliminado] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (2, 3, 12, 5)
GO
INSERT [dbo].[contenido_eliminado] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (3, 2, 2, 1)
GO
INSERT [dbo].[contenido_eliminado] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (4, 2, 5, 2)
GO
INSERT [dbo].[contenido_eliminado] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (5, 2, 8, 3)
GO
INSERT [dbo].[contenido_eliminado] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (6, 2, 11, 4)
GO
INSERT [dbo].[contenido_eliminado] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (15, 1, 14, 5)
GO
INSERT [dbo].[contenido_eliminado] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (16, 1, 2, 1)
GO
INSERT [dbo].[contenido_eliminado] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (17, 1, 6, 2)
GO
INSERT [dbo].[contenido_eliminado] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (18, 1, 15, 5)
GO
INSERT [dbo].[contenido_eliminado] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (19, 4, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[contenido_eliminado] OFF
GO
SET IDENTITY_INSERT [dbo].[contenido_favorito] ON 
GO
INSERT [dbo].[contenido_favorito] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (1, 3, 2, 1)
GO
INSERT [dbo].[contenido_favorito] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (2, 3, 5, 2)
GO
INSERT [dbo].[contenido_favorito] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (3, 2, 8, 3)
GO
INSERT [dbo].[contenido_favorito] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (4, 2, 11, 4)
GO
INSERT [dbo].[contenido_favorito] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (5, 2, 14, 5)
GO
INSERT [dbo].[contenido_favorito] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (8, 1, 10, 3)
GO
INSERT [dbo].[contenido_favorito] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (14, 1, 12, 4)
GO
INSERT [dbo].[contenido_favorito] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (16, 1, 4, 2)
GO
INSERT [dbo].[contenido_favorito] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (18, 1, 1, 1)
GO
INSERT [dbo].[contenido_favorito] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (19, 1, 5, 2)
GO
INSERT [dbo].[contenido_favorito] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (21, 1, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[contenido_favorito] OFF
GO
SET IDENTITY_INSERT [dbo].[contenido_leer_mas_tarde] ON 
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (2, 1, 6, 2)
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (3, 1, 9, 3)
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (4, 1, 12, 4)
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (5, 1, 15, 5)
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (6, 2, 1, 1)
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (7, 2, 4, 2)
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (8, 2, 7, 3)
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (9, 3, 10, 4)
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (10, 3, 13, 5)
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (13, 1, 2, 1)
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (15, 4, 5, 2)
GO
INSERT [dbo].[contenido_leer_mas_tarde] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (16, 4, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[contenido_leer_mas_tarde] OFF
GO
SET IDENTITY_INSERT [dbo].[contenido_leido] ON 
GO
INSERT [dbo].[contenido_leido] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (6, 2, 2, 1)
GO
INSERT [dbo].[contenido_leido] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (7, 2, 5, 2)
GO
INSERT [dbo].[contenido_leido] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (8, 2, 8, 3)
GO
INSERT [dbo].[contenido_leido] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (9, 3, 11, 4)
GO
INSERT [dbo].[contenido_leido] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (10, 3, 14, 5)
GO
INSERT [dbo].[contenido_leido] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (41, 1, 1, 1)
GO
INSERT [dbo].[contenido_leido] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (42, 1, 5, 2)
GO
INSERT [dbo].[contenido_leido] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (43, 1, 4, 2)
GO
INSERT [dbo].[contenido_leido] ([id], [id_usuario], [id_libro], [id_genero]) VALUES (44, 1, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[contenido_leido] OFF
GO
SET IDENTITY_INSERT [dbo].[genero] ON 
GO
INSERT [dbo].[genero] ([id], [nombre]) VALUES (1, N'Ficción')
GO
INSERT [dbo].[genero] ([id], [nombre]) VALUES (2, N'Historia')
GO
INSERT [dbo].[genero] ([id], [nombre]) VALUES (3, N'Ciencia Ficción')
GO
INSERT [dbo].[genero] ([id], [nombre]) VALUES (4, N'Fantasía')
GO
INSERT [dbo].[genero] ([id], [nombre]) VALUES (5, N'Misterio')
GO
SET IDENTITY_INSERT [dbo].[genero] OFF
GO
SET IDENTITY_INSERT [dbo].[genero_favorito] ON 
GO
INSERT [dbo].[genero_favorito] ([id], [id_usuario], [id_genero]) VALUES (3, 1, 5)
GO
INSERT [dbo].[genero_favorito] ([id], [id_usuario], [id_genero]) VALUES (4, 2, 2)
GO
INSERT [dbo].[genero_favorito] ([id], [id_usuario], [id_genero]) VALUES (5, 2, 4)
GO
INSERT [dbo].[genero_favorito] ([id], [id_usuario], [id_genero]) VALUES (6, 3, 1)
GO
INSERT [dbo].[genero_favorito] ([id], [id_usuario], [id_genero]) VALUES (7, 1, 2)
GO
INSERT [dbo].[genero_favorito] ([id], [id_usuario], [id_genero]) VALUES (10, 1, 1)
GO
INSERT [dbo].[genero_favorito] ([id], [id_usuario], [id_genero]) VALUES (12, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[genero_favorito] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 
GO
INSERT [dbo].[usuario] ([id], [username], [correo], [password]) VALUES (1, N'ruben', N'ruben@example.com', N'ruben')
GO
INSERT [dbo].[usuario] ([id], [username], [correo], [password]) VALUES (2, N'arturo', N'maria@example.com', N'arturo123')
GO
INSERT [dbo].[usuario] ([id], [username], [correo], [password]) VALUES (3, N'ivonne', N'juan@example.com', N'ivonne123')
GO
INSERT [dbo].[usuario] ([id], [username], [correo], [password]) VALUES (4, N'jesus', N'ejemplo@example.com', N'jesus')
GO
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
ALTER TABLE [dbo].[catalogo]  WITH CHECK ADD FOREIGN KEY([id_genero])
REFERENCES [dbo].[genero] ([id])
GO
ALTER TABLE [dbo].[contenido_eliminado]  WITH CHECK ADD FOREIGN KEY([id_genero])
REFERENCES [dbo].[genero] ([id])
GO
ALTER TABLE [dbo].[contenido_eliminado]  WITH CHECK ADD FOREIGN KEY([id_libro])
REFERENCES [dbo].[catalogo] ([id])
GO
ALTER TABLE [dbo].[contenido_eliminado]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[contenido_favorito]  WITH CHECK ADD FOREIGN KEY([id_genero])
REFERENCES [dbo].[genero] ([id])
GO
ALTER TABLE [dbo].[contenido_favorito]  WITH CHECK ADD FOREIGN KEY([id_libro])
REFERENCES [dbo].[catalogo] ([id])
GO
ALTER TABLE [dbo].[contenido_favorito]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[contenido_leer_mas_tarde]  WITH CHECK ADD FOREIGN KEY([id_genero])
REFERENCES [dbo].[genero] ([id])
GO
ALTER TABLE [dbo].[contenido_leer_mas_tarde]  WITH CHECK ADD FOREIGN KEY([id_libro])
REFERENCES [dbo].[catalogo] ([id])
GO
ALTER TABLE [dbo].[contenido_leer_mas_tarde]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[contenido_leido]  WITH CHECK ADD FOREIGN KEY([id_genero])
REFERENCES [dbo].[genero] ([id])
GO
ALTER TABLE [dbo].[contenido_leido]  WITH CHECK ADD FOREIGN KEY([id_libro])
REFERENCES [dbo].[catalogo] ([id])
GO
ALTER TABLE [dbo].[contenido_leido]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[genero_favorito]  WITH CHECK ADD FOREIGN KEY([id_genero])
REFERENCES [dbo].[genero] ([id])
GO
ALTER TABLE [dbo].[genero_favorito]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id])
GO
