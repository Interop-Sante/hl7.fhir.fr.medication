Logical: Posologie				
Id: fr-posologie				
Title: "Posologie"				
Description:  """Structuration d'une posologie en fonction des critères de la HAS."""


// Posologie
* doseEtDebit 0..* Base "Quantité de médicament administré par prise"
  * dose[x] 0..1 Quantity or Range "La quantité de médicament administrée par prise. (1 comprimé, 2-3 comprimés, 20ml)"
  * rate[x] 0..1 Ratio or Quantity or Range "Durée pendant laquel une dose définie est administére  (pendant 1 heure, entre 5 et 10 minutes)"

* sequence 0..1 decimal "Numéro de séquence. La séquence s+1 commence à la fin de la séquence s. En cas de séquences ayant le même numéro, celles-ci se déroulent simultanément."

* evenementFinSequence 0..1 CodeableConcept "Evenement de fin de la séquence"

* voieAdministration 0..1 code "Voie d'administration du traitement"
* siteAdministration 0..1 code "Région anatomique d'administration du traitement"

// Une quantité poso par séquence
* quantitePrescrite 0..* Base "Quantité de traitement prescrite"
* quantitePrescrite.valeur 0..1 decimal "Quantité à prendre par prise"
* quantitePrescrite.valeurMax 0..1 decimal "Quantité maximale à prendre par prise"
* quantitePrescrite.unite 0..1 code "Unité de la quantité prescrite (ex : comprimé, mg, ...)"

* quantiteMaxParPeriode 0..* Base "Quantité maximale par unité de temps"
* quantiteMaxParPeriode.valeurQuantite 0..1 decimal "Valeur maximale pour l'unité de temps donnée"
* quantiteMaxParPeriode.uniteQuantite 0..1 code "Unité de la quantité"
* quantiteMaxParPeriode.valeurTemps 0..1 decimal "Valeur du temps"
* quantiteMaxParPeriode.uniteTemps 0..1 code "Unité de temps" // en FHIR : également par administration et par lifetime


* conditionDePrise 0..* CodeableConcept "Code ou texte de la condition sous laquelle le traitement doit être pris (ex : en cas de douleurs)."

* instructionPatient 0..1 string "Instruction au patient sous forme textuelle"

// **********
// * TIMING *
// **********

// Une fréquence par séquence
* frequence 0..1 Base "Description de fréquence de prise"
* frequence.valeur 0..1 decimal "Nombre de prise de la quantité \"quantitePrescrite\" par période"
* frequence.repetitionPeriode 0..1 code "nombre de prise par période (ex : le 3 dans une fois tous les trois jours)"
* frequence.unitePeriode 0..1 code "unité de la période (ex : jour dans le 3 dans une fois tous les trois jours)"
* frequence.jourSemaine 0..* code "Jour de la semaine de la prise"
* frequence.heurePrise 0..1 time "Heure de la prise"
* frequence.precision 0..1 string "Instruction additionelle"

// durée utilisable en ville et à l'hôpital - ou rythme d'administration
* dureeAdministration 0..1 Base "Rythme d'administration"
* dureeAdministration.duree 0..1 decimal "Durée de l'administration"
* dureeAdministration.dureeUnite 0..1 code "Unité de la durée d'administration"
* dureeAdministration.dureeMax 0..1 decimal "Durée maximale de l'administration"

* date[x] 0..1 Period or duration or Range "Dates de début, de fin, durée ou intervalle de traitement (un parmi les trois)"
* datePeriode 0..1 Period "Date de début et de fin de la séquence de traitement"
* dateDurée 0..1 Quantity "Durée du traitement"
* dateIntervalle 0..1 Range "Un intervalle de durée de traitement (ex : 5 à 10 jours)"

* dateDePrise 0..1 dateTime "Date précise du moment de prise"

* dureeTraitement 0..1 Base "Durée du traitement - la durée du traitement peut être indiquée en complément ou à la place des dates de début et de fin de traitement"
* dureeTraitement.valeur 0..1 string "Valeur de la durée de traitement"
* dureeTraitement.unite 0..1 code "Unité de la durée de traitement"

* momentDePrise 0..* Base "moment de la prise au cours de la journée (ex : 30 minutes avant le repas)"
* momentDePrise.code 0..1 CodeableConcept "Code ou texte du moment de prise"
* momentDePrise.offset 0..1 unsignedInt "Temps en minute avant/après l'élément déclenchant"
