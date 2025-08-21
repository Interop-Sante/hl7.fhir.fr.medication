Instance: HAS-05-2-Presc-ACTISKENAN
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "ACTISKENAN® 10 mg gélule : dix milligrammes par jour pendant sept jours"
* type = #searchset
* entry.resource = medicationrequest-HAS-5-2-Presc-ACTISKENAN

Instance: medicationrequest-HAS-5-2-Presc-ACTISKENAN
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "dix milligrammes par jour pendant sept jours"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: ACTISKENAN® 10 mg gélule : dix milligrammes par jour pendant sept jours"
* medicationCodeableConcept = $UCD#3400892083926 "ACTISKENAN 10MG GELU"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.boundsDuration.value = 7
* dosageInstruction.timing.repeat.boundsDuration.unit = "jour"
* dosageInstruction.timing.repeat.boundsDuration.system = $unitsofmeasure
* dosageInstruction.timing.repeat.boundsDuration.code = #d
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 10 $unitsofmeasure#mg "mg"