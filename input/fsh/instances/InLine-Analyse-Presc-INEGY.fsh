Instance: InLine-Analyse-Presc-INEGY
InstanceOf: fr-inpatient-pharmaceutical-intervention-suggestiont
Usage: #example
Description: "Prescription de INEGY pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-pharmaceutical-intervention-suggestion)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé par jour"
* status = #active
* intent = #proposal
* priority = #routine
* note.text = "Prescription textuelle: INEGY 10/20 : 1 comprimé par jour​"
* medicationCodeableConcept = $UCD#3400892778617 "INEGY 10MG/20MG CPR"
* subject.reference = "Patient/14602"
* supportingInformation[0].reference = "MedicationRequest/InLine-Analyse-Presc-SIMVASTATINE"
* supportingInformation[+].reference = "MedicationRequest/InLine-Analyse-Presc-EZETIMIBE"
* supportingInformation[+].reference = "Task/Analyse-Intervention-Type3-Remplacement1pour2-INEGY"
* authoredOn = "2026-03-19T15:47:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-27865023"
* groupIdentifier.value = "Presc-20260319151900"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"