Instance: HAS-01-Presc-Pantoprazole-DC
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "PANTOPRAZOLE 40 mg comprimé: 40 mg le soir en DC"
* type = #searchset
* entry[0].resource = medication-HAS-1-Presc-Pantoprazole-DC
* entry[+].resource = medicationrequest-HAS-1-Presc-Pantoprazole-DC

Instance: medication-HAS-1-Presc-Pantoprazole-DC
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-HAS-1-Presc-Pantoprazole-DC"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000092491 "pantoprazole"
* form = $EDQM#10219000 "comprimé"
* ingredient.itemCodeableConcept = $SMS#100000092491 "pantoprazole"
* ingredient.strength.numerator = 40 'mg' "mg"

Instance: medicationrequest-HAS-1-Presc-Pantoprazole-DC
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* extension[posologieTextuelle].valueMarkdown = "40 mg le soir"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-HAS-1-Presc-Pantoprazole-DC"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.when = #EVE
* dosageInstruction.doseAndRate.doseQuantity.value = 40
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #mg