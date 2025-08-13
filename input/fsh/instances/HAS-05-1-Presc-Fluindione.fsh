Instance: HAS-05-1-Presc-Fluindione
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "FLUINDIONE 20 mg comprimé quadrisécable : 3/4 cpr par jour (trois-quart de comprimé)"
* type = #searchset
* entry[0].resource = medicationrequest-HAS-5-1-Presc-Fluindione

Instance: medicationrequest-HAS-5-1-Presc-Fluindione
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* extension[renderedDosageInstruction].valueMarkdown = "3/4 cpr par jour (trois-quart de comprimé)"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: FLUINDIONE 20 mg comprimé quadrisécable : 3/4 cpr par jour (trois-quart de comprimé)"
* medicationCodeableConcept = $Medicabase#MV00001070 "FLUINDIONE 20 mg comprimé quadrisécable"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.text = "3/4 cpr par jour (trois-quart de comprimé)"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 0.75 $EDQM#15054000 "Comprimé"