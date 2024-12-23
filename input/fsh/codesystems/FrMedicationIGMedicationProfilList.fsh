CodeSystem: FrMedicationIGMedicationProfileList
Id: fr-medication-profil-list
Title: "Liste des profils définis par l'IG Medication pour la ressource Medication"
Description: "Liste des noms associés aux titres"
// Toujours pas comprise comment c'était généré automatiquement mais comme il me faut la référencer j'ai indiquer l'url pressentie. On verra lors de la génération comment le rendre cohérent
* ^status = #draft
* ^experimental = false
* ^content = #complete
* ^count = 3
* #FrMedicationUcd "French branded name Medication"
* #FrMedicationNonproprietaryName "French non proprietary name Medication"
* #FrMedicationCompound "French compound Medication"