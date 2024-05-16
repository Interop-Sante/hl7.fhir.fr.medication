Profile: FrCurrentMedicationMedicationStatement
Parent: MedicationStatement
Id: FrCurrentMedicationMedicationStatement
Description: """Profil de la ressource *MedicationStatement* du traitement médicamenteux courant.
Current Medication MedicationStatement resource profile"""
* ^version = "0.2.0"
* ^status = #draft
* ^date = "2021-06-24"
* ^publisher = "InterOp'Santé - FRANCE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@interopsante.org"
* ^purpose = "Ce profil est utilisé pour les ressources *MedicationStatement* figurant dans le traitement médicamenteux courant. Chaque ressource *MedicationStatement* y représente une ligne de médicament du traitement médicamenteux courant."
* ^copyright = "InterOp'Santé 2021"
* . MS
* . ^short = "Ligne de traitement médicamenteux du Traitement Médicamenteux Courant"
* . ^definition = "Ligne de traitement médicamenteux du Traitement Médicamenteux Courant hospitalier."
* . ^comment = "Les règles natives HL7-FHIR sont applicables et à respecter. When interpreting a medicationStatement, the value of the status and NotTaken needed to be considered:\r1. MedicationStatement.status + MedicationStatement.wasNotTaken\r2. Status=Active + NotTaken=T = Not currently taking\r3. Status=Completed + NotTaken=T = Not taken in the past\r4. Status=Intended + NotTaken=T = No intention of taking\r5. Status=Active + NotTaken=F = Taking, but not as prescribed\r6. Status=Active + NotTaken=F = Taking\r7. Status=Intended +NotTaken= F = Will be taking (not started)\r8. Status=Completed + NotTaken=F = Taken in past\r9. Status=In Error + NotTaken=N/A = In Error."
* implicitRules ..0
* language ^defaultValueCode = #fr-FR
* status MS
* medication[x] only Reference(http://interopsante.org/fhir/StructureDefinition/FrMedication)
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
* subject.type 0..1
* subject.type = "Patient"

* dosage MS
* dosage.doseAndRate MS

* dosage.doseAndRate.dose[x] MS 
* dosage.doseAndRate.dose[x] only FrRangeUcum or FrSimpleQuantityUcum 
* dosage.doseAndRate.dose[x] ^short = "Amount of medication per dose. No use of element 'comparator' in the simpleQuantity definitions."

* dosage.doseAndRate.rate[x] MS 
* dosage.doseAndRate.rate[x] only FrRatioUcum or FrRangeUcum or FrSimpleQuantityUcum
* dosage.maxDosePerPeriod MS 
* dosage.maxDosePerPeriod only FrRatioUcum
* dosage.maxDosePerAdministration MS 
* dosage.maxDosePerAdministration only FrSimpleQuantityUcum
* dosage.maxDosePerLifetime MS 
* dosage.maxDosePerLifetime only FrSimpleQuantityUcum