Instance: HAS-01-Presc-Pantoprazole-MV
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "PANTOPRAZOLE 40 mg comprimé: 40 mg le soir en MV"
* type = #searchset
* entry.resource = medicationrequest-HAS-1-Presc-Pantoprazole-MV

Instance: medicationrequest-HAS-1-Presc-Pantoprazole-MV
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "40 mg le soir"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: PANTOPRAZOLE 40 mg comprimé: 40 mg le soir"
* medicationCodeableConcept = $Medicabase#MV00000792 "PANTOPRAZOLE 40 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.when = #EVE
* dosageInstruction.doseAndRate.doseQuantity.value = 40
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #mg