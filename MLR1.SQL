/*
 ----------------------------------------------------------------------------
             Génération d'une base de données pour
                      Microsoft SQL Server
                       (29/11/2019 15:48:38)
 ----------------------------------------------------------------------------
     Nom de la base : MLR2
     Projet : 
     Auteur : LMC
     Date de dernière modification : 29/11/2019 15:48:18
 ----------------------------------------------------------------------------
*/

drop database MLR2
go

/* -----------------------------------------------------------------------------
      OUVERTURE DE LA BASE MLR2
----------------------------------------------------------------------------- */

create database MLR2
go

use MLR2
go



/* -----------------------------------------------------------------------------
      TABLE : ASSOCIATION
----------------------------------------------------------------------------- */

create table ASSOCIATION
(
     IDASSOCIATION bigint not null,
     IDMISSION bigint not null,
     IDPERSONNE bigint not null,
     NOM varchar(25) 
)
go



/*      INDEX DE ASSOCIATION      */


sp_primarykey ASSOCIATION, IDASSOCIATION
go



/* -----------------------------------------------------------------------------
      TABLE : PERSONNE
----------------------------------------------------------------------------- */

create table PERSONNE
(
     IDPERSONNE bigint not null,
     NOM varchar(25) ,
     PRENOM varchar(25) ,
     ADRESSE varchar(128) ,
     CODEPOSTAL char(5) ,
     VILLE varchar(128) ,
     TEL bigint 
)
go



/*      INDEX DE PERSONNE      */


sp_primarykey PERSONNE, IDPERSONNE
go



/* -----------------------------------------------------------------------------
      TABLE : CONTROLE
----------------------------------------------------------------------------- */

create table CONTROLE
(
     IDCONTROLE bigint not null,
     IDENTREPRISESPECIALISEE bigint not null,
     IDTYPECONTROLE bigint not null,
     IDZONESTOCKAGE bigint not null,
     DATECONTROLE datetime ,
     RESUME varchar(255) ,
     MONTANTHT money 
)
go



/*      INDEX DE CONTROLE      */


sp_primarykey CONTROLE, IDCONTROLE
go



/* -----------------------------------------------------------------------------
      TABLE : PAYS
----------------------------------------------------------------------------- */

create table PAYS
(
     NOMPAYS varchar(50) not null
)
go



/*      INDEX DE PAYS      */


sp_primarykey PAYS, NOMPAYS
go



/* -----------------------------------------------------------------------------
      TABLE : RESPONSABLEASSOCIATION
----------------------------------------------------------------------------- */

create table RESPONSABLEASSOCIATION
(
     IDPERSONNE bigint not null,
     NOM varchar(25) ,
     PRENOM varchar(25) ,
     ADRESSE varchar(128) ,
     CODEPOSTAL char(5) ,
     VILLE varchar(128) ,
     TEL bigint 
)
go



/*      INDEX DE RESPONSABLEASSOCIATION      */


sp_primarykey RESPONSABLEASSOCIATION, IDPERSONNE
go



/* -----------------------------------------------------------------------------
      TABLE : ACTION
----------------------------------------------------------------------------- */

create table ACTION
(
     IDACTION bigint not null,
     DESCRIPTIF varchar(128) 
)
go



/*      INDEX DE ACTION      */


sp_primarykey ACTION, IDACTION
go



/* -----------------------------------------------------------------------------
      TABLE : ARTISTE
----------------------------------------------------------------------------- */

create table ARTISTE
(
     IDPERSONNE bigint not null,
     LIBELLECOURANTARTISTIQUE varchar(35) not null,
     SITEARTISTE varchar(200) ,
     NOM varchar(25) ,
     PRENOM varchar(25) ,
     ADRESSE varchar(128) ,
     CODEPOSTAL char(5) ,
     VILLE varchar(128) ,
     TEL bigint 
)
go



/*      INDEX DE ARTISTE      */


sp_primarykey ARTISTE, IDPERSONNE
go



/* -----------------------------------------------------------------------------
      TABLE : PUBLIC
----------------------------------------------------------------------------- */

