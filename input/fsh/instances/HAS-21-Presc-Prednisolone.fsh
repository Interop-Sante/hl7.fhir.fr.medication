Instance: HAS-21-Presc-Prednisolone
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-21-Presc-Prednisolone

Instance: medicationrequest-HAS-21-Presc-Prednisolone
InstanceOf: FrPatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PREDNISOLONE 20 mg comprimé (sécable) : 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00002248 "PREDNISOLONE 20 mg comprimé"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].additionalInstruction.text = "Jusqu'à obtenir 3 bandelettes urinaires négatives"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].doseAndRate.doseQuantity = 60 $unitsofmeasure#mg "mg"
* dosageInstruction[+].sequence = 2
* dosageInstruction[=].timing.repeat.duration = 1
* dosageInstruction[=].timing.repeat.durationUnit = #wk
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].doseAndRate.doseQuantity = 50 $unitsofmeasure#mg "mg"
* dosageInstruction[+].sequence = 3
* dosageInstruction[=].timing.repeat.duration = 1
* dosageInstruction[=].timing.repeat.durationUnit = #wk
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].doseAndRate.doseQuantity = 40 $unitsofmeasure#mg "mg"
* dosageInstruction[+].sequence = 4
* dosageInstruction[=].timing.repeat.duration = 1
* dosageInstruction[=].timing.repeat.durationUnit = #wk
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].doseAndRate.doseQuantity = 30 $unitsofmeasure#mg "mg"
* dosageInstruction[+].sequence = 5
* dosageInstruction[=].timing.repeat.duration = 1
* dosageInstruction[=].timing.repeat.durationUnit = #wk
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].doseAndRate.doseQuantity = 20 $unitsofmeasure#mg "mg"
* dosageInstruction[+].sequence = 6
* dosageInstruction[=].timing.repeat.duration = 1
* dosageInstruction[=].timing.repeat.durationUnit = #wk
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].doseAndRate.doseQuantity = 10 $unitsofmeasure#mg "mg"
* dosageInstruction[+].sequence = 7
* dosageInstruction[=].additionalInstruction.text = "Revoir pour l'arrêt selon évolution"