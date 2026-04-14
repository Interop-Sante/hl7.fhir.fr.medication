Instance: InLine-Analyse-Presc-CETAFEN-CPR-SousDose
InstanceOf: fr-inpatient-pharmaceutical-intervention-suggestion
Usage: #example
Description: "Prescription de CETAFEN en comprimé pour exemple d'intervention pharmaceutique sous dosée"
* meta.profile = Canonical(fr-inpatient-pharmaceutical-intervention-suggestion)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé toutes les 12 heures"
* status = #active
* intent = #proposal
* priority = #routine
* note.text = "Prescription textuelle: CETAFEN 500MG/150MG : 1 comprimé toutes les 12 heures"
* medicationCodeableConcept = $UCD#3400890032483 "CETAFEN 500MG/150MG CPR"
* subject.reference = "Patient/25678"
* supportingInformation[0].reference = "MedicationRequest/InLine-Analyse-Presc-CETAFEN-INJ"
* supportingInformation[+].reference = "Task/Analyse-Intervention-Acceptee-Modifiee"
* authoredOn = "2026-03-20T18:23:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-27865023"
* groupIdentifier.value = "Presc-20260320174600"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 12
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"
