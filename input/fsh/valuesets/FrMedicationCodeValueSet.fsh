ValueSet: FrMedicationCodes
Id: fr-medication-code
Title: "value set Interop'Santé - Codes identifiant les médicaments"
Description: "Le jeu de valeurs à utiliser pour indiquer le médicament dans Medication.code.coding.code"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system $UCD
* include codes from system $SMS
* include codes from system $TechANSM
