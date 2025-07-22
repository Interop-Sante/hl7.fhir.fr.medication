Instance: HAS-30-2-Presc-Cetirizine
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-30-2-Presc-Cetirizine

Instance: medicationrequest-HAS-30-2-Presc-Cetirizine
InstanceOf: FrMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: CETIRIZINE 10 mg : 1 à 4 comprimés par jour selon les symptômes (urticaire)"
* medicationCodeableConcept = $Medicabase#MV00000524 "Cétirizine dichlorhydrate 10 mg comprimé"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.patientInstruction = "Selon les symptômes (urticaire)"
* dosageInstruction.doseAndRate.doseRange.low = 1 $EDQM#15054000 "Comprimé"
* dosageInstruction.doseAndRate.doseRange.high = 4 $EDQM#15054000 "Comprimé"
