Logical: lignePrescription				
Id: fr-ligne-prescription				
Title: "Ligne de precription"				
Description:  """Structuration de la posologie en fonction des critères de la HAS."""

// Description du médicament
* traitement 0..1 base "traitement identifié"
* traitement.identifiant 0..1 Identifier "Identifiant du traitement prescrit"			
* traitement.dosage 0..* Base "Quantité de substance active dans le médicament"
* traitement.dosage.valeur 0..1 decimal "Valeur du dosage"
* traitement.dosage.unite 0..1 code "Unité du dosage"
* traitement.forme 0..1 code "Forme galénique"


// Posologie
* posologie 0..* base "posologie"
* posologie.sequence 0..1 decimal "Numéro de séquence"
* posologie.voieAdministration 0..1 code "Voie d'administration du traitement"
* posologie.siteAdministration 0..1 code "région anatomique d'administration"

// Une quantité poso par séquence
* posologie.quantitéPrescrite 0..* base "quantité prescrite"
* posologie.quantitéPrescrite.min 0..1 decimal "quantité minimale à prendre par prise"
* posologie.quantitéPrescrite.max 0..1 decimal "quantité maximale par prise" // diffQuantitéMax ?
* posologie.quantitéPrescrite.unite 0..1 code "Unité de la quantité prescrite"

* posologie.quantitéMax 0..* base "quantité maximale par unité de temps"
* posologie.quantitéMax.valeur 0..1 decimal "Valeur maximale"
* posologie.quantitéMax.uniteTemps 0..1 code "Unité de temps" // en FHIR : uniquement par administration et par lifetime
* posologie.quantitéMax.uniteQuantite 0..1 code "Unité de la quantité"

* posologie.evenementDéclenchant 0..* base "Evenement déclenchant de la prise" // Il devrait y en avoir une par fréquence non ?
* posologie.evenementDeclenchant.code 0..1 CodeableConcept "Code ou texte de l'évènement déclenchant"
* posologie.evenementDeclenchant.offset 0..1 unsignedInt "Temps en minute avant/après l'élément déclenchant"

* posologie.condition 0..* CodeableConcept "condition de traitement"

* posologie.instructionPatient 0..* string "Instructions au patient sous forme textuelle"

// **********
// * TIMING *
// **********

// Une fréquence par séquence
* posologie.frequence 0..* base "Fréquence de prise"
* posologie.frequence.valeur 0..1 decimal "Valeur maximale"
* posologie.frequence.unite 0..1 code "Unité de temps"
* posologie.frequence.jourSemaine 0..* code "Jour de la semaine de la prise"
* posologie.frequence.heurePrise 0..1 time "Heure de la prise"
* posologie.frequence.precision 0..1 string "Instruction additionelle"


* posologie.dureeAdministration 0..1 base "durée d'administration"
* posologie.dureeAdministration.duree 0..1 decimal "Durée de l'administration"
* posologie.dureeAdministration.dureeUnite 0..1 code "Unité de la durée d'administration"
* posologie.dureeAdministration.dureeMax 0..1 decimal "Durée maximale de l'administration"

// les dates de début et de fin doivent être au niveau de la fréquence car il peut y avoir plusieurs séquences avec chacune un début et une fin
* posologie.dateDebut 0..1 dateTime "Date de début de traitement"
* posologie.dateFin 0..1 dateTime "Date de fin de traitement"

// la durée du traitement doit être au niveau de la fréquence car il peut y avoir plusieurs séquences avec chacune une durée propre
* posologie.dureeTraitement 0..1 base "durée du traitement"
* posologie.dureeTraitement.valeur 0..1 string "Valeur de la durée de traitement"
* posologie.dureeTraitement.unite 0..1 code "Unité de la durée de traitement"