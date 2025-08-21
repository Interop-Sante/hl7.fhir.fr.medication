Instance: HAS-27-2-Rifampicine
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "RIFAMPICINE 300 mg en gélule 2 gélules le matin 30 minutes avant le petit-déjeuner"
* type = #searchset
* entry.resource = medicationrequest-HAS-27-2-Rifampicine

Instance: medicationrequest-HAS-27-2-Rifampicine
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "2 gélules le matin 30 minutes avant le petit-déjeuner"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: RIFAMPICINE 300 mg en gélule 2 gélules le matin 30 minutes avant le petit-déjeuner​"
* medicationCodeableConcept = $Medicabase#MV00002500 "RIFAMPICINE 300 mg en gélule"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.when = #ACM
* dosageInstruction.timing.repeat.offset = 30
* dosageInstruction.doseAndRate.doseQuantity = 2 $EDQM#15012000 "Gélule ou capsule molle"

