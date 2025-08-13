Instance: Presc-MV-PerfGl-NaCl-KCl
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "Perf GL-NaCL-KCl 1 pche de 500ml en 12h"
* type = #searchset
* entry[0].resource = medication-Presc-MV-PerfGl-NaCl-KCl
* entry[+].resource = medicationrequest-Presc-MV-PerfGl-NaCl-KCl

Instance: medication-Presc-MV-PerfGl-NaCl-KCl
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-MV-PerfGl-NaCl-KCl"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = https://bogussystem.fr/MVid#BOGUSCODE "BOGUS MV NAME"
* code.text = "GLUCOSE + SODIUM CHLORURE + POTASSIUM CHLORURE"
* form = $EDQM#11210000 "solution pour perfusion"
* form.text = "solution pour perfusion"
* amount.numerator = 500 'mL' "mL"
* ingredient[0].itemCodeableConcept = $SMS#100000078171 "glucose"
* ingredient[=].itemCodeableConcept.text = "GLUCOSE"
* ingredient[=].strength.numerator = 50 'mg' "mg"
* ingredient[=].strength.denominator = 1 'mL' "mL"
* ingredient[+].itemCodeableConcept = $SMS#100000092115 "chlorure de sodium"
* ingredient[=].itemCodeableConcept.text = "SODIUM CHLORURE"
* ingredient[=].strength.numerator = 2 'g' "g"
* ingredient[+].itemCodeableConcept = $SMS#100000091807 "chlorure de potassium"
* ingredient[=].itemCodeableConcept.text = "POTASSIUM CHLORURE"
* ingredient[=].strength.numerator = 1 'g' "g"


Instance: medicationrequest-Presc-MV-PerfGl-NaCl-KCl
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-MV-PerfGl-NaCl-KCl"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-30T11:42:16.592Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14631"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-30T11:42:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-04T11:41:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "10:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "22:00:00"
* dosageInstruction.route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.rateRatio.numerator.value = 1
* dosageInstruction.doseAndRate.rateRatio.numerator.unit = "Poche"
* dosageInstruction.doseAndRate.rateRatio.numerator.system = $EDQM
* dosageInstruction.doseAndRate.rateRatio.numerator.code = #15005000
* dosageInstruction.doseAndRate.rateRatio.denominator = 12 'h' "h"