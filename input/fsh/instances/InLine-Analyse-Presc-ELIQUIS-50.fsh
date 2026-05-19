Instance: InLine-Analyse-Presc-ELIQUIS-50
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de ELIQUIS 5MG pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "2 comprimés par jour"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: ELIQUIS 5MG : 2 comprimés par jour​"
* medicationCodeableConcept = $UCD#3400893887738 "ELIQUIS 5MG CPR"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-22T16:34:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260322163400"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"