Instance: HAS-24-1-presc-Topiramate
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "TOPIRAMATE 15 mg gélule: 1 gélule par jour. Si difficulté à prendre la gélule, l'ouvrir et en administrer le contenu avec un peu de compote"
* type = #searchset
* entry.resource = medicationrequest-HAS-24-1-Presc-Topiramate

Instance: medicationrequest-HAS-24-1-Presc-Topiramate
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 gélule par jour. Si difficulté à prendre la gélule, l'ouvrir et en administrer le contenu avec un peu de compote"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: TOPIRAMATE 15 mg gélule: 1 gélule par jour. Si difficulté à prendre la gélule, l'ouvrir et en administrer le contenu avec un peu de compote."
* medicationCodeableConcept = $Medicabase#MV00002365 "TOPIRAMATE 15 mg gélule"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "Si difficulté à prendre la gélule, l'ouvrir et en administrer le contenu avec un peu de compote."
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15012000 "Gélule ou capsule molle"
