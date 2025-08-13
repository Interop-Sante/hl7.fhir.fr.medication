Instance: HAS-29-Presc-Enoxaparine
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "ENOXAPARINE sodique 6000 UI, solution injectable en seringue préremplie : 1 injection en SC par jour jusqu’à ce que l’INR soit dans la zone thérapeutique cible."
* type = #searchset
* entry[0].resource = medication-HAS-29-Presc-Enoxaparine
* entry[+].resource = medicationrequest-HAS-29-Presc-Enoxaparine

Instance: medication-HAS-29-Presc-Enoxaparine
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-HAS-29-Presc-Enoxaparine"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000090152 "énoxaparine sodique"
* form = $EDQM#11201000 "Solution injectable"
* ingredient.itemCodeableConcept = $SMS#100000090152 "énoxaparine sodique"
* ingredient.strength.numerator.value = 6000
* ingredient.strength.numerator.unit = "UI"
* ingredient.strength.numerator.system = $unitsofmeasure
* ingredient.strength.numerator.code = #[UI]

Instance: medicationrequest-HAS-29-Presc-Enoxaparine
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* extension[renderedDosageInstruction].valueMarkdown = "1 injection en SC par jour jusqu’à ce que l’INR soit dans la zone thérapeutique cible"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: ENOXAPARINE sodique 6000 UI, solution injectable en seringue préremplie : 1 injection en SC par jour jusqu’à ce que l’INR soit dans la zone thérapeutique cible."
* medicationReference.reference = "#medication-HAS-29-Presc-Enoxaparine"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "jusqu’à ce que l’INR soit dans la zone thérapeutique cible."
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $EDQM#20066000 "Voie sous-cutanée"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Seringue"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15052000