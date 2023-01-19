#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Marques
#------------------------------------------------------------

CREATE TABLE Marques(
        Code_marque Varchar (40) NOT NULL ,
        Marque      Varchar (40) NOT NULL
	,CONSTRAINT Marques_PK PRIMARY KEY (Code_marque)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Modèle
#------------------------------------------------------------

CREATE TABLE Modele(
        Code_modele       Varchar (40) NOT NULL ,
        marque_du_modele  Varchar (40) NOT NULL ,
        Annee_modele      Date NOT NULL ,
        Couleur_du_modele Varchar (40) NOT NULL ,
        Code_marque       Varchar (40) NOT NULL
	,CONSTRAINT Modele_PK PRIMARY KEY (Code_modele)

	,CONSTRAINT Modele_Marques_FK FOREIGN KEY (Code_marque) REFERENCES Marques(Code_marque)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Catégories
#------------------------------------------------------------

CREATE TABLE Categories(
        Code_categories       Varchar (40) NOT NULL ,
        intitule_de_categorie Varchar (40) NOT NULL
	,CONSTRAINT Categories_PK PRIMARY KEY (Code_categories)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Types de pièce
#------------------------------------------------------------

CREATE TABLE Types_de_piece(
        Code_type_pieces       Varchar (40) NOT NULL ,
        reference_constructeur Varchar (40) NOT NULL ,
        prix                   Varchar (40) NOT NULL ,
        Code_categories        Varchar (40) NOT NULL
	,CONSTRAINT Types_de_piece_PK PRIMARY KEY (Code_type_pieces)

	,CONSTRAINT Types_de_piece_Categories_FK FOREIGN KEY (Code_categories) REFERENCES Categories(Code_categories)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Pièce
#------------------------------------------------------------

CREATE TABLE Piece(
        Code_piece        Varchar (40) NOT NULL ,
        etat              Varchar (40) NOT NULL ,
        Date_de_livraison Date NOT NULL ,
        Code_type_pieces  Varchar (40) NOT NULL
	,CONSTRAINT Piece_PK PRIMARY KEY (Code_piece)

	,CONSTRAINT Piece_Types_de_piece_FK FOREIGN KEY (Code_type_pieces) REFERENCES Types_de_piece(Code_type_pieces)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Convient à
#------------------------------------------------------------

CREATE TABLE Convient_a(
        Code_type_pieces Varchar (40) NOT NULL ,
        Code_modele      Varchar (40) NOT NULL
	,CONSTRAINT Convient_a_PK PRIMARY KEY (Code_type_pieces,Code_modele)

	,CONSTRAINT Convient_a_Types_de_piece_FK FOREIGN KEY (Code_type_pieces) REFERENCES Types_de_piece(Code_type_pieces)
	,CONSTRAINT Convient_a_Modele0_FK FOREIGN KEY (Code_modele) REFERENCES Modele(Code_modele)
)ENGINE=InnoDB;

