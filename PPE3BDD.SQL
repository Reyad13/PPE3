	/*
	 ----------------------------------------------------------------------------
				 Génération d'une base de données pour
							SQL Server 2000
						   (6/12/2019 11:51:37)
	 ----------------------------------------------------------------------------
		 Nom de la base : BDDPPE3
		 Projet : Espace de travail
		 Auteur : LMC
		 Date de dernière modification : 6/12/2019 11:50:54
	 ----------------------------------------------------------------------------
	*/

	drop database BDDPPE3
	go

	/* -----------------------------------------------------------------------------
		  OUVERTURE DE LA BASE BDDPPE3
	----------------------------------------------------------------------------- */

	create database BDDPPE3
	go

	use BDDPPE3
	go



	/* -----------------------------------------------------------------------------
		  TABLE : TYPEPUBLIC
	----------------------------------------------------------------------------- */

	create table TYPEPUBLIC
	  (
		 TYPEPUBLIC varchar(25)  not null  
		 ,
		 constraint PK_TYPEPUBLIC primary key (TYPEPUBLIC)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : ASSOCIATION
	----------------------------------------------------------------------------- */

	create table ASSOCIATION
	  (
		 IDASSOCIATION int  not null  IDENTITY(1,1) ,
		 IDMISSION int  not null  ,
		 IDPERSONNE int  not null  ,
		 NOM varchar(25)  null  
		 ,
		 constraint PK_ASSOCIATION primary key (IDASSOCIATION)
	  ) 
	go



	/*      INDEX DE ASSOCIATION      */



	/* -----------------------------------------------------------------------------
		  TABLE : PERSONNE
	----------------------------------------------------------------------------- */

	create table PERSONNE
	  (
		 IDPERSONNE int  not null IDENTITY(1,1) ,
		 NOM varchar(25)  null  ,
		 PRENOM varchar(25)  null  ,
		 ADRESSE varchar(128)  null  ,
		 CODEPOSTAL char(5)  null  ,
		 VILLE varchar(128)  null  ,
		 TEL int  null  
		 ,
		 constraint PK_PERSONNE primary key (IDPERSONNE)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : ACTIONS
	----------------------------------------------------------------------------- */

	create table ACTIONS
	  (
		 IDACTION int  not null IDENTITY(1,1) ,
		 DESCRIPTIF varchar(128)  null  
		 ,
		 constraint PK_ACTIONS primary key (IDACTION)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : CONTROLE
	----------------------------------------------------------------------------- */

	create table CONTROLE
	  (
		 IDCONTROLE int  not null IDENTITY(1,1) ,
		 IDENTREPRISESPECIALISEE int  not null  ,
		 IDTYPECONTROLE int  not null  ,
		 IDZONESTOCKAGE int  not null  ,
		 DATECONTROLE datetime  null  ,
		 RESUME varchar(255)  null  ,
		 MONTANTHT money  null  
		 ,
		 constraint PK_CONTROLE primary key (IDCONTROLE)
	  ) 
	go



	/*      INDEX DE CONTROLE      */



	/* -----------------------------------------------------------------------------
		  TABLE : PAYS
	----------------------------------------------------------------------------- */

	create table PAYS
	  (
		 NOMPAYS varchar(50)  not null  
		 ,
		 constraint PK_PAYS primary key (NOMPAYS)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : RESPONSABLEASSOCIATION
	----------------------------------------------------------------------------- */

	create table RESPONSABLEASSOCIATION
	  (
		 IDPERSONNE int  not null  ,
		 NOM varchar(25)  null  ,
		 PRENOM varchar(25)  null  ,
		 ADRESSE varchar(128)  null  ,
		 CODEPOSTAL char(5)  null  ,
		 VILLE varchar(128)  null  ,
		 TEL int  null  
		 ,
		 constraint PK_RESPONSABLEASSOCIATION primary key (IDPERSONNE)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : ARTISTE
	----------------------------------------------------------------------------- */

	create table ARTISTE
	  (
		 IDPERSONNE int  not null  ,
		 LIBELLECOURANTARTISTIQUE varchar(35)  not null  ,
		 SITEARTISTE varchar(200)  null  ,
		 NOM varchar(25)  null  ,
		 PRENOM varchar(25)  null  ,
		 ADRESSE varchar(128)  null  ,
		 CODEPOSTAL char(5)  null  ,
		 VILLE varchar(128)  null  ,
		 TEL int  null  
		 ,
		 constraint PK_ARTISTE primary key (IDPERSONNE)
	  ) 
	go



	/*      INDEX DE ARTISTE      */



	/* -----------------------------------------------------------------------------
		  TABLE : ETAGE
	----------------------------------------------------------------------------- */

	create table ETAGE
	  (
		 IDBATIMENT int  not null  ,
		 IDZONESTOCKAGE int  not null  ,
		 IDETAGE int  not null  IDENTITY(1,1)
		 ,
		 constraint PK_ETAGE primary key (IDBATIMENT, IDZONESTOCKAGE, IDETAGE)
	  ) 
	go



	/*      INDEX DE ETAGE      */



	/* -----------------------------------------------------------------------------
		  TABLE : EVENEMENT
	----------------------------------------------------------------------------- */

	create table EVENEMENT
	  (
		 IDEVENEMENT int  not null IDENTITY(1,1) ,
		 NOMTHEME varchar(128)  not null  ,
		 DATEDEBUT datetime  null  ,
		 DATEFIN datetime  null  ,
		 VILLE varchar(60)  null  
		 ,
		 constraint PK_EVENEMENT primary key (IDEVENEMENT)
	  ) 
	go



	/*      INDEX DE EVENEMENT      */



	/* -----------------------------------------------------------------------------
		  TABLE : CATEGORIEVIP
	----------------------------------------------------------------------------- */

	create table CATEGORIEVIP
	  (
		 TYPECATEGORIEVIP varchar(128)  not null  
		 ,
		 constraint PK_CATEGORIEVIP primary key (TYPECATEGORIEVIP)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : COURANTARTISTIQUE
	----------------------------------------------------------------------------- */

	create table COURANTARTISTIQUE
	  (
		 LIBELLECOURANTARTISTIQUE varchar(35)  not null  ,
		 DESCRIPTIF varchar(255)  null  
		 ,
		 constraint PK_COURANTARTISTIQUE primary key (LIBELLECOURANTARTISTIQUE)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : RESPONSABLECOMMUNICATION
	----------------------------------------------------------------------------- */

	create table RESPONSABLECOMMUNICATION
	  (
		 IDPERSONNE int  not null  ,
		 NOM varchar(25)  null  ,
		 PRENOM varchar(25)  null  ,
		 ADRESSE varchar(128)  null  ,
		 CODEPOSTAL char(5)  null  ,
		 VILLE varchar(128)  null  ,
		 TEL int  null  
		 ,
		 constraint PK_RESPONSABLECOMMUNICATION primary key (IDPERSONNE)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : BATIMENT
	----------------------------------------------------------------------------- */

	create table BATIMENT
	  (
		 IDBATIMENT int  not null  IDENTITY(1,1)
		 ,
		 constraint PK_BATIMENT primary key (IDBATIMENT)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : ENTREPRISESPECIALISEE
	----------------------------------------------------------------------------- */

	create table ENTREPRISESPECIALISEE
	  (
		 IDENTREPRISESPECIALISEE int  not null IDENTITY(1,1) ,
		 NOM varchar(35)  null  ,
		 ADRESSE varchar(128)  null  ,
		 CODEPOSTAL char(5)  null  ,
		 VILLE varchar(128)  null  ,
		 EMAIL varchar(128)  null  
		 ,
		 constraint PK_ENTREPRISESPECIALISEE primary key (IDENTREPRISESPECIALISEE)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : CATEGORIE
	----------------------------------------------------------------------------- */

	create table CATEGORIE
	  (
		 IDCATEGORIE int  not null IDENTITY(1,1)  ,
		 LIBELLE varchar(128)  null  
		 ,
		 constraint PK_CATEGORIE primary key (IDCATEGORIE)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : VIP
	----------------------------------------------------------------------------- */

	create table VIP
	  (
		 IDPERSONNE int  not null  ,
		 TYPECATEGORIEVIP varchar(128)  not null  ,
		 EMAIL varchar(128)  null  ,
		 NOM varchar(25)  null  ,
		 PRENOM varchar(25)  null  ,
		 ADRESSE varchar(128)  null  ,
		 CODEPOSTAL char(5)  null  ,
		 VILLE varchar(128)  null  ,
		 TEL int  null  
		 ,
		 constraint PK_VIP primary key (IDPERSONNE)
	  ) 
	go



	/*      INDEX DE VIP      */



	/* -----------------------------------------------------------------------------
		  TABLE : AGENCECOMMUNICATION
	----------------------------------------------------------------------------- */

	create table AGENCECOMMUNICATION
	  (
		 IDAGENCE int  not null  ,
		 LIBELLE varchar(35)  null  ,
		 ADRESSE varchar(128)  null  ,
		 CODEPOSTAL char(5)  null  ,
		 VILLE varchar(128)  null  ,
		 SITEWEB varchar(200)  null  ,
		 EMAIL varchar(128)  null  ,
		 TELEPHONE int  null  
		 ,
		 constraint PK_AGENCECOMMUNICATION primary key (IDAGENCE)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : CAMPAGNE
	----------------------------------------------------------------------------- */

	create table CAMPAGNE
	  (
		 INTITULECAMPAGNE varchar(35)  not null  ,
		 TYPEPUBLIC varchar(25)  not null  ,
		 IDPERSONNE int  not null  ,
		 OBJECTIF varchar(128)  null  ,
		 DATEDEBUT datetime  null  ,
		 DATEFIN datetime  null  
		 ,
		 constraint PK_CAMPAGNE primary key (INTITULECAMPAGNE)
	  ) 
	go



	/*      INDEX DE CAMPAGNE      */



	/* -----------------------------------------------------------------------------
		  TABLE : TYPECONTROLE
	----------------------------------------------------------------------------- */

	create table TYPECONTROLE
	  (
		 IDTYPECONTROLE int  not null IDENTITY(1,1) ,
		 LIBELLE varchar(128)  null  
		 ,
		 constraint PK_TYPECONTROLE primary key (IDTYPECONTROLE)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : THEME
	----------------------------------------------------------------------------- */

	create table THEME
	  (
		 NOMTHEME varchar(128)  not null  
		 ,
		 constraint PK_THEME primary key (NOMTHEME)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : AGENCEARTISTIQUE
	----------------------------------------------------------------------------- */

	create table AGENCEARTISTIQUE
	  (
		 IDAGENCE int  not null  ,
		 LIBELLE varchar(35)  null  ,
		 ADRESSE varchar(128)  null  ,
		 CODEPOSTAL char(5)  null  ,
		 VILLE varchar(128)  null  ,
		 SITEWEB varchar(200)  null  ,
		 EMAIL varchar(128)  null  ,
		 TELEPHONE int  null  
		 ,
		 constraint PK_AGENCEARTISTIQUE primary key (IDAGENCE)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : AGENCE
	----------------------------------------------------------------------------- */

	create table AGENCE
	  (
		 IDAGENCE int  not null IDENTITY(1,1) ,
		 LIBELLE varchar(35)  null  ,
		 ADRESSE varchar(128)  null  ,
		 CODEPOSTAL char(5)  null  ,
		 VILLE varchar(128)  null  ,
		 SITEWEB varchar(200)  null  ,
		 EMAIL varchar(128)  null  ,
		 TELEPHONE int  null  
		 ,
		 constraint PK_AGENCE primary key (IDAGENCE)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : MISSION
	----------------------------------------------------------------------------- */

	create table MISSION
	  (
		 IDMISSION int  not null IDENTITY(1,1) ,
		 NOM varchar(35)  null  
		 ,
		 constraint PK_MISSION primary key (IDMISSION)
	  ) 
	go



	/* -----------------------------------------------------------------------------
		  TABLE : PARTENARIAT
	----------------------------------------------------------------------------- */

	create table PARTENARIAT
	  (
		 IDPARTENARIAT int  not null IDENTITY(1,1) ,
		 IDASSOCIATION int  not null  ,
		 IDACTION int  not null  ,
		 BUDGET money  null  ,
		 BUDGET_PRÉVISIONNEL money  null  ,
		 COÛTPARTENARIAT money  null  ,
		 DATEPARTENARIAT datetime  null  
		 ,
		 constraint PK_PARTENARIAT primary key (IDPARTENARIAT)
	  ) 
	go



	/*      INDEX DE PARTENARIAT      */



	/* -----------------------------------------------------------------------------
		  TABLE : ZONESTOCKAGE
	----------------------------------------------------------------------------- */

	create table ZONESTOCKAGE
	  (
		 IDZONESTOCKAGE int  not null IDENTITY(1,1) ,
		 IDCATEGORIE int  not null  ,
		 NOM varchar(25)  null  ,
		 ADRESSEPOSTALE varchar(128)  null  ,
		 CODEPOSTAL char(5)  null  ,
		 VILLE varchar(128)  null  
		 ,
		 constraint PK_ZONESTOCKAGE primary key (IDZONESTOCKAGE)
	  ) 
	go



	/*      INDEX DE ZONESTOCKAGE      */



	/* -----------------------------------------------------------------------------
		  TABLE : INVITER
	----------------------------------------------------------------------------- */

	create table INVITER
	  (
		 IDEVENEMENT int  not null  ,
		 IDPERSONNE int  not null  ,
		 CACHET money  null  
		 ,
		 constraint PK_INVITER primary key (IDEVENEMENT, IDPERSONNE)
	  ) 
	go



	/*      INDEX DE INVITER      */



	/* -----------------------------------------------------------------------------
		  TABLE : DEPENDRE
	----------------------------------------------------------------------------- */

	create table DEPENDRE
	  (
		 IDASSOCIATION int  not null  ,
		 NOMPAYS varchar(50)  not null  
		 ,
		 constraint PK_DEPENDRE primary key (IDASSOCIATION, NOMPAYS)
	  ) 
	go



	/*      INDEX DE DEPENDRE      */



	/* -----------------------------------------------------------------------------
		  TABLE : HABILITÉ
	----------------------------------------------------------------------------- */

	create table HABILITÉ
	  (
		 IDENTREPRISESPECIALISEE int  not null  ,
		 IDTYPECONTROLE int  not null  
		 ,
		 constraint PK_HABILITÉ primary key (IDENTREPRISESPECIALISEE, IDTYPECONTROLE)
	  ) 
	go



	/*      INDEX DE HABILITÉ      */



	/* -----------------------------------------------------------------------------
		  TABLE : EFFECTUER
	----------------------------------------------------------------------------- */

	create table EFFECTUER
	  (
		 IDASSOCIATION int  not null  ,
		 IDACTION int  not null  
		 ,
		 constraint PK_EFFECTUER primary key (IDASSOCIATION, IDACTION)
	  ) 
	go



	/*      INDEX DE EFFECTUER      */



	/* -----------------------------------------------------------------------------
		  TABLE : CONTENIR
	----------------------------------------------------------------------------- */

	create table CONTENIR
	  (
		 TYPECATEGORIEVIP varchar(128)  not null  ,
		 IDEVENEMENT int  not null  ,
		 MESSAGE varchar(255)  null  ,
		 DATEMESSAGE datetime  null  
		 ,
		 constraint PK_CONTENIR primary key (TYPECATEGORIEVIP, IDEVENEMENT)
	  ) 
	go



	/*      INDEX DE CONTENIR      */



	/* -----------------------------------------------------------------------------
		  TABLE : EN_RELATION_AVEC
	----------------------------------------------------------------------------- */

	create table EN_RELATION_AVEC
	  (
		 IDAGENCE int  not null  ,
		 IDPERSONNE int  not null  
		 ,
		 constraint PK_EN_RELATION_AVEC primary key (IDAGENCE, IDPERSONNE)
	  ) 
	go



	/*      INDEX DE EN_RELATION_AVEC      */



	/* -----------------------------------------------------------------------------
		  TABLE : A_FAIRE
	----------------------------------------------------------------------------- */

	create table A_FAIRE
	  (
		 IDTYPECONTROLE int  not null  ,
		 IDZONESTOCKAGE int  not null  ,
		 COMMENTAIRE varchar(255)  null  
		 ,
		 constraint PK_A_FAIRE primary key (IDTYPECONTROLE, IDZONESTOCKAGE)
	  ) 
	go



	/*      INDEX DE A_FAIRE      */



	/* -----------------------------------------------------------------------------
		  TABLE : RATTACHER
	----------------------------------------------------------------------------- */

	create table RATTACHER
	  (
		 IDPERSONNE int  not null  ,
		 IDAGENCE int  not null  
		 ,
		 constraint PK_RATTACHER primary key (IDPERSONNE, IDAGENCE)
	  ) 
	go



	/*      INDEX DE RATTACHER      */



	/* -----------------------------------------------------------------------------
		  TABLE : CONVIER
	----------------------------------------------------------------------------- */

	create table CONVIER
	  (
		 IDPERSONNE int  not null  ,
		 IDEVENEMENT int  not null  
		 ,
		 constraint PK_CONVIER primary key (IDPERSONNE, IDEVENEMENT)
	  ) 
	go



	/*      INDEX DE CONVIER      */



	/* -----------------------------------------------------------------------------
		  REFERENCES SUR LES TABLES
	----------------------------------------------------------------------------- */



	alter table ASSOCIATION 
		 add constraint FK_ASSOCIATION_MISSION foreign key (IDMISSION) 
				   references MISSION (IDMISSION)
	go




	alter table ASSOCIATION 
		 add constraint FK_ASSOCIATION_RESPONSABLEASSOCIATION foreign key (IDPERSONNE) 
				   references RESPONSABLEASSOCIATION (IDPERSONNE)
	go




	alter table CONTROLE 
		 add constraint FK_CONTROLE_ENTREPRISESPECIALISEE foreign key (IDENTREPRISESPECIALISEE) 
				   references ENTREPRISESPECIALISEE (IDENTREPRISESPECIALISEE)
	go




	alter table CONTROLE 
		 add constraint FK_CONTROLE_TYPECONTROLE foreign key (IDTYPECONTROLE) 
				   references TYPECONTROLE (IDTYPECONTROLE)
	go




	alter table CONTROLE 
		 add constraint FK_CONTROLE_ZONESTOCKAGE foreign key (IDZONESTOCKAGE) 
				   references ZONESTOCKAGE (IDZONESTOCKAGE)
	go




	alter table RESPONSABLEASSOCIATION 
		 add constraint FK_RESPONSABLEASSOCIATION_PERSONNE foreign key (IDPERSONNE) 
				   references PERSONNE (IDPERSONNE)
	go




	alter table ARTISTE 
		 add constraint FK_ARTISTE_COURANTARTISTIQUE foreign key (LIBELLECOURANTARTISTIQUE) 
				   references COURANTARTISTIQUE (LIBELLECOURANTARTISTIQUE)
	go




	alter table ARTISTE 
		 add constraint FK_ARTISTE_PERSONNE foreign key (IDPERSONNE) 
				   references PERSONNE (IDPERSONNE)
	go




	alter table ETAGE 
		 add constraint FK_ETAGE_ZONESTOCKAGE foreign key (IDZONESTOCKAGE) 
				   references ZONESTOCKAGE (IDZONESTOCKAGE)
	go




	alter table ETAGE 
		 add constraint FK_ETAGE_BATIMENT foreign key (IDBATIMENT) 
				   references BATIMENT (IDBATIMENT)
	go




	alter table EVENEMENT 
		 add constraint FK_EVENEMENT_THEME foreign key (NOMTHEME) 
				   references THEME (NOMTHEME)
	go




	alter table RESPONSABLECOMMUNICATION 
		 add constraint FK_RESPONSABLECOMMUNICATION_PERSONNE foreign key (IDPERSONNE) 
				   references PERSONNE (IDPERSONNE)
	go




	alter table VIP 
		 add constraint FK_VIP_CATEGORIEVIP foreign key (TYPECATEGORIEVIP) 
				   references CATEGORIEVIP (TYPECATEGORIEVIP)
	go




	alter table VIP 
		 add constraint FK_VIP_PERSONNE foreign key (IDPERSONNE) 
				   references PERSONNE (IDPERSONNE)
	go




	alter table AGENCECOMMUNICATION 
		 add constraint FK_AGENCECOMMUNICATION_AGENCE foreign key (IDAGENCE) 
				   references AGENCE (IDAGENCE)
	go




	alter table CAMPAGNE 
		 add constraint FK_CAMPAGNE_RESPONSABLECOMMUNICATION foreign key (IDPERSONNE) 
				   references RESPONSABLECOMMUNICATION (IDPERSONNE)
	go




	alter table CAMPAGNE 
		 add constraint FK_CAMPAGNE_TYPEPUBLIC foreign key (TYPEPUBLIC) 
				   references TYPEPUBLIC (TYPEPUBLIC)
	go




	alter table AGENCEARTISTIQUE 
		 add constraint FK_AGENCEARTISTIQUE_AGENCE foreign key (IDAGENCE) 
				   references AGENCE (IDAGENCE)
	go




	alter table PARTENARIAT 
		 add constraint FK_PARTENARIAT_ASSOCIATION foreign key (IDASSOCIATION) 
				   references ASSOCIATION (IDASSOCIATION)
	go




	alter table PARTENARIAT 
		 add constraint FK_PARTENARIAT_ACTIONS foreign key (IDACTION) 
				   references ACTIONS (IDACTION)
	go




	alter table ZONESTOCKAGE 
		 add constraint FK_ZONESTOCKAGE_CATEGORIE foreign key (IDCATEGORIE) 
				   references CATEGORIE (IDCATEGORIE)
	go




	alter table INVITER 
		 add constraint FK_INVITER_EVENEMENT foreign key (IDEVENEMENT) 
				   references EVENEMENT (IDEVENEMENT)
	go




	alter table INVITER 
		 add constraint FK_INVITER_ARTISTE foreign key (IDPERSONNE) 
				   references ARTISTE (IDPERSONNE)
	go




	alter table DEPENDRE 
		 add constraint FK_DEPENDRE_ASSOCIATION foreign key (IDASSOCIATION) 
				   references ASSOCIATION (IDASSOCIATION)
	go




	alter table DEPENDRE 
		 add constraint FK_DEPENDRE_PAYS foreign key (NOMPAYS) 
				   references PAYS (NOMPAYS)
	go




	alter table HABILITÉ 
		 add constraint FK_HABILITÉ_ENTREPRISESPECIALISEE foreign key (IDENTREPRISESPECIALISEE) 
				   references ENTREPRISESPECIALISEE (IDENTREPRISESPECIALISEE)
	go




	alter table HABILITÉ 
		 add constraint FK_HABILITÉ_TYPECONTROLE foreign key (IDTYPECONTROLE) 
				   references TYPECONTROLE (IDTYPECONTROLE)
	go




	alter table EFFECTUER 
		 add constraint FK_EFFECTUER_ASSOCIATION foreign key (IDASSOCIATION) 
				   references ASSOCIATION (IDASSOCIATION)
	go




	alter table EFFECTUER 
		 add constraint FK_EFFECTUER_ACTIONS foreign key (IDACTION) 
				   references ACTIONS (IDACTION)
	go




	alter table CONTENIR 
		 add constraint FK_CONTENIR_CATEGORIEVIP foreign key (TYPECATEGORIEVIP) 
				   references CATEGORIEVIP (TYPECATEGORIEVIP)
	go




	alter table CONTENIR 
		 add constraint FK_CONTENIR_EVENEMENT foreign key (IDEVENEMENT) 
				   references EVENEMENT (IDEVENEMENT)
	go




	alter table EN_RELATION_AVEC 
		 add constraint FK_EN_RELATION_AVEC_AGENCE foreign key (IDAGENCE) 
				   references AGENCE (IDAGENCE)
	go




	alter table EN_RELATION_AVEC 
		 add constraint FK_EN_RELATION_AVEC_RESPONSABLECOMMUNICATION foreign key (IDPERSONNE) 
				   references RESPONSABLECOMMUNICATION (IDPERSONNE)
	go




	alter table A_FAIRE 
		 add constraint FK_A_FAIRE_TYPECONTROLE foreign key (IDTYPECONTROLE) 
				   references TYPECONTROLE (IDTYPECONTROLE)
	go




	alter table A_FAIRE 
		 add constraint FK_A_FAIRE_ZONESTOCKAGE foreign key (IDZONESTOCKAGE) 
				   references ZONESTOCKAGE (IDZONESTOCKAGE)
	go




	alter table RATTACHER 
		 add constraint FK_RATTACHER_ARTISTE foreign key (IDPERSONNE) 
				   references ARTISTE (IDPERSONNE)
	go




	alter table RATTACHER 
		 add constraint FK_RATTACHER_AGENCEARTISTIQUE foreign key (IDAGENCE) 
				   references AGENCEARTISTIQUE (IDAGENCE)
	go




	alter table CONVIER 
		 add constraint FK_CONVIER_VIP foreign key (IDPERSONNE) 
				   references VIP (IDPERSONNE)
	go




	alter table CONVIER 
		 add constraint FK_CONVIER_EVENEMENT foreign key (IDEVENEMENT) 
				   references EVENEMENT (IDEVENEMENT)
	go




	/*
	 -----------------------------------------------------------------------------
				   FIN DE GENERATION
	 -----------------------------------------------------------------------------
	*/