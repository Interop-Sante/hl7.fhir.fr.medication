Instance: HAS-05a-Presc-Fluindione
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "FLUINDIONE 20 mg comprimé quadrisécable : 3/4 cpr par jour (trois-quart de comprimé)"
* type = #searchset
* entry.resource = medicationrequest-HAS-5a-Presc-Fluindione

Instance: medicationrequest-HAS-5a-Presc-Fluindione
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "3/4 cpr par jour (trois-quart de comprimé)"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: FLUINDIONE 20 mg comprimé quadrisécable : 3/4 cpr par jour (trois-quart de comprimé)"
* medicationCodeableConcept = $Medicabase#MV00001070 "FLUINDIONE 20 mg comprimé quadrisécable"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 0.75 $EDQM#15054000 "Comprimé"