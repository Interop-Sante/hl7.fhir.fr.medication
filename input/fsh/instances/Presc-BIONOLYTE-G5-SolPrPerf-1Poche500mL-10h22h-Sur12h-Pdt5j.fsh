Instance: Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h
* entry[+].resource = medicationrequest-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h

Instance: medication-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $UCD#3400893093542 "BIONOLYTE G5 INJ FPE500ML"
* code.text = "BIONOLYTE G5, sol pr perf, flac 500 mL"
* form = $EDQM#11210000 "solution pour perfusion"
* form.text = "solution pour perfusion"
* ingredient[0].itemCodeableConcept = $SMS#100000078171 "glucose"
* ingredient[=].itemCodeableConcept.text = "GLUCOSE"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 50 'mg' "mg"
* ingredient[=].strength.denominator = $unitsofmeasure#mL "mL"
* ingredient[+].itemCodeableConcept = $SMS#100000092115 "clhorure de sodium"
* ingredient[=].itemCodeableConcept.text = "SODIUM CHLORURE"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 2 'g' "g"
* ingredient[=].strength.denominator = 1 '1'
* ingredient[+].itemCodeableConcept = $SMS#100000091807 "chlorure de potassium"
* ingredient[=].itemCodeableConcept.text = "POTASSIUM CHLORURE"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 1 'g' "g"
* ingredient[=].strength.denominator = 1 '1'

Instance: medicationrequest-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h
InstanceOf: FrPatientMedicationRequest
Usage: #inline
* meta.profile[0] =  "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medicationrequest-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-29T17:29:27.603Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14630"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-29T17:29:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-03T17:28:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "10:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "22:00:00"
* dosageInstruction.route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate[0].type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate[=].type.text = "Ordered"
* dosageInstruction.doseAndRate[=].rateRatio.numerator.value = 1
* dosageInstruction.doseAndRate[=].rateRatio.numerator.unit = "flacon"
* dosageInstruction.doseAndRate[=].rateRatio.numerator.system = $EDQM
* dosageInstruction.doseAndRate[=].rateRatio.numerator.code = #15009000
* dosageInstruction.doseAndRate[=].rateRatio.denominator.value = 12
* dosageInstruction.doseAndRate[=].rateRatio.denominator.unit = "h"
* dosageInstruction.doseAndRate[=].rateRatio.denominator.system = $unitsofmeasure
* dosageInstruction.doseAndRate[=].rateRatio.denominator.code = #h