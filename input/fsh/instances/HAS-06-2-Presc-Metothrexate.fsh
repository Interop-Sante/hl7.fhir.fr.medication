Instance: HAS-06-2-Presc-Methotrexate
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "METHOTREXATE 10 mg comprimé (sécable) : 20 mg, 1 fois par semaine, le mardi"
* type = #searchset
* entry.resource = medicationrequest-HAS-6-2-Presc-Methotrexate

Instance: medicationrequest-HAS-6-2-Presc-Methotrexate
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "20 mg, 1 fois par semaine, le mardi"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: METHOTREXATE  10 mg comprimé (sécable) : 20 mg, 1 fois par semaine, le mardi"
* medicationCodeableConcept = $Medicabase#MV00003397 "METHOTREXATE 10 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.timing.repeat.dayOfWeek = #tue
* dosageInstruction.doseAndRate.doseQuantity.value = 20
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #mg