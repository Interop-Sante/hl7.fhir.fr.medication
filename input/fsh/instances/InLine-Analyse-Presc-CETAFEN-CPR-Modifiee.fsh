Instance: InLine-Analyse-Presc-CETAFEN-CPR-Modifiee
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de CETAFEN en comprimé pour exemple d'intervention pharmaceutique acceptée avec modification de la proposition"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "2 comprimés toutes les 12 heures"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: CETAFEN 500MG/150MG : 2 comprimés toutes les 12 heures"
* medicationCodeableConcept = $UCD#3400890032483 "CETAFEN 500MG/150MG CPR"
* subject.reference = "Patient/25678"
* supportingInformation.reference = "Task/Analyse-Intervention-Acceptee-Modifiee"
* authoredOn = "2026-03-20T18:37:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-27865023"
* groupIdentifier.value = "Presc-20260320174600"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 12
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseQuantity = 2 $EDQM#15054000 "Comprimé"
