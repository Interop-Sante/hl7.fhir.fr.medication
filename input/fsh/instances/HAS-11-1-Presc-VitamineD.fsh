Instance: HAS-11-1-Presc-VitamineD
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "VITAMINE D 100 000 UI solution buvable : 1 ampoule, le premier jour de chaque mois"
* type = #searchset
* entry.resource = medicationrequest-HAS-11-1-Presc-VitamineD

Instance: medicationrequest-HAS-11-1-Presc-VitamineD
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 ampoule, le premier jour de chaque mois"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: VITAMINE D 100 000 UI solution buvable : 1 ampoule, le premier jour de chaque mois"
* medicationCodeableConcept = $Medicabase#MV00000507 "VITAMINE D 100 000 UI solution buvable (colécalciférol * 100 000 UI/2 ml ; voie orale ; sol buv)"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "le premier jour du mois"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #mo
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "ampoule"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15002000