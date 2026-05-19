Instance: InLine-Analyse-Presc-CALCIDOSE
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de CALCIDOSE pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 sachet au petit déjeuner"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: CALCIDOSE D3 500MG/800UI: 1 sachet au petit déjeuner"
* medicationCodeableConcept = $UCD#3400890007368 "CALCIDOSE D3 500MG/800U SACH"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-20T16:10:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260320161000"
* dosageInstruction.timing.repeat.when = #CM
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15045000 "Sachet"