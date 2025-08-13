Instance: HAS-12-3-Presc-Enoxaparine
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "ENOXAPARINE  4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie : 1 seringue, 1 fois toutes les 12 heures - voie sous-cutanée"
* type = #searchset
* entry[0].resource = medication-HAS-12-3-Presc-Enoxaparine
* entry[+].resource = medicationrequest-HAS-12-3-Presc-Enoxaparine

Instance: medication-HAS-12-3-Presc-Enoxaparine
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-HAS-12-3-Presc-Enoxaparine"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000090152 "énoxaparine sodique"
* form = $EDQM#11201000 "Solution injectable"
* ingredient.itemCodeableConcept = $SMS#100000090152 "énoxaparine sodique"
* ingredient.strength.numerator.value = 4000
* ingredient.strength.numerator.unit = "UI"
* ingredient.strength.numerator.system = $unitsofmeasure
* ingredient.strength.numerator.code = #[UI]
* ingredient.strength.denominator.value = 0.4
* ingredient.strength.denominator.unit = "ml"
* ingredient.strength.denominator.system = $unitsofmeasure
* ingredient.strength.denominator.code = #mL

Instance: medicationrequest-HAS-12-3-Presc-Enoxaparine
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* extension[renderedDosageInstruction].valueMarkdown = "1 seringue, 1 fois toutes les 12 heures - voie sous-cutanée"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: ENOXAPARINE  4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie : 1 seringue, 1 fois toutes les 12 heures - voie sous-cutanée"
* medicationReference.reference = "#medication-HAS-12-3-Presc-Enoxaparine"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 12
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $EDQM#20066000 "Voie sous-cutanée"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Seringue"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15052000