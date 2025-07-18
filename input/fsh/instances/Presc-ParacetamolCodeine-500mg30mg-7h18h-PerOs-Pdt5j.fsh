Instance: Presc-ParacetamolCodeine-500mg30mg
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-Presc-ParacetamolCodeine-500mg30mg
* entry[+].resource = medicationrequest-Presc-ParacetamolCodeine-500mg30mg

Instance: medication-Presc-ParacetamolCodeine-500mg30mg
InstanceOf: fr-medication-compound
Usage: #inline
* id = "medication-Presc-ParacetamolCodeine-500mg30mg"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-compound"
* code.text = "PARACETAMOL+CODEINE 500mg+30mg"
* form = $EDQM#10219000 "Comprimé"
* ingredient[0].itemCodeableConcept = $SMS#100000090270 "paracétamol"
* ingredient[=].itemCodeableConcept.text = "PARACETAMOL"
* ingredient[=].strength.numerator = 500 'mg' "mg"
* ingredient[+].itemCodeableConcept = $SMS#100000079790 "codéine"
* ingredient[=].itemCodeableConcept.text = "CODEINE"
* ingredient[=].strength.numerator = 30 'mg' "mg"

Instance: medicationrequest-Presc-ParacetamolCodeine-500mg30mg
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] =  "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-ParacetamolCodeine-500mg30mg"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-19T16:22:39.825Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14658"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-19T16:22:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-24T16:23:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000