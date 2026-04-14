Instance: InLine-Analyse-Presc-ESOMEPRAZOLE
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de ESOMEPTAZOLE pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé par jour"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: ESOMEPRAZOLE EVO 20MG : 1 comprimé par jour​"
* medicationCodeableConcept = $UCD#3400894032311 "ESOMEPRAZOLE EVO 20MG CPR"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-22T16:19:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260322161900"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"