Instance: Presc-MiniperfCefotaxime-En20min-Pdt3j
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j
* entry[+].resource = medication-2-Presc-MiniperfCefotaxime-En20min-Pdt3j
* entry[+].resource = medication-C-Presc-MiniperfCefotaxime-En20min-Pdt3j
* entry[+].resource = medicationrequest-Presc-MiniperfCefotaxime-En20min-Pdt3j

Instance: medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000092662 "céfotaxime"
* code.text = "CEFOTAXINE"

Instance: medication-2-Presc-MiniperfCefotaxime-En20min-Pdt3j
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-2-Presc-MiniperfCefotaxime-En20min-Pdt3j"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000078171 "glucose"
* code.text = "GLUCOSE"
* form = $EDQM#11210000 "solution pour perfusion"
* form.text = "solution pour perfusion"
* amount.numerator = 100 'mL' "mL"
* ingredient.itemCodeableConcept = $SMS#100000078171 "glucose"
* ingredient.itemCodeableConcept.text = "GLUCOSE"
* ingredient.strength.numerator = 50 'mg' "mg"
* ingredient.strength.denominator = 1 'mL' "mL"

Instance: medication-C-Presc-MiniperfCefotaxime-En20min-Pdt3j
InstanceOf: fr-medication-compound
Usage: #inline
* id = "medication-C-Presc-MiniperfCefotaxime-En20min-Pdt3j"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-compound"
* code.text = "Céfotaxine 4g dans miniperf G5 100 mL"
* ingredient[0].itemReference.reference = "#medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j"
* ingredient[=].itemReference.reference = "#medication-2-Presc-MiniperfCefotaxime-En20min-Pdt3j"
* ingredient[=].extension[IsVehicle].valueBoolean = true

Instance: medicationrequest-Presc-MiniperfCefotaxime-En20min-Pdt3j
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-C-Presc-MiniperfCefotaxime-En20min-Pdt3j"
* subject.reference = "Patient/14602"
* authoredOn = "2021-10-02T17:22:25.401Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14650"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-10-02T17:22:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-10-05T17:21:59Z"
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.extension[fr-basis-of-dose-component].valueReference.reference = "#medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j"
* dosageInstruction.doseAndRate.rateRatio.numerator = 4 'g' "g"
* dosageInstruction.doseAndRate.rateRatio.denominator = 20 'min' "min"