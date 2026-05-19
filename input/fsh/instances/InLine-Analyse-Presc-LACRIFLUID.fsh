Instance: InLine-Analyse-Presc-LACRIFLUID
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de LACRIFLUID pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 goutte 2 fois par jour"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: LACRIFLUID 0,13% CY UNIDOS: 1 goutte 2 fois par jour​"
* medicationCodeableConcept = $UCD#3400893062555 "LACRIFLUID 0,13% CY UNIDOS"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-18T09:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260318093300"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15022000 "Goutte"
