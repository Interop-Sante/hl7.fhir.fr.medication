Instance: Presc-DOLIPRANE-20DoseParKG
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-Presc-DOLIPRANE-20DoseParKG
* entry[+].resource = medicationrequest-Presc-DOLIPRANE-20DoseParKG

Instance: medication-Presc-DOLIPRANE-20DoseParKG
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-DOLIPRANE-20DoseParKG"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $UCD#3400892028057 "DOLIPRANE 2,4% BUV FV100ML"
* code.text = "DOLIPRANE 2.4% ss sucre, susp buv"
* form = $EDQM#10106000 "suspension buvable"
* form.text = "suspension buvable"
* ingredient.itemCodeableConcept = $SMS#100000090270 "paracétamol"
* ingredient.itemCodeableConcept.text = "PARACETAMOL"
* ingredient.isActive = true
* ingredient.strength.numerator = 15 'mg' "mg"
* ingredient.strength.denominator = 1 '1'

Instance: medicationrequest-Presc-DOLIPRANE-20DoseParKG
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] =  "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-DOLIPRANE-20DoseParKG"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-28T15:20:31.592Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14626"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-28T15:20:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-02T15:19:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate[0].type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate[=].type.text = "Ordered"
* dosageInstruction.doseAndRate[=].doseQuantity.value = 20
* dosageInstruction.doseAndRate[=].doseQuantity.unit = "dose_kg"
* dosageInstruction.doseAndRate[=].doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate[=].doseQuantity.code = #{dose_kg}