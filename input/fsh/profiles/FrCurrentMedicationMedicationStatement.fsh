Profile: FRCurrentMedicationMedicationStatement
Parent: MedicationStatement
Id: fr-current-medication-medicationstatement
Title: "FR Current Medication MedicationStatement"
Description: """Profil de la ressource *MedicationStatement* du traitement médicamenteux courant.
Current Medication MedicationStatement resource profile"""

* ^status = #draft
* . ^short = "Ligne de traitement médicamenteux du Traitement Médicamenteux Courant"
* . ^definition = "Ligne de traitement médicamenteux du Traitement Médicamenteux Courant hospitalier."
* implicitRules ..0
* language ^defaultValueCode = #fr-FR
* status MS
* medication[x] only Reference(fr-medication)
* medication[x] MS
* medication[x] ^short = "Le médicament constitutif de cette ligne"
* medication[x] ^definition = "Identifie le médicament constitutif de cette ligne. C'est le lien vers une ressource *Medication* qui décrit ce médicament."
* medication[x] ^comment = "Même si le médicament n'est composé que d'une spécialité (par exemple un comprimé), il est défini par référence à une ressource *Medication* qui décrira sa composition d'une seule spécialité"
* medication[x] ^requirements = "traitement univoque de l'élément *medication[x]*"
* medication[x].reference 1..1 MS
* medication[x].reference ^requirements = "Identification du *médicament* uniquement par référence à une ressource *Medication* profilée *fr_medication*\\."
* medication[x].type 0..1
* medication[x].type = "Medication"
* medication[x].identifier 0..0 MS
* medication[x].identifier ^requirements = "Identification du *médicament* uniquement par référence à une ressource *Medication* profilée *fr-medication*\\."

* subject only Reference($FrCorePatient)
* subject MS
* subject ^short = "Le patient qui prend cette ligne de traitement médicamenteux"
* subject ^definition = "Le patient qui prend cette ligne de traitement médicamenteux. Le Traitement Médicamenteux Courant ne concerne qu'un patient. Toutes ses lignes doivent référencer le même patient."
* subject ^comment = "Obligatoire dans la ressource FHIR *MedicationStatement* originelle, donc DOIT ABSOLUMENT être identique à la personne à laquelle se rapporte ce document (voir element *subject* de la ressource parente *Composition*\\)."
* subject ^requirements = "Le Traitement Médicamenteux Courant ne concerne qu'un seul et même patient. Toutes ses lignes doivent référencer le même patient, celui référencé par l'element *subject* de la ressource parente *Composition*\\."

* subject.type = "Patient"

* dosage MS
* dosage.doseAndRate MS

* dosage.doseAndRate.dose[x] MS 
* dosage.doseAndRate.dose[x] only FrRangeMedication
* dosage.doseAndRate.dose[x] ^short = "Amount of medication per dose. No use of element 'comparator' in the simpleQuantity definitions."

* dosage.doseAndRate.rate[x] MS 
* dosage.doseAndRate.rate[x] only FrRatioMedication

* dosage.maxDosePerPeriod MS 
* dosage.maxDosePerPeriod only FrRatioMedication
* dosage.maxDosePerAdministration MS 
* dosage.maxDosePerAdministration only FrSimpleQuantityMedication
* dosage.maxDosePerLifetime MS 
* dosage.maxDosePerLifetime only FrSimpleQuantityMedication