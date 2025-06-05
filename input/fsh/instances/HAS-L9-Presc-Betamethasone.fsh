Instance: HAS-L9-Presc-Betamethasone
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-HAS-L9-Presc-Betamethasone
* entry[+].resource = medicationrequest-HAS-L9-Presc-Betamethasone

Instance: medication-HAS-L9-Presc-Betamethasone
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-HAS-L9-Presc-Betamethasone"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000091947 "bétaméthasone"
* ingredient.itemCodeableConcept = $SMS#100000091947 "bétaméthasone"
* ingredient.strength.numerator = 0.5 'mg' "mg"
* ingredient.strength.denominator = $unitsofmeasure#g "g"

Instance: medicationrequest-HAS-L9-Presc-Betamethasone
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: BETHAMETHASONE 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationReference.reference = "#edication-HAS-L9-Presc-Betamethasone"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-05T15:00:00Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-L9"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-06-05T15:00:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-06-15T15:00:00Z"
* dosageInstruction.route = $EDQM#20003000 "Voie cutanée"
* dosageInstruction.route.text = "Voie cutanée"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Application"
* dosageInstruction.maxDosePerPeriod.numerator = 2 "Application"
* dosageInstruction.maxDosePerPeriod.denominator = 24 'h' "h"