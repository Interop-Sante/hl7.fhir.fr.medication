Instance: Presc-Capecitabine-Dose-Calculee
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "capécitabine 1800 mg (1000 mg/m²), 7h et 18h per os, pendant 14j"
* type = #searchset
* entry[0].resource = medication-Presc-Capecitabine-Dose-Calculee
* entry[+].resource = medicationrequest-Presc-Capecitabine-Dose-Calculee

Instance: medication-Presc-Capecitabine-Dose-Calculee
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-Capecitabine-Dose-Calculee"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000089303 "capécitabine"
* code.text = "CAPECITABINE"

Instance: medicationrequest-Presc-Capecitabine-Dose-Calculee
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-Capecitabine-Dose-Calculee"
* subject.reference = "Patient/14602"
* authoredOn = "2021-10-15T20:06:12.345Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14652"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-10-15T20:06:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-10-29T20:05:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate[0].type = $dose-rate-type#calculated "Calculated"
* dosageInstruction.doseAndRate[=].type.text = "Calculated"
* dosageInstruction.doseAndRate[=].doseQuantity = 1000 'mg/m2' "mg/m²"
* dosageInstruction.doseAndRate[+].type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate[=].type.text = "Ordered"
* dosageInstruction.doseAndRate[=].doseQuantity = 1800 'mg' "mg"