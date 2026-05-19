Instance: InLine-Analyse-Presc-INNOHEP
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de INNOHEP pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "Deux seringues toutes les 12 heures"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: INNOHEP 2 500 UI anti-Xa/0,25 ml : Deux seringues préremplies toutes les 12 heures"
* medicationCodeableConcept = $UCD#3400933433154 "NNOHEP 2 500 UI anti-Xa/0,25 ml, solution injectable en seringue préremplie - 10 seringue(s) préremplie(s) en verre de 0,25 ml"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-20T17:31:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260320173100"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 12
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseQuantity = 2 $EDQM#15052000 "Seringue"