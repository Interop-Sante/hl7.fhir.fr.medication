Instance: InLine-Analyse-Presc-COTAREG
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de COTAREG pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé par jour"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: COTAREG 160MG/12,5MG : 1 comprimé par jour​"
* medicationCodeableConcept = $UCD#3400892592190 "COTAREG 160MG/12,5MG CPR"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-18T16:19:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260318161900"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"