Instance: 14625
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-14625

Instance: medicationrequest-14625
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] =  "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $UCD#3400893936047 "CODOLIPRANE 500/30MG CPR"
* medicationCodeableConcept.text = "CODOLIPRANE 500 mg/30 mg, cpr"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-28T15:12:37.603Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14625"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-28T15:12:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-02T15:11:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate[0].type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate[=].type.text = "Ordered"
* dosageInstruction.doseAndRate[=].doseQuantity.value = 1
* dosageInstruction.doseAndRate[=].doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate[=].doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate[=].doseQuantity.code = #10219000