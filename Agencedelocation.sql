#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Ville
#------------------------------------------------------------

CREATE TABLE Ville(
        Code_Ville  Varchar (40) NOT NULL ,
        Nom_ville   Varchar (40) NOT NULL ,
        Code_Postal Varchar (20) NOT NULL
	,CONSTRAINT Ville_PK PRIMARY KEY (Code_Ville)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Client
#------------------------------------------------------------

CREATE TABLE Client(
        Numero_Client    Varchar (40) NOT NULL ,
        Nom_Client       Varchar (40) NOT NULL ,
        Prenom_Client    Varchar (40) NOT NULL ,
        Adresse_Client   Varchar (40) NOT NULL ,
        Telephone_Client Varchar (10) NOT NULL ,
        Code_Ville       Varchar (40) NOT NULL
	,CONSTRAINT Client_PK PRIMARY KEY (Numero_Client)

	,CONSTRAINT Client_Ville_FK FOREIGN KEY (Code_Ville) REFERENCES Ville(Code_Ville)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Immeuble 
#------------------------------------------------------------

CREATE TABLE Immeuble(
        Num_Immeuble    Varchar (40) NOT NULL ,
        Type_D_immeuble Varchar (40) NOT NULL ,
        taxe            Varchar (40) NOT NULL ,
        Code_Ville      Varchar (40) NOT NULL
	,CONSTRAINT Immeuble_PK PRIMARY KEY (Num_Immeuble)

	,CONSTRAINT Immeuble_Ville_FK FOREIGN KEY (Code_Ville) REFERENCES Ville(Code_Ville)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Appartement
#------------------------------------------------------------

CREATE TABLE Appartement(
        Num_Apparte   Varchar (40) NOT NULL ,
        Superficie    Varchar (40) NOT NULL ,
        Etage         Varchar (40) NOT NULL ,
        Porte         Varchar (40) NOT NULL ,
        Type_dapparte Varchar (40) NOT NULL ,
        Num_Immeuble  Varchar (40) NOT NULL
	,CONSTRAINT Appartement_PK PRIMARY KEY (Num_Apparte)

	,CONSTRAINT Appartement_Immeuble_FK FOREIGN KEY (Num_Immeuble) REFERENCES Immeuble(Num_Immeuble)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Louer
#------------------------------------------------------------

CREATE TABLE Louer(
        Num_Apparte      Varchar (40) NOT NULL ,
        Numero_Client    Varchar (40) NOT NULL ,
        Date_Signature   Date NOT NULL ,
        Date_resiliation Date NOT NULL
	,CONSTRAINT Louer_PK PRIMARY KEY (Num_Apparte,Numero_Client)

	,CONSTRAINT Louer_Appartement_FK FOREIGN KEY (Num_Apparte) REFERENCES Appartement(Num_Apparte)
	,CONSTRAINT Louer_Client0_FK FOREIGN KEY (Numero_Client) REFERENCES Client(Numero_Client)
)ENGINE=InnoDB;

