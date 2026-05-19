Instance: InLine-Analyse-Presc-METFORMINE
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de METFORMINE pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé 3 fois par jour"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: METFORMINE EG 500MG : 1 comprimé 3 fois par jour​"
* medicationCodeableConcept = $UCD#3400893701126 "METFORMINE EG 500MG CPR"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-23T11:27:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260323112700"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"
