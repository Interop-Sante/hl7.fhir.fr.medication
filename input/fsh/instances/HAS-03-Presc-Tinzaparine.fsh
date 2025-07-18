Instance: HAS-3-Presc-Tinzaparine
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-HAS-3-Presc-Tinzaparine
* entry[+].resource = medicationrequest-HAS-3-Presc-Tinzaparine

Instance: medication-HAS-3-Presc-Tinzaparine
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-HAS-3-Presc-Tinzaparine"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000091620 "tinzaparine sodique"
* form = $EDQM#11201000 "Solution injectable"
* ingredient.itemCodeableConcept = $SMS#100000091620 "tinzaparine sodique"
* ingredient.strength.numerator.value = 10000
* ingredient.strength.numerator.unit = "UI anti-Xa"
* ingredient.strength.numerator.system = $unitsofmeasure
* ingredient.strength.numerator.code = #[anti'Xa'U]
* ingredient.strength.denominator.value = 0.5
* ingredient.strength.denominator.unit = "ml"
* ingredient.strength.denominator.system = $unitsofmeasure
* ingredient.strength.denominator.code = #mL

Instance: medicationrequest-HAS-3-Presc-Tinzaparine
InstanceOf: FrPatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: TINZAPARINE SODIQUE 10 000 UI anti-Xa/0,5 ml solution injectable : 12 000UI anti-Xa (soit 170UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationReference.reference = "#medication-HAS-3-Presc-Tinzaparine"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "soit 170UI anti-Xa /kg"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $EDQM#20066000 "Voie sous-cutanée"
* dosageInstruction.doseAndRate.doseQuantity.value = 12000
* dosageInstruction.doseAndRate.doseQuantity.unit = "UI anti-Xa"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #[anti'Xa'U]