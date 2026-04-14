Instance: InLine-Analyse-Presc-DOSTINEX
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de DOSTINEX pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé par semaine"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: DOSTINEX 0,5MG: 1 comprimé par semaine"
* medicationCodeableConcept = $UCD#3400891990263 "DOSTINEX 0,5MG CPR"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-20T16:31:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260320163100"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"