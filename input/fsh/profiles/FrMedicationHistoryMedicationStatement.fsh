Profile: FrMedicationHistoryMedicationStatement
Parent: MedicationStatement
Id: fr-medication-history-medicationstatement
Description: """Profil de la ressource *MedicationStatement* du Bilan médicamenteux.
Medication History MedicationStatement resource profile"""

* ^purpose = "Ce profil est utilisé pour les ressources MedicationStatement figurant dans un bilan médicamenteux. Chaque ressource MeciationStatement y représente une ligne de médicament du Bilan."
* . ^short = "Ligne de traitement médicamenteux du Bilan Médicamenteux"
* . ^definition = "Ligne de traitement médicamenteux du Bilan Médicamenteux, avec son *sourcing* (liste des sources concordantes attanchées à cette ligne)."
* . ^comment = "Les règles natives HL7-FHIR sont applicables et à respecter. When interpreting a medicationStatement, the value of the status and NotTaken needed to be considered:\r1. MedicationStatement.status + MedicationStatement.wasNotTaken\r2. Status=Active + NotTaken=T = Not currently taking\r3. Status=Completed + NotTaken=T = Not taken in the past\r4. Status=Intended + NotTaken=T = No intention of taking\r5. Status=Active + NotTaken=F = Taking, but not as prescribed\r6. Status=Active + NotTaken=F = Taking\r7. Status=Intended +NotTaken= F = Will be taking (not started)\r8. Status=Completed + NotTaken=F = Taken in past\r9. Status=In Error + NotTaken=N/A = In Error."

* meta.tag ..0
* meta.tag ^requirements = "applications are not required to consider the tags when interpreting the meaning of a resource"
* implicitRules ..0
* implicitRules ^requirements = "--> implementers and/or specification writers should avoid using this element"
* language ^meaningWhenMissing = "langage de la ressource parente *Composition*"

* status MS
* medication[x] only Reference(FrMedication)
* medication[x] MS
* medication[x] ^short = "Le médicament constitutif de cette ligne"
* medication[x] ^definition = "Identifie le médicament constitutif de cette ligne. C'est lien vers une ressource Medication qui décrit ce médicament."
* medication[x] ^comment = "Même si le médicament n'est composé que d'une spécialité (par exemple un comprimé), il est défini par référence à une Medication qui décrira sa composition d'une seule spécialité"
* medication[x] ^requirements = "traitement univoque de l'élément *medication[x]*"
* medication[x].reference 1..
* medication[x].reference ^requirements = "Identification du *médicament* uniquement par référence à une ressource *Medication* profilée *fr-medication*\\."
* medication[x].type = "Medication" (exactly)
* medication[x].identifier ..0
* medication[x].identifier ^requirements = "Identification du *médicament* uniquement par référence à une ressource *Medication* profilée *fr-medication*\\."
* subject only Reference(FRCorePatientProfile)
* subject MS
* subject ^definition = "Le patient qui prend cette ligne de traitement médicamenteux."
* subject ^comment = "Obligatoire dans la ressource FHIR *MedicationStatement* originelle, donc DOIT ABSOLUMENT être identique au patient identifé dans la ressource *Composition* du Bilan Médicamenteux. Cf. *Composition.subjet*\\."
* subject ^requirements = "Le Bilan Médicamenteux ne s'applique qu'à un seul patient. Toutes ses lignes doivent référencer le même patient, celui référencé par l'element *subject* de la ressource parente *Composition*\\."
* subject.type = "Patient" (exactly)
* informationSource ..0 MS
* informationSource ^comment = "Dans le contexte de la Conciliation des Traitements médicamenteux, le sourcing des informations de la ligne du Bilan Médicamenteux doit être réalisé à travers l'extension *statementSourcing* et à travers elle seulement"
* informationSource ^requirements = "Garantir la règle de gestion du sourcing exclusivement à travers l'extension *statementSourcing*"
* dosage MS
* dosage.doseAndRate.dose[x] only FrRangeMedication
* dosage.doseAndRate.dose[x] MS
* dosage.doseAndRate.dose[x] ^short = "Precise amount of medication per dose"
* dosage.doseAndRate.dose[x] ^definition = "Amount of medication per dose. No use of element 'comparator' in the simpleQuantity definitions."
* dosage.doseAndRate.rate[x] only FrRatioMedication
* dosage.doseAndRate.rate[x] MS
* dosage.maxDosePerPeriod only FrRatioMedication
* dosage.maxDosePerPeriod MS
* dosage.maxDosePerPeriod ^short = "Upper precise limit on medication per unit of time"
* dosage.maxDosePerPeriod ^definition = "Upper limit on medication per unit of time. This datatype excludes measurements whose uncertainity is described by the simpleQuantity \"comparator\" element."
* dosage.maxDosePerAdministration only FrSimpleQuantityMedication
* dosage.maxDosePerAdministration MS
* dosage.maxDosePerAdministration ^short = "Precise upper limit on medication per administration with UCUM or EDQM unit"
* dosage.maxDosePerAdministration ^definition = "Fixed upper limit on medication per administration with UCUM or EDQM unit."
* dosage.maxDosePerLifetime only FrSimpleQuantityMedication
* dosage.maxDosePerLifetime MS
* dosage.maxDosePerLifetime ^short = "A fixed measured or measurable amount with UCUM or EDQM unit"
