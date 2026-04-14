Instance: InLine-Analyse-Presc-CELLUVISC
InstanceOf: fr-inpatient-pharmaceutical-intervention-suggestion
Usage: #example
Description: "Prescription de CELLUVISC pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-pharmaceutical-intervention-suggestion)
* extension[renderedDosageInstruction].valueMarkdown = "1 goutte 3 fois par jour"
* status = #active
* intent = #proposal
* priority = #routine
* note.text = "Prescription textuelle: CELLUVISC 4MG COLLY UNIDOS: 1 goutte 3 fois par jour​"
* medicationCodeableConcept = $UCD#3400891817478 "CELLUVISC 4MG COLLY UNIDOS"
* subject.reference = "Patient/14602"
* supportingInformation[0].reference = "MedicationRequest/InLine-Analyse-Presc-LACRIFLUID"
* supportingInformation[+].reference = "Task/Analyse-Validation-Commentaire-LACRIFLUID"
* authoredOn = "2026-03-18T11:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-27865023"
* groupIdentifier.value = "Presc-20260318093300"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15022000 "Goutte"