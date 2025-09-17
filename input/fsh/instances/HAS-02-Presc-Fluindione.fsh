Instance: HAS-02-Presc-Fluindione
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "FLUINDIONE 20 mg comprimé : 0,5 comprimé par jour"
* type = #searchset
* entry.resource = medicationrequest-HAS-2-Presc-Fluindione

Instance: medicationrequest-HAS-2-Presc-Fluindione
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "0,5 comprimé par jour"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: FLUINDIONE 20 mg comprimé : 0,5 comprimé par jour"
* medicationCodeableConcept = $Medicabase#MV00001070 "FLUINDIONE 20 mg comprimé quadrisécable"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 0.5 $EDQM#15054000 "Comprimé"