create table PUBLIC
(
     TYPEPUBLIC varchar(25) not null
)
go



/*      INDEX DE PUBLIC      */


sp_primarykey PUBLIC, TYPEPUBLIC
go



/* -----------------------------------------------------------------------------
      TABLE : ETAGE
----------------------------------------------------------------------------- */

create table ETAGE
(
     IDBATIMENT bigint not null,
     IDZONESTOCKAGE bigint not null,
     IDETAGE bigint not null
)
go



/*      INDEX DE ETAGE      */


sp_primarykey ETAGE, IDBATIMENT, IDZONESTOCKAGE, IDETAGE
go



/* -----------------------------------------------------------------------------
      TABLE : EVENEMENT
----------------------------------------------------------------------------- */

create table EVENEMENT
(
     IDEVENEMENT bigint not null,
     NOMTHEME varchar(128) not null,
     DATEDEBUT datetime ,
     DATEFIN datetime ,
     VILLE varchar(60) 
)
go



/*      INDEX DE EVENEMENT      */


sp_primarykey EVENEMENT, IDEVENEMENT
go



/* -----------------------------------------------------------------------------
      TABLE : CATEGORIEVIP
----------------------------------------------------------------------------- */

create table CATEGORIEVIP
(
     TYPECATEGORIEVIP varchar(128) not null
)
go



/*      INDEX DE CATEGORIEVIP      */


sp_primarykey CATEGORIEVIP, TYPECATEGORIEVIP
go



/* -----------------------------------------------------------------------------
      TABLE : COURANTARTISTIQUE
----------------------------------------------------------------------------- */

create table COURANTARTISTIQUE
(
     LIBELLECOURANTARTISTIQUE varchar(35) not null,
     DESCRIPTIF varchar(255) 
)
go



/*      INDEX DE COURANTARTISTIQUE      */


sp_primarykey COURANTARTISTIQUE, LIBELLECOURANTARTISTIQUE
go



/* -----------------------------------------------------------------------------
      TABLE : RESPONSABLECOMMUNICATION
----------------------------------------------------------------------------- */

create table RESPONSABLECOMMUNICATION
(
     IDPERSONNE bigint not null,
     NOM varchar(25) ,
     PRENOM varchar(25) ,
     ADRESSE varchar(128) ,
     CODEPOSTAL char(5) ,
     VILLE varchar(128) ,
     TEL bigint 
)
go



/*      INDEX DE RESPONSABLECOMMUNICATION      */


sp_primarykey RESPONSABLECOMMUNICATION, IDPERSONNE
go



/* -----------------------------------------------------------------------------
      TABLE : BATIMENT
----------------------------------------------------------------------------- */

create table BATIMENT
(
     IDBATIMENT bigint not null
)
go



/*      INDEX DE BATIMENT      */


sp_primarykey BATIMENT, IDBATIMENT
go



/* -----------------------------------------------------------------------------
      TABLE : ENTREPRISESPECIALISEE
----------------------------------------------------------------------------- */

create table ENTREPRISESPECIALISEE
(
     IDENTREPRISESPECIALISEE bigint not null,
     NOM varchar(35) ,
     ADRESSE varchar(128) ,
     CODEPOSTAL char(5) ,
     VILLE varchar(128) ,
     EMAIL varchar(128) 
)
go



/*      INDEX DE ENTREPRISESPECIALISEE      */


sp_primarykey ENTREPRISESPECIALISEE, IDENTREPRISESPECIALISEE
go



/* -----------------------------------------------------------------------------
      TABLE : CATEGORIE
----------------------------------------------------------------------------- */

create table CATEGORIE
(
     IDCATEGORIE bigint not null,
     LIBELLE varchar(128) 
)
go



/*      INDEX DE CATEGORIE      */


sp_primarykey CATEGORIE, IDCATEGORIE
go



/* -----------------------------------------------------------------------------
      TABLE : VIP
----------------------------------------------------------------------------- */

create table VIP
(
     IDPERSONNE bigint not null,
     TYPECATEGORIEVIP varchar(128) not null,
     EMAIL varchar(128) ,
     NOM varchar(25) ,
     PRENOM varchar(25) ,
     ADRESSE varchar(128) ,
     CODEPOSTAL char(5) ,
     VILLE varchar(128) ,
     TEL bigint 
)
go



