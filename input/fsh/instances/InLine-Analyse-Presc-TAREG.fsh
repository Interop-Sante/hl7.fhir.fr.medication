Instance: InLine-Analyse-Presc-TAREG
InstanceOf: fr-inpatient-pharmaceutical-intervention-suggestion
Usage: #example
Description: "Prescription de TAREG pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-pharmaceutical-intervention-suggestion)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé par jour"
* status = #active
* intent = #proposal
* priority = #routine
* note.text = "Prescription textuelle: TAREG 160MG : 1 comprimé par jour​"
* medicationCodeableConcept = $UCD#3400892360690 "TAREG 160MG CPR"
* subject.reference = "Patient/14602"
* supportingInformation[0].reference = "MedicationRequest/InLine-Analyse-Presc-COTAREG"
* supportingInformation[+].reference = "Task/Analyse-Intervention-Type3-Remplacement2pour1-COTAREG"
* authoredOn = "2026-03-18T17:39:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-27865023"
* groupIdentifier.value = "Presc-20260318161900"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"