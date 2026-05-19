Instance: InLine-Analyse-Presc-Diazepam
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de Diazépam pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé toutes les 6 heures"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: DIAZEPAM 10 mg comprimé bisécable (VALIUM®): 1 comprimé toutes les 6 heures​"
* medicationCodeableConcept = $Medicabase#MV00000531 "DIAZEPAM 10 mg (VALIUM) Comprimé bisécable"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-17T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260317103300"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"
