Logical: LignePrescription				
Id: fr-ligne-prescription				
Title: "Ligne de prescription"				
Description:  """Structuration d'une ligne de prescription [WIP - à compléter]."""

// A rajouter : instruction au dispensateur, prescripteur, patient, ...

// Description du médicament
* traitement 0..1 Base "Identification du traitement concerné par la ligne de prescription"
* traitement.identifiant 0..1 Identifier "Identifiant du traitement prescrit"			
* traitement.dosage 0..* Base "Quantité de substance active dans une unité de dispensation"
* traitement.dosage.valeur 0..1 decimal "Valeur du dosage dans une unité de dispensiation"
* traitement.dosage.unite 0..1 code "Unité du dosage dans une unité de dispensiation"
* traitement.forme 0..1 code "Forme galénique de l'unité de dispensation"

* dateDebut 0..1 dateTime "Date de début de la ligne de prescription"
* dateFin 0..1 dateTime "Date de fin de la ligne de prescription"

* posologie 0..* Posologie "Structure de la posologie par séquences de prise."

* quantitePrescrite 0..* Quantity "Quantité totale de traitement prescrite, indépendamment des séquences. Cela permet d'aider la dispensation dans le cas d'une unité non convertible (exemple : crème avec une posologie en \"application\")"
