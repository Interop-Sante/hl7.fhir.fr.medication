Instance: InLine-Analyse-Presc-BINOCRIT
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de BINOCRIT pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "Une seringue préremplie toutes les deux semaines"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: BINOCRIT 20000 UI/0,5ml : Une seringue préremplie toutes les deux semaines"
* medicationCodeableConcept = $UCD#3400893634318 "BINOCRIT 20000UI INJ S0,5ML +A"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-20T11:50:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260320115000"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 2
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15052000 "Seringue"