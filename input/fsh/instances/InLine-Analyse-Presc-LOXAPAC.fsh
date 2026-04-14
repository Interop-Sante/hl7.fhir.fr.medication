Instance: InLine-Analyse-Presc-LOXAPAC
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de LOXAPAC pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "60 gouttes par jour"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: LOXAPAC 25MG/ML: 60 gouttes par jour"
* medicationCodeableConcept = $UCD#3400890551847 "LOXAPAC 25MG/ML BUV FV30ML"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-20T16:53:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260320165300"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 60 $EDQM#15022000 "Goutte"