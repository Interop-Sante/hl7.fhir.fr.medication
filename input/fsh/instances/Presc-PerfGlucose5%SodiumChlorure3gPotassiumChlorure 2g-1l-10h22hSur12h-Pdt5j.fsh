Instance: 14638
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-1-14638
* entry[+].resource = medication-2-14638
* entry[+].resource = medication-3-14638
* entry[+].resource = medication-C-14638
* entry[+].resource = medicationrequest-14638

Instance: medication-1-14638
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-1-14638"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000078171 "glucose"
* code.text = "GLUCOSE"
* form = $EDQM#11210000 "solution pour perfusion"
* form.text = "solution pour perfusion"
* amount.numerator = 1 'L' "L"
* ingredient.itemCodeableConcept = $sct#67079006 "glucose"
* ingredient.itemCodeableConcept.text = "GLUCOSE"
* ingredient.strength.numerator = 50 'mg' "mg"
* ingredient.strength.denominator = 1 'mL' "mL"

Instance: medication-2-14638
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-2-14638"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000092115 "chlorure de sodium"
* code.text = "SODIUM CHLORURE"
* form = $EDQM#11201000 "solution injectable"
* form.text = "solution injectable"
* amount.numerator = 3 'g' "g"

Instance: medication-3-14638
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-3-14638"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000091807 "chlorure de potassium"
* code.text = "POTASSIUM CHLORURE"
* form = $EDQM#11201000 "solution injectable"
* form.text = "solution injectable"
* amount.numerator = 2 'g' "g"


Instance: medication-C-14638
InstanceOf: fr-medication-compound
Usage: #inline
* id = "medication-C-14638"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-compound"
* code.text = "G5 1L + NaCl 3g + KCl 2g"
* ingredient[0].itemReference.reference = "#medication-1-14638"
* ingredient[+].itemReference.reference = "#medication-2-14638"
* ingredient[+].itemReference.reference = "#medication-3-14638"

Instance: medicationrequest-14638
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-C-14638"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-02T15:26:27.603Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14638"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-02T15:26:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-07T15:25:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "10:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "22:00:00"
* dosageInstruction.route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 '1'
* dosageInstruction.doseAndRate.rateRatio.denominator = 12 'h' "h"