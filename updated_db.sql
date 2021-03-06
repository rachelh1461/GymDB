USE [GymDB]
GO
/****** Object:  Table [dbo].[ClosedGroupes]    Script Date: 26/11/2020 14:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosedGroupes](
	[team_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [int] NOT NULL,
	[day] [text] NOT NULL,
	[trainer_id] [int] NULL,
	[gender] [nchar](10) NULL,
	[actual_capacity] [int] NULL,
	[status] [nchar](10) NULL,
	[time] [time](7) NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[team_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 26/11/2020 14:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NOT NULL,
	[id_number] [nchar](30) NULL,
	[email] [varchar](50) NULL,
	[phone] [nchar](10) NOT NULL,
	[user_name] [nchar](10) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FitnessLessons]    Script Date: 26/11/2020 14:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FitnessLessons](
	[lesson_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [int] NOT NULL,
	[day] [nchar](10) NOT NULL,
	[time] [time](7) NOT NULL,
	[trainer_id] [int] NOT NULL,
	[gender] [nchar](10) NULL,
	[actual_capacity] [int] NOT NULL,
	[status] [nchar](10) NOT NULL,
 CONSTRAINT [PK_FitnessClasses] PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FitnessTrainers]    Script Date: 26/11/2020 14:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FitnessTrainers](
	[guide_id] [int] IDENTITY(1,1) NOT NULL,
	[specialty] [nvarchar](50) NOT NULL,
	[phone_num] [nvarchar](10) NOT NULL,
	[email] [nvarchar](30) NULL,
	[name] [nchar](30) NOT NULL,
 CONSTRAINT [PK_SportGuides] PRIMARY KEY CLUSTERED 
(
	[guide_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presence]    Script Date: 26/11/2020 14:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presence](
	[sub_id] [int] NOT NULL,
	[lesson_id] [int] NOT NULL,
 CONSTRAINT [PK_Presence] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchases]    Script Date: 26/11/2020 14:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchases](
	[customer_id] [int] NOT NULL,
	[sub_id] [int] NULL,
	[status] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscriptionsTypes]    Script Date: 26/11/2020 14:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionsTypes](
	[sub_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NULL,
	[duration] [int] NULL,
	[lessons_num] [int] NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_Subscription_type] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemMessege]    Script Date: 26/11/2020 14:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemMessege](
	[Messege_id] [int] IDENTITY(1,1) NOT NULL,
	[Messege_Content] [text] NULL,
	[Creation_date] [datetime] NULL,
	[deletion_date] [datetime] NULL,
 CONSTRAINT [PK_SystemMesseges] PRIMARY KEY CLUSTERED 
(
	[Messege_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Training]    Script Date: 26/11/2020 14:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Training](
	[training_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [text] NULL,
	[quota] [int] NULL,
 CONSTRAINT [PK_Training] PRIMARY KEY CLUSTERED 
(
	[training_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClosedGroupes] ON 

INSERT [dbo].[ClosedGroupes] ([team_id], [name], [day], [trainer_id], [gender], [actual_capacity], [status], [time]) VALUES (3, 6, N'חמישי', 8, N'נשים      ', 15, N'מלא       ', CAST(N'20:00:00' AS Time))
INSERT [dbo].[ClosedGroupes] ([team_id], [name], [day], [trainer_id], [gender], [actual_capacity], [status], [time]) VALUES (10, 6, N'רביעי', 8, N'נשים      ', 13, N'פנוי      ', CAST(N'20:30:00' AS Time))
SET IDENTITY_INSERT [dbo].[ClosedGroupes] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (1, N'חנה לוי             ', N'366495218                     ', N'chana4578@gmail.com', N'0547813462', N'chana     ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (3, N'מיכל אייזנשטרן      ', N'225475681                     ', N'michal20@gmail.com', N'0502379164', N'michal    ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (7, N'תמר כהן             ', N'396598763                     ', N'tamarcohen@gmail.com', N'0521348216', N'tamar     ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (8, N'רחלי בורנשטיין      ', N'224486175                     ', N'rachelib@gmail.com', N'039216371 ', N'racheli   ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (9, N'שירה קדוש           ', N'259787134                     ', N'skadosh17@gmail', N'0543261717', N'shira     ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (10, N'יעקוב עמר           ', N'221145778                     ', N'yaakovamaar@gmail.com', N'0521646731', N'yaakov    ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (11, N'משה גרוס            ', N'655947801                     ', N'moshegross@gmail.com', N'0543631892', N'moshe     ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (12, N'נפתלי קייקוב        ', N'364557981                     ', N'naftalik7643@gmail.com', N'0523617643', N'naftali   ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (13, N'דנה יעקובזון        ', N'805771354                     ', N'danay6416@gmail.com', N'0553296416', N'dana      ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (14, N'רפאל פריד           ', N'289974612                     ', N'refael-frid@gmail.com', N'0532649870', N'refael    ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (15, N'מוריה מדינה         ', N'874331678                     ', N'moriyam11@gmail.com', N'0521478911', N'moriya    ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (16, N'חגית רפאלי          ', N'154116552                     ', N'chrefaeli8137@gmail.com', N'0548928137', N'chagit    ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (17, N'יעלי קייקוב         ', N'871355464                     ', N'yaelik18@gmail.com', N'0503213614', N'yaeli     ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (19, N'אבי וייס            ', N'354984461                     ', N'aviweiss@gmail.com', N'0528963131', N'avi-weiss ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (20, N'אביה שמואל          ', N'465735159                     ', N'aviashmuel@gmail.com', N'0503139747', N'avia      ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (21, N'שירה כהן            ', N'159728643                     ', N'shiracohen@gmail.com', N'0554798283', N'shirac    ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (22, N'תמר קוקיס           ', N'258546123                     ', N'tamark6217@gmail.com', N'0542316217', N'tamarkukis')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (23, N'מיכל כץ             ', N'267915648                     ', N'michalkatz25@gmail.com', N'0523134679', N'michalk   ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (24, N'אהרון זילבר         ', N'894671321                     ', N'aharonz0503646864@gmail.com', N'0503646864', N'aharon    ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (25, N'זיו בר              ', N'258746578                     ', N'zivbar7987@gmail.com', N'0503217987', N'ziv       ')
INSERT [dbo].[Customers] ([customer_id], [name], [id_number], [email], [phone], [user_name]) VALUES (26, N'גל אהרון            ', N'254678423                     ', N'galaharon@gmail.com', N'0556897847', N'gal       ')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[FitnessLessons] ON 

INSERT [dbo].[FitnessLessons] ([lesson_id], [name], [day], [time], [trainer_id], [gender], [actual_capacity], [status]) VALUES (1, 1, N'ראשון     ', CAST(N'17:00:00' AS Time), 6, N'נשים      ', 0, N'פנוי      ')
INSERT [dbo].[FitnessLessons] ([lesson_id], [name], [day], [time], [trainer_id], [gender], [actual_capacity], [status]) VALUES (2, 2, N'רביעי     ', CAST(N'19:00:00' AS Time), 1, N'נשים      ', 0, N'פנוי      ')
INSERT [dbo].[FitnessLessons] ([lesson_id], [name], [day], [time], [trainer_id], [gender], [actual_capacity], [status]) VALUES (3, 1, N'ראשון     ', CAST(N'18:00:00' AS Time), 6, N'נשים      ', 0, N'פנוי      ')
INSERT [dbo].[FitnessLessons] ([lesson_id], [name], [day], [time], [trainer_id], [gender], [actual_capacity], [status]) VALUES (4, 3, N'שני       ', CAST(N'07:00:00' AS Time), 2, N'גברים     ', 0, N'פנוי      ')
INSERT [dbo].[FitnessLessons] ([lesson_id], [name], [day], [time], [trainer_id], [gender], [actual_capacity], [status]) VALUES (5, 4, N'ראשון     ', CAST(N'21:00:00' AS Time), 2, N'גברים     ', 0, N'פנוי      ')
INSERT [dbo].[FitnessLessons] ([lesson_id], [name], [day], [time], [trainer_id], [gender], [actual_capacity], [status]) VALUES (6, 4, N'שני       ', CAST(N'20:00:00' AS Time), 7, N'נשים      ', 0, N'פנוי      ')
INSERT [dbo].[FitnessLessons] ([lesson_id], [name], [day], [time], [trainer_id], [gender], [actual_capacity], [status]) VALUES (7, 5, N'רביעי     ', CAST(N'07:00:00' AS Time), 4, N'נשים      ', 0, N'פנוי      ')
SET IDENTITY_INSERT [dbo].[FitnessLessons] OFF
GO
SET IDENTITY_INSERT [dbo].[FitnessTrainers] ON 

INSERT [dbo].[FitnessTrainers] ([guide_id], [specialty], [phone_num], [email], [name]) VALUES (1, N'עיצוב וחיטוב', N'0556481324', N'irisgym@gmal.com', N'איריס בן חמו                  ')
INSERT [dbo].[FitnessTrainers] ([guide_id], [specialty], [phone_num], [email], [name]) VALUES (2, N'איגרוף וקיק בוקסינג', N'0536149412', N'reshefohad@gmail.com', N'אוהד רשף                      ')
INSERT [dbo].[FitnessTrainers] ([guide_id], [specialty], [phone_num], [email], [name]) VALUES (3, N'היפ הופ וזומבה', N'0521649817', N'ilanitkatz@gmail.com', N'אילנית כץ                     ')
INSERT [dbo].[FitnessTrainers] ([guide_id], [specialty], [phone_num], [email], [name]) VALUES (4, N'יוגה', N'0545698751', N'rachelb8751@gmail.com', N'רחל ברנט                      ')
INSERT [dbo].[FitnessTrainers] ([guide_id], [specialty], [phone_num], [email], [name]) VALUES (5, N'trx מכשירים ו', N'0547167998', N'yaakovp_energym@gmail.com', N'יעקוב פלד                     ')
INSERT [dbo].[FitnessTrainers] ([guide_id], [specialty], [phone_num], [email], [name]) VALUES (6, N'אירובי', N'0532164813', N'sara-aerobic@gmail.com', N'שרה ברנפלד                    ')
INSERT [dbo].[FitnessTrainers] ([guide_id], [specialty], [phone_num], [email], [name]) VALUES (7, N'קיק בוקסינג', N'0545986132', N'annabrodesky@gmail.com', N'אנה ברודסקי                   ')
INSERT [dbo].[FitnessTrainers] ([guide_id], [specialty], [phone_num], [email], [name]) VALUES (8, N'פילאטיס', N'0543867120', N'sara7120@gmail.com', N'שרה כהנמן                     ')
SET IDENTITY_INSERT [dbo].[FitnessTrainers] OFF
GO
INSERT [dbo].[Purchases] ([customer_id], [sub_id], [status]) VALUES (1, 7, N'פעיל      ')
INSERT [dbo].[Purchases] ([customer_id], [sub_id], [status]) VALUES (3, 5, N'פג תוקף   ')
INSERT [dbo].[Purchases] ([customer_id], [sub_id], [status]) VALUES (10, NULL, NULL)
INSERT [dbo].[Purchases] ([customer_id], [sub_id], [status]) VALUES (11, NULL, NULL)
INSERT [dbo].[Purchases] ([customer_id], [sub_id], [status]) VALUES (20, NULL, NULL)
INSERT [dbo].[Purchases] ([customer_id], [sub_id], [status]) VALUES (17, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SubscriptionsTypes] ON 

INSERT [dbo].[SubscriptionsTypes] ([sub_id], [name], [duration], [lessons_num], [price]) VALUES (1, N'מנוי מוגבל          ', 24, 3, NULL)
INSERT [dbo].[SubscriptionsTypes] ([sub_id], [name], [duration], [lessons_num], [price]) VALUES (4, N'מנוי מוגבל          ', 48, 3, NULL)
INSERT [dbo].[SubscriptionsTypes] ([sub_id], [name], [duration], [lessons_num], [price]) VALUES (5, N'מנוי חופשי          ', 24, NULL, 500)
INSERT [dbo].[SubscriptionsTypes] ([sub_id], [name], [duration], [lessons_num], [price]) VALUES (6, N'מנוי חופשי          ', 48, NULL, NULL)
INSERT [dbo].[SubscriptionsTypes] ([sub_id], [name], [duration], [lessons_num], [price]) VALUES (7, N'מנוי סגור           ', 48, 1, NULL)
INSERT [dbo].[SubscriptionsTypes] ([sub_id], [name], [duration], [lessons_num], [price]) VALUES (8, N'מנוי סגור           ', 24, 1, NULL)
SET IDENTITY_INSERT [dbo].[SubscriptionsTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[SystemMessege] ON 

INSERT [dbo].[SystemMessege] ([Messege_id], [Messege_Content], [Creation_date], [deletion_date]) VALUES (1, NULL, CAST(N'2020-11-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SystemMessege] ([Messege_id], [Messege_Content], [Creation_date], [deletion_date]) VALUES (2, NULL, CAST(N'2020-10-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SystemMessege] ([Messege_id], [Messege_Content], [Creation_date], [deletion_date]) VALUES (3, NULL, CAST(N'2020-09-23T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[SystemMessege] OFF
GO
SET IDENTITY_INSERT [dbo].[Training] ON 

INSERT [dbo].[Training] ([training_id], [name], [description], [quota]) VALUES (1, N'אירובי', NULL, 15)
INSERT [dbo].[Training] ([training_id], [name], [description], [quota]) VALUES (2, N'עיצוב וחיטוב', N'הקניית הרגלי עבודה נכונים תוך כדי בניייה נכונה של השריר', 15)
INSERT [dbo].[Training] ([training_id], [name], [description], [quota]) VALUES (3, N'איגרוף', NULL, 10)
INSERT [dbo].[Training] ([training_id], [name], [description], [quota]) VALUES (4, N'קיק בוקסינג למתחילים', NULL, 10)
INSERT [dbo].[Training] ([training_id], [name], [description], [quota]) VALUES (5, N'יוגה', N'השילוב האידאלי והמושלם בין הגוף והנפש. החיבור מתבצע באמצעות נשימה, תנועות הרפיה וריכוז', 17)
INSERT [dbo].[Training] ([training_id], [name], [description], [quota]) VALUES (6, N'פילאטיס', N'שיעור פילאטיס המעניק עוצמה חוויתית גבוהה לשיפור הכוח, הגמישות והיציבה תוך זרימה תנועתית', 20)
SET IDENTITY_INSERT [dbo].[Training] OFF
GO
ALTER TABLE [dbo].[ClosedGroupes]  WITH CHECK ADD  CONSTRAINT [FK_ClosedGroupes_FitnessLessons] FOREIGN KEY([name])
REFERENCES [dbo].[FitnessLessons] ([lesson_id])
GO
ALTER TABLE [dbo].[ClosedGroupes] CHECK CONSTRAINT [FK_ClosedGroupes_FitnessLessons]
GO
ALTER TABLE [dbo].[ClosedGroupes]  WITH CHECK ADD  CONSTRAINT [FK_ClosedGroupes_FitnessTrainers] FOREIGN KEY([trainer_id])
REFERENCES [dbo].[FitnessTrainers] ([guide_id])
GO
ALTER TABLE [dbo].[ClosedGroupes] CHECK CONSTRAINT [FK_ClosedGroupes_FitnessTrainers]
GO
ALTER TABLE [dbo].[FitnessLessons]  WITH CHECK ADD  CONSTRAINT [FK_FitnessLessons_FitnessTrainers] FOREIGN KEY([trainer_id])
REFERENCES [dbo].[FitnessTrainers] ([guide_id])
GO
ALTER TABLE [dbo].[FitnessLessons] CHECK CONSTRAINT [FK_FitnessLessons_FitnessTrainers]
GO
ALTER TABLE [dbo].[FitnessLessons]  WITH CHECK ADD  CONSTRAINT [FK_FitnessLessons_Training] FOREIGN KEY([name])
REFERENCES [dbo].[Training] ([training_id])
GO
ALTER TABLE [dbo].[FitnessLessons] CHECK CONSTRAINT [FK_FitnessLessons_Training]
GO
ALTER TABLE [dbo].[Presence]  WITH CHECK ADD  CONSTRAINT [FK_Presence_FitnessLessons1] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[FitnessLessons] ([lesson_id])
GO
ALTER TABLE [dbo].[Presence] CHECK CONSTRAINT [FK_Presence_FitnessLessons1]
GO
