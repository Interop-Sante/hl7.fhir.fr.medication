Instance: InLine-Analyse-Presc-LEVOTHYROX
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de LACRIFLUID pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé une heure avant le petit déjeuner"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: LEVOTHYROX 38µG: 1 comprimé une heure avant le petit déjeuner"
* medicationCodeableConcept = $UCD#3400890048958 "LEVOTHYROX 38µG CPR"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-20T16:10:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260320161000"
* dosageInstruction.timing.repeat.when = #ACM
* dosageInstruction.timing.repeat.offset = 60
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"