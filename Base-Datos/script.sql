USE [PilMoney]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 08/10/2021 11:42:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[idCompra] [int] IDENTITY(1,1) NOT NULL,
	[Importe] [float] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[CVU] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[idCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 08/10/2021 11:42:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contactos](
	[CVUContacto] [varchar](50) NULL,
	[AliasContacto] [varchar](50) NULL,
	[CVU] [varchar](50) NOT NULL,
	[idContacto] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Contactos] PRIMARY KEY CLUSTERED 
(
	[idContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuentas]    Script Date: 08/10/2021 11:42:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuentas](
	[CVU] [varchar](50) NOT NULL,
	[Saldo] [float] NULL,
	[Alias] [nvarchar](50) NOT NULL,
	[TipoDeCaja] [nvarchar](50) NOT NULL,
	[IdTipoMoneda] [int] NOT NULL,
	[CUIL] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED 
(
	[CVU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Depositos]    Script Date: 08/10/2021 11:42:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Depositos](
	[idDeposito] [int] IDENTITY(1,1) NOT NULL,
	[Importe] [float] NOT NULL,
	[CVU] [varchar](50) NULL,
	[Alias] [nvarchar](50) NULL,
 CONSTRAINT [PK_Depositos] PRIMARY KEY CLUSTERED 
(
	[idDeposito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inversiones]    Script Date: 08/10/2021 11:42:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inversiones](
	[idInversion] [int] IDENTITY(1,1) NOT NULL,
	[tipoInversion] [varchar](50) NOT NULL,
	[Importe] [float] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Renovacion] [tinyint] NULL,
	[CVU] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Inversion] PRIMARY KEY CLUSTERED 
(
	[idInversion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 08/10/2021 11:42:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[idServicio] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[fechaVencimiento] [datetime] NOT NULL,
	[fechaPago] [datetime] NULL,
	[Importe] [float] NOT NULL,
	[Entidad] [varchar](50) NULL,
	[Estado] [tinyint] NOT NULL,
	[CVU] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[idServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMonedas]    Script Date: 08/10/2021 11:42:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMonedas](
	[idTipoMoneda] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoMoneda] PRIMARY KEY CLUSTERED 
(
	[idTipoMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transferencias]    Script Date: 08/10/2021 11:42:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transferencias](
	[idTransferencia] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Importe] [float] NOT NULL,
	[idContacto] [int] NULL,
	[CVU] [varchar](50) NOT NULL,
	[CVUDestino] [varchar](50) NULL,
	[AliasDestino] [varchar](50) NULL,
 CONSTRAINT [PK_Transferencia] PRIMARY KEY CLUSTERED 
(
	[idTransferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 08/10/2021 11:42:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[CUIL] [varchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Contraseña] [nvarchar](max) NULL,
	[NombreCompleto] [varchar](50) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[ImagenDNI] [varchar](max) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[CUIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 08/10/2021 11:42:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[Importe] [float] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[CVU] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Compras] ON 
GO
INSERT [dbo].[Compras] ([idCompra], [Importe], [Fecha], [CVU]) VALUES (1, 1300, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'123')
GO
INSERT [dbo].[Compras] ([idCompra], [Importe], [Fecha], [CVU]) VALUES (2, 1400, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'1234')
GO
INSERT [dbo].[Compras] ([idCompra], [Importe], [Fecha], [CVU]) VALUES (3, 1500, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'12345')
GO
INSERT [dbo].[Compras] ([idCompra], [Importe], [Fecha], [CVU]) VALUES (4, 12345, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'123456')
GO
INSERT [dbo].[Compras] ([idCompra], [Importe], [Fecha], [CVU]) VALUES (5, 20000, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'1234567')
GO
SET IDENTITY_INSERT [dbo].[Compras] OFF
GO
SET IDENTITY_INSERT [dbo].[Contactos] ON 
GO
INSERT [dbo].[Contactos] ([CVUContacto], [AliasContacto], [CVU], [idContacto]) VALUES (N'123', N'alias-prueba1', N'123', 1)
GO
INSERT [dbo].[Contactos] ([CVUContacto], [AliasContacto], [CVU], [idContacto]) VALUES (N'1234', N'alias-prueba2', N'1234', 3)
GO
INSERT [dbo].[Contactos] ([CVUContacto], [AliasContacto], [CVU], [idContacto]) VALUES (N'12345', N'alias-prueba3', N'12345', 5)
GO
SET IDENTITY_INSERT [dbo].[Contactos] OFF
GO
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'123', 0, N'alias.de.prueba', N'ahorro', 2, N'2314141341')
GO
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'1234', 0, N'alias.de.test1', N'ahorro', 1, N'202020020')
GO
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'12345', 0, N'alias.de.test', N'cuenta corriente', 3, N'202020020')
GO
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'123456', 0, N'alias.de.test2', N'ahorro', 4, N'1234567657')
GO
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'1234567', 0, N'alias.de.test3', N'ahorro', 2, N'1234566879')
GO
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'12345678', 0, N'alias.de.test4', N'ahorro', 5, N'1234568979')
GO
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'124', 0, N'alias.de.test5', N'corriente', 2, N'1234568979')
GO
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'125', 0, N'alias.de.test6', N'ahorro', 5, N'1234568979')
GO
SET IDENTITY_INSERT [dbo].[Depositos] ON 
GO
INSERT [dbo].[Depositos] ([idDeposito], [Importe], [CVU], [Alias]) VALUES (1, 20000, N'123', N'alias.de.prueba1')
GO
INSERT [dbo].[Depositos] ([idDeposito], [Importe], [CVU], [Alias]) VALUES (2, 30000, N'1234', N'alias.de.prueba2')
GO
INSERT [dbo].[Depositos] ([idDeposito], [Importe], [CVU], [Alias]) VALUES (3, 2000012, N'12345', N'alias.de.prueba3')
GO
INSERT [dbo].[Depositos] ([idDeposito], [Importe], [CVU], [Alias]) VALUES (4, 123455, N'123', N'alias.de.prueba4')
GO
INSERT [dbo].[Depositos] ([idDeposito], [Importe], [CVU], [Alias]) VALUES (5, 123345, N'123456', N'alias.de.prueba')
GO
SET IDENTITY_INSERT [dbo].[Depositos] OFF
GO
SET IDENTITY_INSERT [dbo].[Inversiones] ON 
GO
INSERT [dbo].[Inversiones] ([idInversion], [tipoInversion], [Importe], [Fecha], [Renovacion], [CVU]) VALUES (1, N'plazofijo', 13000, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 30, N'123')
GO
INSERT [dbo].[Inversiones] ([idInversion], [tipoInversion], [Importe], [Fecha], [Renovacion], [CVU]) VALUES (2, N'fci', 123123, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 60, N'1234')
GO
INSERT [dbo].[Inversiones] ([idInversion], [tipoInversion], [Importe], [Fecha], [Renovacion], [CVU]) VALUES (4, N'plazofijo', 123123, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 90, N'12345')
GO
INSERT [dbo].[Inversiones] ([idInversion], [tipoInversion], [Importe], [Fecha], [Renovacion], [CVU]) VALUES (5, N'fci', 1231234, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 30, N'123456')
GO
SET IDENTITY_INSERT [dbo].[Inversiones] OFF
GO
SET IDENTITY_INSERT [dbo].[Servicios] ON 
GO
INSERT [dbo].[Servicios] ([idServicio], [Descripcion], [fechaVencimiento], [fechaPago], [Importe], [Entidad], [Estado], [CVU]) VALUES (1, N'xxxxx', CAST(N'2021-08-04T00:00:00.000' AS DateTime), CAST(N'2021-08-04T00:00:00.000' AS DateTime), 1300, N'x', 0, N'123')
GO
INSERT [dbo].[Servicios] ([idServicio], [Descripcion], [fechaVencimiento], [fechaPago], [Importe], [Entidad], [Estado], [CVU]) VALUES (2, N'xxxx', CAST(N'2021-08-04T00:00:00.000' AS DateTime), CAST(N'2021-08-04T00:00:00.000' AS DateTime), 123123, N'xxxx', 1, N'1234')
GO
INSERT [dbo].[Servicios] ([idServicio], [Descripcion], [fechaVencimiento], [fechaPago], [Importe], [Entidad], [Estado], [CVU]) VALUES (3, N'xxx', CAST(N'2021-08-04T00:00:00.000' AS DateTime), CAST(N'2021-08-04T00:00:00.000' AS DateTime), 123123, N'xxxx', 1, N'1234')
GO
INSERT [dbo].[Servicios] ([idServicio], [Descripcion], [fechaVencimiento], [fechaPago], [Importe], [Entidad], [Estado], [CVU]) VALUES (4, N'xx', CAST(N'2021-08-04T00:00:00.000' AS DateTime), CAST(N'2021-08-04T00:00:00.000' AS DateTime), 123123, N'xxxx', 0, N'123')
GO
INSERT [dbo].[Servicios] ([idServicio], [Descripcion], [fechaVencimiento], [fechaPago], [Importe], [Entidad], [Estado], [CVU]) VALUES (5, N'x', CAST(N'2021-08-04T00:00:00.000' AS DateTime), CAST(N'2021-08-04T00:00:00.000' AS DateTime), 123123, N'xxx', 1, N'123')
GO
SET IDENTITY_INSERT [dbo].[Servicios] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoMonedas] ON 
GO
INSERT [dbo].[TipoMonedas] ([idTipoMoneda], [nombre]) VALUES (2, N'ARS')
GO
INSERT [dbo].[TipoMonedas] ([idTipoMoneda], [nombre]) VALUES (3, N'BIT')
GO
INSERT [dbo].[TipoMonedas] ([idTipoMoneda], [nombre]) VALUES (5, N'ETH')
GO
INSERT [dbo].[TipoMonedas] ([idTipoMoneda], [nombre]) VALUES (4, N'EUR')
GO
INSERT [dbo].[TipoMonedas] ([idTipoMoneda], [nombre]) VALUES (1, N'USD')
GO
SET IDENTITY_INSERT [dbo].[TipoMonedas] OFF
GO
SET IDENTITY_INSERT [dbo].[Transferencias] ON 
GO
INSERT [dbo].[Transferencias] ([idTransferencia], [Fecha], [Importe], [idContacto], [CVU], [CVUDestino], [AliasDestino]) VALUES (1, CAST(N'2021-08-03T00:00:00.000' AS DateTime), 13000, 1, N'123', N'1234', N'alias.prueba1')
GO
INSERT [dbo].[Transferencias] ([idTransferencia], [Fecha], [Importe], [idContacto], [CVU], [CVUDestino], [AliasDestino]) VALUES (2, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 123123, 3, N'123', N'12345', N'alias.prueba2')
GO
INSERT [dbo].[Transferencias] ([idTransferencia], [Fecha], [Importe], [idContacto], [CVU], [CVUDestino], [AliasDestino]) VALUES (3, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 123123, 5, N'12345', N'12345', N'alias.prueba3')
GO
SET IDENTITY_INSERT [dbo].[Transferencias] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([CUIL], [Email], [Contraseña], [NombreCompleto], [FechaNacimiento], [Telefono], [idUsuario], [ImagenDNI]) VALUES (N'1231231233', N'test5@test.com', N'143456', N'AlanRios', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'123455978', 2, NULL)
GO
INSERT [dbo].[Usuarios] ([CUIL], [Email], [Contraseña], [NombreCompleto], [FechaNacimiento], [Telefono], [idUsuario], [ImagenDNI]) VALUES (N'1234566879', N'test3@test.com', N'1234567', N'test3 test', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'123456687', 3, NULL)
GO
INSERT [dbo].[Usuarios] ([CUIL], [Email], [Contraseña], [NombreCompleto], [FechaNacimiento], [Telefono], [idUsuario], [ImagenDNI]) VALUES (N'1234567657', N'test2@test.com', N'1234567', N'test2 test', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'123456789', 4, NULL)
GO
INSERT [dbo].[Usuarios] ([CUIL], [Email], [Contraseña], [NombreCompleto], [FechaNacimiento], [Telefono], [idUsuario], [ImagenDNI]) VALUES (N'1234568979', N'test4@test.com', N'123456876', N'test4 test', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'12345687', 5, NULL)
GO
INSERT [dbo].[Usuarios] ([CUIL], [Email], [Contraseña], [NombreCompleto], [FechaNacimiento], [Telefono], [idUsuario], [ImagenDNI]) VALUES (N'202020020', N'test5@test.com', N'123458', N'Esteban', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'127456876', 1, NULL)
GO
INSERT [dbo].[Usuarios] ([CUIL], [Email], [Contraseña], [NombreCompleto], [FechaNacimiento], [Telefono], [idUsuario], [ImagenDNI]) VALUES (N'2314141341', N'pil4a@gmail.com', N'12345678', N'Admin', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'123456789', 6, NULL)
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Venta] ON 
GO
INSERT [dbo].[Venta] ([idVenta], [Importe], [Fecha], [CVU]) VALUES (1, 2000, CAST(N'2021-08-03T00:00:00.000' AS DateTime), N'123')
GO
INSERT [dbo].[Venta] ([idVenta], [Importe], [Fecha], [CVU]) VALUES (2, 123123, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'1234')
GO
INSERT [dbo].[Venta] ([idVenta], [Importe], [Fecha], [CVU]) VALUES (3, 123123, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'12345')
GO
INSERT [dbo].[Venta] ([idVenta], [Importe], [Fecha], [CVU]) VALUES (4, 123123, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'123456')
GO
INSERT [dbo].[Venta] ([idVenta], [Importe], [Fecha], [CVU]) VALUES (5, 1231231, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'1234')
GO
SET IDENTITY_INSERT [dbo].[Venta] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Contactos]    Script Date: 08/10/2021 11:42:53 a. m. ******/
ALTER TABLE [dbo].[Contactos] ADD  CONSTRAINT [IX_Contactos] UNIQUE NONCLUSTERED 
(
	[CVUContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Contactos_1]    Script Date: 08/10/2021 11:42:53 a. m. ******/
ALTER TABLE [dbo].[Contactos] ADD  CONSTRAINT [IX_Contactos_1] UNIQUE NONCLUSTERED 
(
	[AliasContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Cuentas_1]    Script Date: 08/10/2021 11:42:53 a. m. ******/
ALTER TABLE [dbo].[Cuentas] ADD  CONSTRAINT [IX_Cuentas_1] UNIQUE NONCLUSTERED 
(
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TipoMonedas]    Script Date: 08/10/2021 11:42:53 a. m. ******/
ALTER TABLE [dbo].[TipoMonedas] ADD  CONSTRAINT [IX_TipoMonedas] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cuentas] ADD  CONSTRAINT [DF_Cuenta_Saldo]  DEFAULT ((0.00)) FOR [Saldo]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Cuentas]
GO
ALTER TABLE [dbo].[Contactos]  WITH CHECK ADD  CONSTRAINT [FK_Contactos_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contactos] CHECK CONSTRAINT [FK_Contactos_Cuentas]
GO
ALTER TABLE [dbo].[Cuentas]  WITH CHECK ADD  CONSTRAINT [FK_Cuentas_TipoMonedas1] FOREIGN KEY([IdTipoMoneda])
REFERENCES [dbo].[TipoMonedas] ([idTipoMoneda])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cuentas] CHECK CONSTRAINT [FK_Cuentas_TipoMonedas1]
GO
ALTER TABLE [dbo].[Cuentas]  WITH CHECK ADD  CONSTRAINT [FK_Cuentas_Usuarios] FOREIGN KEY([CUIL])
REFERENCES [dbo].[Usuarios] ([CUIL])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cuentas] CHECK CONSTRAINT [FK_Cuentas_Usuarios]
GO
ALTER TABLE [dbo].[Depositos]  WITH CHECK ADD  CONSTRAINT [FK_Depositos_Cuentas1] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
GO
ALTER TABLE [dbo].[Depositos] CHECK CONSTRAINT [FK_Depositos_Cuentas1]
GO
ALTER TABLE [dbo].[Inversiones]  WITH CHECK ADD  CONSTRAINT [FK_Inversiones_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inversiones] CHECK CONSTRAINT [FK_Inversiones_Cuentas]
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD  CONSTRAINT [FK_Servicios_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Servicios] CHECK CONSTRAINT [FK_Servicios_Cuentas]
GO
ALTER TABLE [dbo].[Transferencias]  WITH CHECK ADD  CONSTRAINT [FK_Transferencias_Contactos] FOREIGN KEY([idContacto])
REFERENCES [dbo].[Contactos] ([idContacto])
GO
ALTER TABLE [dbo].[Transferencias] CHECK CONSTRAINT [FK_Transferencias_Contactos]
GO
ALTER TABLE [dbo].[Transferencias]  WITH CHECK ADD  CONSTRAINT [FK_Transferencias_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transferencias] CHECK CONSTRAINT [FK_Transferencias_Cuentas]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cuentas]
GO
/****** Object:  StoredProcedure [dbo].[obtenerLogin]    Script Date: 08/10/2021 11:42:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[obtenerLogin]
  
  @NombreCompleto varchar(50),
  @Contraseña nvarchar(max)

 as

 Begin

  select NombreCompleto, Contraseña

   from Usuarios

   where NombreCompleto= @NombreCompleto AND Contraseña= @Contraseña;

   END

GO
