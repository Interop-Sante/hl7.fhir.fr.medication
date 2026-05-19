Instance: InLine-Analyse-Presc-MACROGOL
InstanceOf: fr-inpatient-pharmaceutical-intervention-suggestion
Usage: #example
Description: "Prescription de MACROGOL pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-pharmaceutical-intervention-suggestion)
* extension[renderedDosageInstruction].valueMarkdown = "1 sachet par jour le matin"
* status = #active
* intent = #proposal
* priority = #routine
* note.text = "Prescription textuelle: MACROGOL 10G : 1 sachet par jour le matin"
* medicationCodeableConcept = $UCD#3400893244777 "MACROGOL BGA 10G BUV SACH"
* subject.reference = "Patient/14602"
* supportingInformation[0].reference = "MedicationRequest/InLine-Analyse-Presc-Morphine"
* supportingInformation[+].reference = "Task/Analyse-Validation-Ajout-Morphine"
* authoredOn = "2025-07-23T10:56:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-27865023"
* groupIdentifier.value = "Presc-3657"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.when = #MORN
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15045000 "Sachet"