/*      INDEX DE VIP      */


sp_primarykey VIP, IDPERSONNE
go



/* -----------------------------------------------------------------------------
      TABLE : AGENCECOMMUNICATION
----------------------------------------------------------------------------- */

create table AGENCECOMMUNICATION
(
     IDAGENCE bigint not null,
     LIBELLE varchar(35) ,
     ADRESSE varchar(128) ,
     CODEPOSTAL char(5) ,
     VILLE varchar(128) ,
     SITEWEB varchar(200) ,
     EMAIL varchar(128) ,
     TELEPHONE bigint 
)
go



/*      INDEX DE AGENCECOMMUNICATION      */


sp_primarykey AGENCECOMMUNICATION, IDAGENCE
go



/* -----------------------------------------------------------------------------
      TABLE : CAMPAGNE
----------------------------------------------------------------------------- */

create table CAMPAGNE
(
     INTITULECAMPAGNE varchar(35) not null,
     TYPEPUBLIC varchar(25) not null,
     IDPERSONNE bigint not null,
     OBJECTIF varchar(128) ,
     DATEDEBUT datetime ,
     DATEFIN datetime 
)
go



/*      INDEX DE CAMPAGNE      */


sp_primarykey CAMPAGNE, INTITULECAMPAGNE
go



/* -----------------------------------------------------------------------------
      TABLE : TYPECONTROLE
----------------------------------------------------------------------------- */

create table TYPECONTROLE
(
     IDTYPECONTROLE bigint not null,
     LIBELLE varchar(128) 
)
go



/*      INDEX DE TYPECONTROLE      */


sp_primarykey TYPECONTROLE, IDTYPECONTROLE
go



/* -----------------------------------------------------------------------------
      TABLE : THEME
----------------------------------------------------------------------------- */

create table THEME
(
     NOMTHEME varchar(128) not null
)
go



/*      INDEX DE THEME      */


sp_primarykey THEME, NOMTHEME
go



/* -----------------------------------------------------------------------------
      TABLE : AGENCEARTISTIQUE
----------------------------------------------------------------------------- */

create table AGENCEARTISTIQUE
(
     IDAGENCE bigint not null,
     LIBELLE varchar(35) ,
     ADRESSE varchar(128) ,
     CODEPOSTAL char(5) ,
     VILLE varchar(128) ,
     SITEWEB varchar(200) ,
     EMAIL varchar(128) ,
     TELEPHONE bigint 
)
go



/*      INDEX DE AGENCEARTISTIQUE      */


sp_primarykey AGENCEARTISTIQUE, IDAGENCE
go



/* -----------------------------------------------------------------------------
      TABLE : AGENCE
----------------------------------------------------------------------------- */

create table AGENCE
(
     IDAGENCE bigint not null,
     LIBELLE varchar(35) ,
     ADRESSE varchar(128) ,
     CODEPOSTAL char(5) ,
     VILLE varchar(128) ,
     SITEWEB varchar(200) ,
     EMAIL varchar(128) ,
     TELEPHONE bigint 
)
go



/*      INDEX DE AGENCE      */


sp_primarykey AGENCE, IDAGENCE
go



/* -----------------------------------------------------------------------------
      TABLE : MISSION
----------------------------------------------------------------------------- */

create table MISSION
(
     IDMISSION bigint not null,
     NOM varchar(35) 
)
go



/*      INDEX DE MISSION      */


sp_primarykey MISSION, IDMISSION
go



/* -----------------------------------------------------------------------------
      TABLE : PARTENARIAT
----------------------------------------------------------------------------- */

create table PARTENARIAT
(
     IDPARTENARIAT bigint not null,
     IDASSOCIATION bigint not null,
     IDACTION bigint not null,
     BUDGET money ,
     BUDGET_PRÉVISIONNEL money ,
     COÛTPARTENARIAT money ,
     DATEPARTENARIAT datetime 
)
go



/*      INDEX DE PARTENARIAT      */


