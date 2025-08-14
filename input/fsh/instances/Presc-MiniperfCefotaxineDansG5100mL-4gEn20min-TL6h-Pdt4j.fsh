Instance: Presc-MiniperfCefotaxime-En20min-Pdt4j
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "céfotaxine dans G5 100 mL, 4g (céfotaxine) en 20 min toutes les 6h pendant 4j"
* type = #searchset
* entry[0].resource = medication-1-Presc-MiniperfCefotaxime-En20min-Pdt4j
* entry[+].resource = medication-2-Presc-MiniperfCefotaxime-En20min-Pdt4j
* entry[+].resource = medication-C-Presc-MiniperfCefotaxime-En20min-Pdt4j
* entry[+].resource = medicationrequest-Presc-MiniperfCefotaxime-En20min-Pdt4j

Instance: medication-1-Presc-MiniperfCefotaxime-En20min-Pdt4j
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-1-Presc-MiniperfCefotaxime-En20min-Pdt4j"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000092662 "céfotaxime"
* code.text = "CEFOTAXINE"

Instance: medication-2-Presc-MiniperfCefotaxime-En20min-Pdt4j
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-2-Presc-MiniperfCefotaxime-En20min-Pdt4j"
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

Instance: medication-C-Presc-MiniperfCefotaxime-En20min-Pdt4j
InstanceOf: fr-medication-compound
Usage: #inline
* id = "medication-C-Presc-MiniperfCefotaxime-En20min-Pdt4j"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-compound"
* ingredient[0].itemReference.reference = "#medication-1-Presc-MiniperfCefotaxime-En20min-Pdt4j"
* ingredient[+].itemReference.reference = "#medication-2-Presc-MiniperfCefotaxime-En20min-Pdt4j"

Instance: medicationrequest-Presc-MiniperfCefotaxime-En20min-Pdt4j
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-C-Presc-MiniperfCefotaxime-En20min-Pdt4j"
* subject.reference = "Patient/14602"
* authoredOn = "2021-09-29T10:32:47.623Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14648"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-09-29T10:32:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-10-03T10:31:59Z"
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.extension[fr-basis-of-dose-component].valueReference.reference = "#medication-1-Presc-MiniperfCefotaxime-En20min-Pdt4j"
* dosageInstruction.doseAndRate.rateRatio.numerator = 4 'g' "g"
* dosageInstruction.doseAndRate.rateRatio.denominator = 20 'min' "min"