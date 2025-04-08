Instance: 14627
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-14627
* entry[+].resource = medicationrequest-14627

Instance: medication-14627
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-14627"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $UCD#3400890277334 "DIPROSONE 0,05% CR TB30G"
* code.text = "DIPROSONE 0.05%, crème, tube 30 g"
* form = $EDQM#0071 "crème"
* form.text = "crème"
* ingredient.itemCodeableConcept = $SMS#100000091947 "bétaméthasone"
* ingredient.itemCodeableConcept.text = "BETAMETHASONE"
* ingredient.isActive = true
* ingredient.strength.numerator = 0.5 'mg' "mg"
* ingredient.strength.denominator = $unitsofmeasure#g "g"

Instance: medicationrequest-14627
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-14627"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-29T13:04:23.435Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14627"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-29T13:04:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-03T13:03:59Z"
* dosageInstruction.timing.repeat.timeOfDay = "08:00:00"
* dosageInstruction.route = $EDQM#20003000 "Voie cutanée"
* dosageInstruction.route.text = "Voie cutanée"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 1 '{appln}' "appln"
* dosageInstruction.doseAndRate[0].type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate[=].type.text = "Ordered"
* dosageInstruction.doseAndRate[=].doseQuantity.value = 1
* dosageInstruction.doseAndRate[=].doseQuantity.unit = "Appln"
* dosageInstruction.doseAndRate[=].doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate[=].doseQuantity.code = #{Appln}