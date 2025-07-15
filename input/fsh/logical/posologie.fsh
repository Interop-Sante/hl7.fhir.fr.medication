Logical: LignePrescription				
Id: fr-ligne-prescription				
Title: "Ligne de precription"				
Description:  """Structuration d'une ligne de prescription en fonction des critères de la HAS."""

// A rajouter : instruction au dispensateur, prescripteur, patient, ...

// Description du médicament
* traitement 0..1 Base "Identification du traitement concerné par la ligne de prescription"
* traitement.identifiant 0..1 Identifier "Identifiant du traitement prescrit"			
* traitement.dosage 0..* Base "Quantité de substance active dans une unité de dispensation"
* traitement.dosage.valeur 0..1 decimal "Valeur du dosage"
* traitement.dosage.unite 0..1 code "Unité du dosage"
* traitement.forme 0..1 code "Forme galénique"

* dateDebut 0..1 dateTime "Date de début de la ligne de prescription"
* dateFin 0..1 dateTime "Date de fin de la ligne de prescription"

// Posologie
* posologie 0..* Base "Structure de la posologie par séquences de prise."
* posologie.sequence 0..1 decimal "Numéro de séquence. La séquence s+1 commence à la fin de la séquence s. En cas de séquences ayant le même numéro, celles-ci se déroulent simultanément."
* posologie.voieAdministration 0..1 code "Voie d'administration du traitement"
* posologie.siteAdministration 0..1 code "Région anatomique d'administration du traitement"

// Une quantité poso par séquence
* posologie.quantitePrescrite 0..* Base "Quantité de traitement prescrite"
* posologie.quantitePrescrite.valeur 0..1 decimal "Quantité à prendre par prise"
* posologie.quantitePrescrite.valeurMax 0..1 decimal "Quantité maximale à prendre par prise"
* posologie.quantitePrescrite.unite 0..1 code "Unité de la quantité prescrite (ex : comprimé, mg, ...)"

* posologie.quantiteMaxParPeriode 0..* Base "Quantité maximale par unité de temps"
* posologie.quantiteMaxParPeriode.valeurQuantite 0..1 decimal "Valeur maximale pour l'unité de temps donnée"
* posologie.quantiteMaxParPeriode.uniteQuantite 0..1 code "Unité de la quantité"
* posologie.quantiteMaxParPeriode.valeurTemps 0..1 decimal "Valeur du temps"
* posologie.quantiteMaxParPeriode.uniteTemps 0..1 code "Unité de temps" // en FHIR : également par administration et par lifetime


* posologie.evenementDeclenchant 0..* Base "Evenement déclenchant de la prise"
* posologie.evenementDeclenchant.code 0..1 CodeableConcept "Code ou texte de l'évènement déclenchant"
* posologie.evenementDeclenchant.offset 0..1 unsignedInt "Temps en minute avant/après l'élément déclenchant"

* posologie.condition 0..* CodeableConcept "Code ou texte de la condition sous laquelle le traitement doit être pris (ex : en cas de douleurs)."

* posologie.instructionPatient 0..1 string "Instruction au patient sous forme textuelle"

// **********
// * TIMING *
// **********

// Une fréquence par séquence
* posologie.frequence 0..1 Base "Description de fréquence de prise"
* posologie.frequence.valeur 0..1 decimal "Nombre de prise de la quantité \"quantitePrescrite\" par période"
* posologie.frequence.repetitionPeriode 0..1 code "nombre de prise par période (ex : le 3 dans une fois tous les trois jours)"
* posologie.frequence.unitePeriode 0..1 code "unité de la période (ex : jour dans le 3 dans une fois tous les trois jours)"
* posologie.frequence.jourSemaine 0..* code "Jour de la semaine de la prise"
* posologie.frequence.heurePrise 0..1 time "Heure de la prise"
* posologie.frequence.precision 0..1 string "Instruction additionelle"

// durée utilisable en ville et à l'hôpital - ou rythme d'administration
* posologie.dureeAdministration 0..1 Base "Rythme d'administration"
* posologie.dureeAdministration.duree 0..1 decimal "Durée de l'administration"
* posologie.dureeAdministration.dureeUnite 0..1 code "Unité de la durée d'administration"
* posologie.dureeAdministration.dureeMax 0..1 decimal "Durée maximale de l'administration"

* posologie.dateDebut 0..1 dateTime "Date de début de la séquence de traitement"
* posologie.dateFin 0..1 dateTime "Date de fin de la séquence de traitement"

* posologie.dureeTraitement 0..1 Base "Durée du traitement - la durée du traitement peut être indiquée en complément ou à la place des dates de début et de fin de traitement"
* posologie.dureeTraitement.valeur 0..1 string "Valeur de la durée de traitement"
* posologie.dureeTraitement.unite 0..1 code "Unité de la durée de traitement"