Instance: HAS-27-1-Metformine
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-27-1-Metformine

Instance: medicationrequest-HAS-27-1-Metformine
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: METFORMINE 700 mg comprimé: 1 comprimé le matin et 1 comprimé soir, au cours ou à la fin des repas​"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00002702 "Metformine embonate 700 mg comprimé"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.patientInstruction = "au cours ou à la fin du repas"
* dosageInstruction.timing.repeat.when[0] = #MORN
* dosageInstruction.timing.repeat.when[+] = #EVE
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "comprimé"
