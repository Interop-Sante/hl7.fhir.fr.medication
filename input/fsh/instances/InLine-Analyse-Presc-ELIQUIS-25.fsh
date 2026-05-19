Instance: InLine-Analyse-Presc-ELIQUIS-25
InstanceOf: fr-inpatient-pharmaceutical-intervention-suggestion
Usage: #example
Description: "Prescription de ELIQUS 2,5 MG pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-pharmaceutical-intervention-suggestion)
* extension[renderedDosageInstruction].valueMarkdown = "2 comprimés par jour"
* status = #active
* intent = #proposal
* priority = #routine
* note.text = "Prescription textuelle: ELIQUIS 2,5MG : 2 comprimés par jour​"
* medicationCodeableConcept = $UCD#3400893725719 "ELIQUIS 2,5MG CPR"
* subject.reference = "Patient/14602"
* supportingInformation[0].reference = "MedicationRequest/InLine-Analyse-Presc-ELIQUIS-50"
* supportingInformation[+].reference = "Task/Analyse-Intervention-Type7-ELIQUIS"
* authoredOn = "2026-03-22T18:07:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-27865023"
* groupIdentifier.value = "Presc-20260322163400"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"