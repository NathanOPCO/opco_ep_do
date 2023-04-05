DROP DATABASE IF EXISTS opco_ep_do;
CREATE DATABASE opco_ep_do;
USE opco_ep_do;

CREATE TABLE standard(
    Id_Fiche INT NOT NULL,
    Numero_Fiche VARCHAR(255) NOT NULL,
    Intitule VARCHAR(255),
    Abrege_Libelle VARCHAR(255),
    Abrege_Intitule VARCHAR(255),
    Nomenclature_Europe_Niveau VARCHAR(255),
    Nomenclature_Europe_Intitule VARCHAR(255),
    Accessible_Nouvelle_Caledonie VARCHAR(255),
    Accessible_Polynesie_Francaise VARCHAR(255),
    Date_dernier_jo DATE,
    Date_Decision DATE,
    Date_Fin_Enregistrement DATE,
    Date_Effet DATE,
    Type_Enregistrement VARCHAR(255),
    Validation_Partielle VARCHAR(255),
    Actif VARCHAR(255)
);
CREATE TABLE ancienne_nouvelle_certif(
    Numero_Fiche VARCHAR(255) NOT NULL,
    Ancienne_Certification VARCHAR(255),
    Nouvelle_Certification VARCHAR(255)
);
CREATE TABLE nsf(
    Numero_Fiche VARCHAR(255) NOT NULL,
    Nsf_Code VARCHAR(255),
    Nsf_Intitule VARCHAR(255)
);
CREATE TABLE bloc_competences(
    Numero_Fiche VARCHAR(255) NOT NULL,
    Bloc_Competences_Code VARCHAR(255) NOT NULL,
    Bloc_Competences_Libelle VARCHAR(255) NOT NULL
);
CREATE TABLE ccn(
    Numero_Fiche VARCHAR(255) NOT NULL,
    Ccn_1_Numero VARCHAR(255),
    Ccn_1_Libelle VARCHAR(255),
    Ccn_2_Numero VARCHAR(255),
    Ccn_2_Libelle VARCHAR(255),
    Ccn_3_Numero VARCHAR(255),
    Ccn_3_Libelle VARCHAR(255)
);
CREATE TABLE certificateur(
    Numero_Fiche VARCHAR(255) NOT NULL,
    Siret_Certificateur INT,
    Nom_Certificateur VARCHAR(255)
);
CREATE TABLE formatcode(
    Numero_Fiche VARCHAR(255) NOT NULL,
    Formacode_Code INT,
    Formacode_Libelle VARCHAR(255)
);
CREATE TABLE partenaire(
    Numero_Fiche VARCHAR(255) NOT NULL,
    Nom_Partenaire VARCHAR(255),
    Siret_Partenaire INT,
    Habilitation_Partenaire VARCHAR(255)
);
CREATE TABLE rome(
    Numero_Fiche VARCHAR(255) NOT NULL,
    Codes_Rome_Code VARCHAR(255),
    Codes_Rome_Libelle VARCHAR(255)
);
CREATE TABLE voix_d_acces(
    Numero_Fiche VARCHAR(255) NOT NULL,
    Si_Jury VARCHAR(255)
);
CREATE TABLE harmony(
    Numero_Fiche VARCHAR(255) NOT NULL
);

-- POUR LES INSERT INTO, se référer aux tableaux EXCEL de chaque table et de chaque export et insérer :
-- =CONCAT("(";"'";$A2;"'";",";"'";$B2;"'";",";"'";$C2;"'";")";",")
-- Décomposer, cela donne :
-- =CONCAT("("; METTRE LES VALEURS ICI ")";",")
-- "'";$A2;"'";","; = 'A2',
-- "'";$B2;"'";","; = 'B2',
-- "'";$C2;"'"; = 'C2'
--  = ),


-- POUR LA TABLE STANDARD AVEC LES DATES : =CONCAT("(";"'";$A2;"'";",";"'";$B2;"'";",";"'";$C2;"'";",";"'";$D2;"'";",";"'";$E2;"'";",";"'";$F2;"'";",";"'";$G2;"'";",";"'";$H2;"'";",";"'";$I2;"'";",";"'";TEXTE(J$2;"jj/mm/aaaa");"'";",";"'";TEXTE($K2;"jj/mm/aaaa");"'";",";"'";TEXTE($L2;"jj/mm/aaaa");"'";",";"'";TEXTE($M2;"jj/mm/aaaa");"'";",";"'";$N2;"'";",";"'";$O2;"'";",";"'";$P2;"'";")";",")
