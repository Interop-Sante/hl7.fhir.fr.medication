Instance: InLine-Analyse-Presc-LANSOPRAZOLE
InstanceOf: fr-inpatient-pharmaceutical-intervention-suggestion
Usage: #example
Description: "Prescription de LANSOPRAZOLE pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-pharmaceutical-intervention-suggestion)
* extension[renderedDosageInstruction].valueMarkdown = "1 gélule par jour"
* status = #active
* intent = #proposal
* priority = #routine
* note.text = "Prescription textuelle: LANSOPRAZOLE EG 15MG : 1 gélule par jour​"
* medicationCodeableConcept = $UCD#3400893069479 "LANSOPRAZOLE EG 15MG GELU"
* subject.reference = "Patient/14602"
* supportingInformation[0].reference = "MedicationRequest/InLine-Analyse-Presc-ESOMEPRAZOLE"
* supportingInformation[+].reference = "Task/Analyse-Intervention-Type3-ESOMEPRAZOLE"
* authoredOn = "2026-03-22T17:57:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-27865023"
* groupIdentifier.value = "Presc-20260322161900"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15012000 "Gélule"