sp_primarykey PARTENARIAT, IDPARTENARIAT
go



/* -----------------------------------------------------------------------------
      TABLE : ZONESTOCKAGE
----------------------------------------------------------------------------- */

create table ZONESTOCKAGE
(
     IDZONESTOCKAGE bigint not null,
     IDCATEGORIE bigint not null,
     NOM varchar(25) ,
     ADRESSEPOSTALE varchar(128) ,
     CODEPOSTAL char(5) ,
     VILLE varchar(128) 
)
go



/*      INDEX DE ZONESTOCKAGE      */


sp_primarykey ZONESTOCKAGE, IDZONESTOCKAGE
go



/* -----------------------------------------------------------------------------
      TABLE : INVITER
----------------------------------------------------------------------------- */

create table INVITER
(
     IDEVENEMENT bigint not null,
     IDPERSONNE bigint not null,
     CACHET money 
)
go



/*      INDEX DE INVITER      */


sp_primarykey INVITER, IDEVENEMENT, IDPERSONNE
go



/* -----------------------------------------------------------------------------
      TABLE : DEPENDRE
----------------------------------------------------------------------------- */

create table DEPENDRE
(
     IDASSOCIATION bigint not null,
     NOMPAYS varchar(50) not null
)
go



/*      INDEX DE DEPENDRE      */


sp_primarykey DEPENDRE, IDASSOCIATION, NOMPAYS
go



/* -----------------------------------------------------------------------------
      TABLE : HABILITÉ
----------------------------------------------------------------------------- */

create table HABILITÉ
(
     IDENTREPRISESPECIALISEE bigint not null,
     IDTYPECONTROLE bigint not null
)
go



/*      INDEX DE HABILITÉ      */


sp_primarykey HABILITÉ, IDENTREPRISESPECIALISEE, IDTYPECONTROLE
go



/* -----------------------------------------------------------------------------
      TABLE : EFFECTUER
----------------------------------------------------------------------------- */

create table EFFECTUER
(
     IDASSOCIATION bigint not null,
     IDACTION bigint not null
)
go



/*      INDEX DE EFFECTUER      */


sp_primarykey EFFECTUER, IDASSOCIATION, IDACTION
go



/* -----------------------------------------------------------------------------
      TABLE : CONTENIR
----------------------------------------------------------------------------- */

create table CONTENIR
(
     TYPECATEGORIEVIP varchar(128) not null,
     IDEVENEMENT bigint not null,
     MESSAGE varchar(255) ,
     DATE datetime 
)
go



/*      INDEX DE CONTENIR      */


sp_primarykey CONTENIR, TYPECATEGORIEVIP, IDEVENEMENT
go



/* -----------------------------------------------------------------------------
      TABLE : EN_RELATION_AVEC
----------------------------------------------------------------------------- */

create table EN_RELATION_AVEC
(
     IDAGENCE bigint not null,
     IDPERSONNE bigint not null
)
go



/*      INDEX DE EN_RELATION_AVEC      */


sp_primarykey EN_RELATION_AVEC, IDAGENCE, IDPERSONNE
go



/* -----------------------------------------------------------------------------
      TABLE : A_FAIRE
----------------------------------------------------------------------------- */

create table A_FAIRE
(
     IDTYPECONTROLE bigint not null,
     IDZONESTOCKAGE bigint not null,
     COMMENTAIRE varchar(255) 
)
go



/*      INDEX DE A_FAIRE      */


sp_primarykey A_FAIRE, IDTYPECONTROLE, IDZONESTOCKAGE
go



/* -----------------------------------------------------------------------------
      TABLE : RATTACHER
----------------------------------------------------------------------------- */

create table RATTACHER
(
     IDPERSONNE bigint not null,
     IDAGENCE bigint not null
)
go



/*      INDEX DE RATTACHER      */


sp_primarykey RATTACHER, IDPERSONNE, IDAGENCE
go



/* -----------------------------------------------------------------------------
      TABLE : CONVIER
----------------------------------------------------------------------------- */

create table CONVIER
(
     IDPERSONNE bigint not null,
     IDEVENEMENT bigint not null
)
go



