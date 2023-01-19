#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Rayons
#------------------------------------------------------------

CREATE TABLE Rayons(
        Code_rayon        Varchar (40) NOT NULL ,
        intitule_du_rayon Varchar (40) NOT NULL
	,CONSTRAINT Rayons_PK PRIMARY KEY (Code_rayon)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Auteurs
#------------------------------------------------------------

CREATE TABLE Auteurs(
        Code_auteur   Varchar (40) NOT NULL ,
        Nom_auteur    Varchar (40) NOT NULL ,
        Prenom_auteur Varchar (40) NOT NULL
	,CONSTRAINT Auteurs_PK PRIMARY KEY (Code_auteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Mots clés
#------------------------------------------------------------

CREATE TABLE Mots_cles(
        Code_mot Varchar (40) NOT NULL ,
        mot      Varchar (40) NOT NULL
	,CONSTRAINT Mots_cles_PK PRIMARY KEY (Code_mot)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Adhérents
#------------------------------------------------------------

CREATE TABLE Adherents(
        Code_adherent      Varchar (40) NOT NULL ,
        Nom_adherent       Varchar (40) NOT NULL ,
        prenom_adherent    Varchar (40) NOT NULL ,
        Adresse_adherent   Varchar (40) NOT NULL ,
        telephone_adherent Varchar (40) NOT NULL ,
        mail_adherent      Varchar (40) NOT NULL
	,CONSTRAINT Adherents_PK PRIMARY KEY (Code_adherent)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ouvrage
#------------------------------------------------------------

CREATE TABLE Ouvrage(
        Code_ouvrage       Varchar (40) NOT NULL ,
        Titre_de_l_ouvrage Varchar (40) NOT NULL ,
        Date_de_l_emprunt  Date NOT NULL ,
        Code_rayon         Varchar (40) NOT NULL ,
        Code_adherent      Varchar (40) NOT NULL
	,CONSTRAINT Ouvrage_PK PRIMARY KEY (Code_ouvrage)

	,CONSTRAINT Ouvrage_Rayons_FK FOREIGN KEY (Code_rayon) REFERENCES Rayons(Code_rayon)
	,CONSTRAINT Ouvrage_Adherents0_FK FOREIGN KEY (Code_adherent) REFERENCES Adherents(Code_adherent)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: L'auteur de
#------------------------------------------------------------

CREATE TABLE L_auteur_de(
        Code_ouvrage Varchar (40) NOT NULL ,
        Code_auteur  Varchar (40) NOT NULL
	,CONSTRAINT L_auteur_de_PK PRIMARY KEY (Code_ouvrage,Code_auteur)

	,CONSTRAINT L_auteur_de_Ouvrage_FK FOREIGN KEY (Code_ouvrage) REFERENCES Ouvrage(Code_ouvrage)
	,CONSTRAINT L_auteur_de_Auteurs0_FK FOREIGN KEY (Code_auteur) REFERENCES Auteurs(Code_auteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Index
#------------------------------------------------------------

CREATE TABLE Index(
        Code_ouvrage Varchar (40) NOT NULL ,
        Code_mot     Varchar (40) NOT NULL
	,CONSTRAINT Index_PK PRIMARY KEY (Code_ouvrage,Code_mot)

	,CONSTRAINT Index_Ouvrage_FK FOREIGN KEY (Code_ouvrage) REFERENCES Ouvrage(Code_ouvrage)
	,CONSTRAINT Index_Mots_cles0_FK FOREIGN KEY (Code_mot) REFERENCES Mots_cles(Code_mot)
)ENGINE=InnoDB;

