CREATE TABLE [dbo].[Uslugi] (
    [IdUsluga] INT            IDENTITY (1, 1) NOT NULL,
    [Usluga]   NVARCHAR (800) NULL,
    CONSTRAINT [PK_Uslugi_IdUsluga] PRIMARY KEY CLUSTERED ([IdUsluga] ASC)
);

