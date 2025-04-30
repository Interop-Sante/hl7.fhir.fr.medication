Instance: Presc-Betamethasone-ApplCut
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-Presc-Betamethasone-ApplCut
* entry[+].resource = medicationrequest-Presc-Betamethasone-ApplCut

Instance: medication-Presc-Betamethasone-ApplCut
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-Betamethasone-ApplCut"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000091947 "bétaméthasone"
* code.text = "BETAMETHASONE"
* amount.numerator = 0.5 'mg' "mg"
* amount.denominator = $unitsofmeasure#g "g"

Instance: medicationrequest-Presc-Betamethasone-ApplCut
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#edication-Presc-Betamethasone-ApplCut"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-13T08:48:39.825Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14620"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-13T08:48:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-18T08:47:59Z"
* dosageInstruction.timing.repeat.timeOfDay = "08:00:00"
* dosageInstruction.route = $EDQM#20003000 "Voie cutanée"
* dosageInstruction.route.text = "Voie cutanée"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Appln"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #{Appln}