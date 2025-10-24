Instance: HAS-03-Presc-INNOHEP
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "INNOHEP® 14 000 UI anti-Xa/0,7 ml (tinzaparine sodique) solution injectable : 12 000UI anti-Xa (soit 170 UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée"
* type = #searchset
* entry.resource = medicationrequest-HAS-3-Presc-INNOHEP

Instance: medicationrequest-HAS-3-Presc-INNOHEP
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "12 000UI anti-Xa (soit 170UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: INNOHEP® 14 000 UI anti-Xa/0,7 ml (tinzaparine sodique) solution injectable : 12 000UI anti-Xa (soit 170 UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée"
* medicationCodeableConcept = $UCD#3400891846515 "INNOHEP 14000 INJ SRG0,7ML"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "soit 170UI anti-Xa /kg"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $EDQM#20066000 "Voie sous-cutanée"
* dosageInstruction.doseAndRate.doseQuantity.value = 12000
* dosageInstruction.doseAndRate.doseQuantity.unit = "UI anti-Xa"
