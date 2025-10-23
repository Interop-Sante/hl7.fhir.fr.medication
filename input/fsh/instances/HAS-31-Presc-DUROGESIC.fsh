Instance: HAS-31-Presc-DUROGESIC
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "DUROGESIC® dispositif transdermique 25 μg : un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines."
* type = #searchset
* entry.resource = medicationrequest-HAS-31-Presc-DUROGESIC

Instance: medicationrequest-HAS-31-Presc-DUROGESIC
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: DUROGESIC® dispositif transdermique 25 μg : un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines."
* medicationCodeableConcept = $UCD#3400891937626 "DUROGESIC 25µG/H DISP TRANS"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.boundsDuration.value = 2
* dosageInstruction.timing.repeat.boundsDuration.unit = "semaines"
* dosageInstruction.timing.repeat.boundsDuration.system = $unitsofmeasure
* dosageInstruction.timing.repeat.boundsDuration.code = #wk
* dosageInstruction.timing.repeat.duration = 72
* dosageInstruction.timing.repeat.durationUnit = #h
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 72
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15036000 "dispositif transdermique"