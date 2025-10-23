Instance: HAS-32-2-Presc-ULTIBRO_BREES
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "ULTIBRO BREEZ® 85/43 µg gélule : 1 gélule à administrer par voie inhalée à la même heure chaque jour pendant 1 mois."
* type = #searchset
* entry.resource = medicationrequest-HAS-32-2-Presc-ULTIBRO_BREES

Instance: medicationrequest-HAS-32-2-Presc-ULTIBRO_BREES
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 gélule à administrer par voie inhalée à la même heure chaque jour pendant 1 mois."
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: ULTIBRO BREEZ® 85/43 µg gélule : 1 gélule à administrer par voie inhalée à la même heure chaque jour pendant 1 mois."
* medicationCodeableConcept = $UCD#3400893964361 "ULTIBRO BREEZ.85/43 GELU+INH"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "à la même heure chaque jour"
* dosageInstruction.timing.repeat.boundsDuration = 1 $unitsofmeasure#mo "mois"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $EDQM#20020000 "Voie inhalée"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Gélule ou capsule molle"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15012000
