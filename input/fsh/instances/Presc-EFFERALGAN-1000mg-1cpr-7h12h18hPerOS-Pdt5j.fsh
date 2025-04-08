Instance: 14624
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-14624
* entry[+].resource = medicationrequest-14624

Instance: medication-14624
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-14624"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $UCD#3400893766521 "EFFERALGANMED 1000MG CPR"
* code.text = "EFFERALGAN 1 000 mg, cpr"
* form = $EDQM#10219000 "Comprimé"
* ingredient.itemCodeableConcept = $SMS#100000090270 "paracétamol"
* ingredient.itemCodeableConcept.text = "PARACETAMOL"
* ingredient.isActive = true
* ingredient.strength.numerator = 1000 'mg' "mg"
* ingredient.strength.denominator = 1 '1'

Instance: medicationrequest-14624
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-14624"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-28T14:52:40.936Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14624"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-28T14:52:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-02T14:51:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "12:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate[0].type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate[=].type.text = "Ordered"
* dosageInstruction.doseAndRate[=].doseQuantity.value = 1
* dosageInstruction.doseAndRate[=].doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate[=].doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate[=].doseQuantity.code = #10219000