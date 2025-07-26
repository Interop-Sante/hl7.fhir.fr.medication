Logical: Posologie				
Id: fr-posologie				
Title: "Posologie"				
Description:  """Structuration d'une posologie en fonction des critères de la HAS."""

// Posologie
* doseEtDebit 0..* Base "Quantité de médicament administrée par prise"
  * dose[x] 0..1 Quantity or Range "La quantité de médicament administrée par prise"
  * dose[x] ^example[0].label = "- 1 comprimé, 2-3 comprimés, 20ml"
  * rate[x] 0..1 Ratio or Quantity or Range "Durée pendant laquelle une dose définie est administrée  (pendant 1 heure, entre 5 et 10 minutes)"
  * rate[x] ^example[0].label = "- pendant 1 heure, entre 5 et 10 minutes"

* sequence 0..1 decimal "Numéro de séquence permettant d'indiquer l'ordre des posologies dans le cas où il y a plusieurs posologies. La séquence s+1 commence à la fin de la séquence s. En cas de séquences ayant le même numéro, celles-ci se déroulent simultanément."

* voieAdministration 0..1 code "Voie d'administration du traitement"
* siteAdministration 0..1 code "Région anatomique d'administration du traitement"

// Une quantité poso par séquence
* quantitePrescrite 0..* Base "Quantité de traitement prescrite"
  * valeur 0..1 decimal "Quantité à prendre par prise"
  * valeurMax 0..1 decimal "Quantité maximale à prendre par prise"
  * unite 0..1 code "Unité de la quantité prescrite (ex : comprimé, mg, ...)"

// Quantité maximale pour une période donnée
// En FHIR, il y a également une quantité max par administration et par durée de vie
* quantiteMaxParPeriode 0..* Base "Quantité maximale par unité de temps"
  * quantite 0..1 SimpleQuantity "Quantité maximale à administrer pour l'unité de temps donnée"
  * duree 0..1 duration "La quantité maximale concerne une durée donnée" 
  * duree ^example[0].label = "- Par jour, par semaine, par mois, ..."

* conditionDePrise 0..* CodeableConcept "Code ou texte de la condition sous laquelle le traitement doit être pris (ex : en cas de douleurs)."

* instructionPatient 0..1 string "Instruction au patient sous forme textuelle"

// **********
// * TIMING *
// **********

// Une fréquence par séquence
* frequence 0..1 Base "Description de fréquence de prise"
  * valeur 0..1 decimal "Nombre de prise de la quantité \"quantitePrescrite\" par période"
  * repetitionPeriode 0..1 code "nombre de prise par période (ex : le 3 dans une fois tous les trois jours)"
  * unitePeriode 0..1 code "unité de la période (ex : jour dans le 3 dans une fois tous les trois jours)"
  * jourSemaine 0..* code "Jour de la semaine de la prise"
  * heurePrise 0..1 time "Heure de la prise"
  * precision 0..1 string "Instruction additionelle"

// durée utilisable en ville et à l'hôpital - ou rythme d'administration
* dureeAdministration 0..1 Base "Durée ou rythme d'administration - indique le temps d'administration"
* dureeAdministration ^example[0].label = "- La durée d'administration est par exemple pertinente pour les perfusion : durée de 10 minutes"
  * duree 0..1 decimal "Durée de l'administration"
  * dureeUnite 0..1 code "Unité de la durée d'administration"
  * dureeMax 0..1 decimal "Durée maximale de l'administration"

* date[x] 0..1 Period or duration or Range "Période de la séquence (date de début et de fin), durée ou intervalle de traitement (un parmi les trois)"
* date[x] ^example[0].label = "- La période représente une date de début et de fin (ex : du 1/10/2025 au 10/10/2025), la durée représente une quantité (ex : 5 jours), l'intervalle représente une quantité minimale et une quantité maximale (ex : de 5 à 10 jours))"
// * datePeriod 0..1 Period "Date de début et de fin de la séquence de traitement"
// * dateDuration 0..1 Quantity "Durée du traitement (ex : pendant 5 jours)"
// * dateRange 0..1 Range "Un intervalle de durée de traitement (ex : 5 à 10 jours)"

* dateDePrise 0..* dateTime "Date précise du moment de prise"

* momentDePrise 0..* Base "Définition du moment de prise au cours de la journée (ex : 30 minutes avant le repas)"
  * code 0..1 CodeableConcept "Code ou texte du moment de prise"
  * offset 0..1 unsignedInt "Temps en minute avant/après l'élément déclenchant"

* evenementFinSequence 0..1 CodeableConcept "Evenement de fin de la séquence"
