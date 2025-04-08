Instance: 14637
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-1-14637
* entry[+].resource = medication-2-14637
* entry[+].resource = medication-3-14637
* entry[+].resource = medication-C-14637
* entry[+].resource = medicationrequest-14637

Instance: medication-1-14637
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-1-14637"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000078171 "glucose"
* code.text = "GLUCOSE"
* form = $EDQM#11210000 "solution pour perfusion"
* form.text = "solution pour perfusion"
* amount.numerator = 500 'mL' "mL"
* ingredient.itemCodeableConcept = $SMS#100000078171 "glucose"
* ingredient.itemCodeableConcept.text = "GLUCOSE"
* ingredient.strength.numerator = 50 'mg' "mg"
* ingredient.strength.denominator = 1 'mL' "mL"

Instance: medication-2-14637
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-2-14637"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000092115 "chlorure de sodium"
* code.text = "SODIUM CHLORURE"
* amount.numerator = 2 'g' "g"

Instance: medication-3-14637
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-3-14637"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000091807 "chlorure de potassium"
* code.text = "POTASSIUM CHLORURE"
* amount.numerator = 1 'g' "g"

Instance: medication-C-14637
InstanceOf: fr-medication-compound
Usage: #inline
* id = "medication-C-14637"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-compound"
* code.text = "G5 500mL + NaCl 2g + KCl 1g"
* indredient[0].extension[IsVehicle].valueBoolean = true
* ingredient[=].itemReference.reference = "#medication-1-14637"
* ingredient[+].itemReference.reference = "#medication-2-14637"
* ingredient[+].itemReference.reference = "#medication-3-14637"

Instance: medicationrequest-14637
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-C-14637"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-02T16:27:47.623Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14637"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-08-02T16:27:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-07T16:26:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "10:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "22:00:00"
* dosageInstruction.route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 '1'
* dosageInstruction.doseAndRate.rateRatio.denominator = 12 'h' "h"