Instance: HAS-16-Presc-Racecadotril
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "RACECADOTRIL 100 mg gélule: 1 gélule 3 fois par jour au début de chaque repas. A poursuivre tant que la diarrhée persiste avec un maximum de 7 jours"
* type = #searchset
* entry.resource = medicationrequest-HAS-16-Presc-Racecadotril

Instance: medicationrequest-HAS-16-Presc-Racecadotril
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 gélule 3 fois par jour au début de chaque repas. A poursuivre tant que la diarrhée persiste avec un maximum de 7 jours."
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: RACECADOTRIL 100 mg gélule: 1 gélule 3 fois par jour au début de chaque repas. A poursuivre tant que la diarrhée persiste avec un maximum de 7 jours."
* medicationCodeableConcept = $Medicabase#MV00000139 "RACECADOTRIL 100 mg gélule"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "A poursuivre tant que la diarrhée persiste"
* dosageInstruction.timing.repeat.countMax = 21
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.when = #AC
* dosageInstruction.timing.repeat.offset = 0
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "gélule"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15012000