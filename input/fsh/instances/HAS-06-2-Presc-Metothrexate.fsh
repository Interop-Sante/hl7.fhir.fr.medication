Instance: HAS-06-2-Presc-Methotrexate
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "METHOTREXATE  10 mg comprimé (sécable) : 20 mg, 1 fois par semaine, le mardi"
* type = #searchset
* entry[0].resource = medicationrequest-HAS-6-2-Presc-Methotrexate

Instance: medicationrequest-HAS-6-2-Presc-Methotrexate
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* extension[renderedDosageInstruction].valueMarkdown = "20 mg, 1 fois par semaine, le mardi"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: METHOTREXATE  10 mg comprimé (sécable) : 20 mg, 1 fois par semaine, le mardi"
* medicationCodeableConcept = $Medicabase#MV00003397 "METHOTREXATE 10 mg comprimé"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.timing.repeat.dayOfWeek = #tue
* dosageInstruction.doseAndRate.doseQuantity.value = 20
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #mg