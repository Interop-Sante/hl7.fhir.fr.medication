Instance: HAS-19-Presc-Paracetamol
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "PARACETAMOL 1000 mg comprimé: 1 comprimé,  3 prises par jour, espacés d’au moins 4 heures."
* type = #searchset
* entry[0].resource = medicationrequest-HAS-19-Presc-Paracetamol

Instance: medicationrequest-HAS-19-Presc-Paracetamol
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé,  3 prises par jour, espacés d’au moins 4 heures."
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: PARACETAMOL 1000 mg comprimé: 1 comprimé,  3 prises par jour, espacés d’au moins 4 heures."
* medicationCodeableConcept = $Medicabase#MV00002414 "PARACETAMOL 1000 mg comprimé"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"
* dosageInstruction.maxDosePerPeriod.numerator = 1 $EDQM#15054000 "Comprimé"
* dosageInstruction.maxDosePerPeriod.denominator = 4 'h' "heure"