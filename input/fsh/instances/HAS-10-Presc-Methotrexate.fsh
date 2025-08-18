Instance: HAS-10-Presc-Methotrexate
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "METHOTREXATE 10 mg comprimé : 1 comprimé 1 fois par semaine, le mardi"
* type = #searchset
* entry.resource = medicationrequest-HAS-10-Presc-Methotrexate

Instance: medicationrequest-HAS-10-Presc-Methotrexate
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé 1 fois par semaine, le mardi"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: METHOTREXATE 10 mg comprimé : 1 comprimé 1 fois par semaine, le mardi"
* medicationCodeableConcept = $Medicabase#MV00003397 "METHOTREXATE 10 mg comprimé"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.timing.repeat.dayOfWeek = #tue
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000