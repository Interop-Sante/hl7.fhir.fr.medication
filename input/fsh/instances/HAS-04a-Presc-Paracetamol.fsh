Instance: HAS-04a-Presc-Paracetamol
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "PARACETAMOL 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs"
* type = #searchset
* entry.resource = medicationrequest-HAS-4a-Presc-Paracetamol

Instance: medicationrequest-HAS-4a-Presc-Paracetamol
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "2 gélules toutes les 6 h pendant 10 jours si douleurs"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $Medicabase#MV00000557 "PARACETAMOL 500 mg gélule"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-06T14:48:44+02:00"
* requester.identifier.value = "899999999999"
* note.text = "Prescription textuelle: Prescription textuelle: PARACETAMOL 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs"
* dosageInstruction.timing.repeat.boundsDuration.value = 10
* dosageInstruction.timing.repeat.boundsDuration.unit = "jour"
* dosageInstruction.timing.repeat.boundsDuration.system = $unitsofmeasure
* dosageInstruction.timing.repeat.boundsDuration.code = #d
* dosageInstruction.asNeededCodeableConcept = $sct#22253000 "douleur"
* dosageInstruction.asNeededCodeableConcept.text = "Si douleurs"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseQuantity.value = 2
* dosageInstruction.doseAndRate.doseQuantity.unit = "gélule ou capsule molle"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15012000