/*      INDEX DE CONVIER      */


sp_primarykey CONVIER, IDPERSONNE, IDEVENEMENT
go



/* -----------------------------------------------------------------------------
      REFRENCES SUR LES TABLES
----------------------------------------------------------------------------- */


sp_foreignkey ASSOCIATION, MISSION, IDMISSION
go


sp_foreignkey ASSOCIATION, RESPONSABLEASSOCIATION, IDPERSONNE
go


sp_foreignkey CONTROLE, ENTREPRISESPECIALISEE, IDENTREPRISESPECIALISEE
go


sp_foreignkey CONTROLE, TYPECONTROLE, IDTYPECONTROLE
go


sp_foreignkey CONTROLE, ZONESTOCKAGE, IDZONESTOCKAGE
go


sp_foreignkey RESPONSABLEASSOCIATION, PERSONNE, IDPERSONNE
go


sp_foreignkey ARTISTE, COURANTARTISTIQUE, LIBELLECOURANTARTISTIQUE
go


sp_foreignkey ARTISTE, PERSONNE, IDPERSONNE
go


sp_foreignkey ETAGE, ZONESTOCKAGE, IDZONESTOCKAGE
go


sp_foreignkey ETAGE, BATIMENT, IDBATIMENT
go


sp_foreignkey EVENEMENT, THEME, NOMTHEME
go


sp_foreignkey RESPONSABLECOMMUNICATION, PERSONNE, IDPERSONNE
go


sp_foreignkey VIP, CATEGORIEVIP, TYPECATEGORIEVIP
go


sp_foreignkey VIP, PERSONNE, IDPERSONNE
go


sp_foreignkey AGENCECOMMUNICATION, AGENCE, IDAGENCE
go


sp_foreignkey CAMPAGNE, RESPONSABLECOMMUNICATION, IDPERSONNE
go


sp_foreignkey CAMPAGNE, PUBLIC, TYPEPUBLIC
go


sp_foreignkey AGENCEARTISTIQUE, AGENCE, IDAGENCE
go


sp_foreignkey PARTENARIAT, ASSOCIATION, IDASSOCIATION
go


sp_foreignkey PARTENARIAT, ACTION, IDACTION
go


sp_foreignkey ZONESTOCKAGE, CATEGORIE, IDCATEGORIE
go


sp_foreignkey INVITER, EVENEMENT, IDEVENEMENT
go


sp_foreignkey INVITER, ARTISTE, IDPERSONNE
go


sp_foreignkey DEPENDRE, ASSOCIATION, IDASSOCIATION
go


sp_foreignkey DEPENDRE, PAYS, NOMPAYS
go


sp_foreignkey HABILITÉ, ENTREPRISESPECIALISEE, IDENTREPRISESPECIALISEE
go


sp_foreignkey HABILITÉ, TYPECONTROLE, IDTYPECONTROLE
go


sp_foreignkey EFFECTUER, ASSOCIATION, IDASSOCIATION
go


sp_foreignkey EFFECTUER, ACTION, IDACTION
go


sp_foreignkey CONTENIR, CATEGORIEVIP, TYPECATEGORIEVIP
go


sp_foreignkey CONTENIR, EVENEMENT, IDEVENEMENT
go


sp_foreignkey EN_RELATION_AVEC, AGENCE, IDAGENCE
go


sp_foreignkey EN_RELATION_AVEC, RESPONSABLECOMMUNICATION, IDPERSONNE
go


sp_foreignkey A_FAIRE, TYPECONTROLE, IDTYPECONTROLE
go


sp_foreignkey A_FAIRE, ZONESTOCKAGE, IDZONESTOCKAGE
go


sp_foreignkey RATTACHER, ARTISTE, IDPERSONNE
go


sp_foreignkey RATTACHER, AGENCEARTISTIQUE, IDAGENCE
go


sp_foreignkey CONVIER, VIP, IDPERSONNE
go


sp_foreignkey CONVIER, EVENEMENT, IDEVENEMENT
go



/*
 -----------------------------------------------------------------------------
               FIN DE GENERATION
 -----------------------------------------------------------------------------
*/