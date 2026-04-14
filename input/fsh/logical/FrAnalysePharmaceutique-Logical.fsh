Logical: FrAnalysePharmaceutiqueLogical				
Id: fr-analyse-pharmaceutique-logical				
Title: "Résultat d'analyse pharmaceutique"				
Description:  """Structure du résultat d'analyse pharmaceutique (validation ou intervention pharmacetique)"""

* date 1..1 dateTime "Date de l'analyse pharmaceutique"
* auteur 1..1 Reference "Identité du professionnel ayant effectué l'analyse"
* lignePrescriptionAnalysee 1..* Reference "Ligne(s) de prescription analysée(s) portant les informations de contexte des lignes analysées"
* resultatAnalyse 1..1 Base
* resultatAnalyse.type 1..1 code "Validation ou Intervention pharmaceutique"
* resultatAnalyse.commentaire 0..1 string "Commentaire de validation ou d'intervention pharmaceutique"
* resultatAnalyse.proposition 0..* Reference "Proposition de ajout/modofcation/suppression de ligne de prescription"
* resultatAnalyse.typeIntervention 0..1 code "Dans le cas d'une intervention pharmaceutique, type d'intervention"
* resultatAnalyse.typeProblème 0..1 code "Dans le cas d'une intervention pharmaceutique, type de problème détecté"
* resultatAnalyse.devenirIntervention 0..1 code "Dans le cas d'une intervention pharmaceutique, devenir de l'intervention"
