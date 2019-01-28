CREATE TABLE [dbo].[Auta] (
    [IdModel]  INT            NOT NULL,
    [Model]    NVARCHAR (200) NOT NULL,
    [Typ]      NVARCHAR (50)  NULL,
    [Nadwozie] NVARCHAR (50)  NULL,
    [Paliwo]   NVARCHAR (20)  NULL,
    [Kolor]    NVARCHAR (50)  NULL,
    [Marka]    NVARCHAR (200) NULL,
    CONSTRAINT [PK_Auta_IdModel] PRIMARY KEY CLUSTERED ([IdModel] ASC)
);

