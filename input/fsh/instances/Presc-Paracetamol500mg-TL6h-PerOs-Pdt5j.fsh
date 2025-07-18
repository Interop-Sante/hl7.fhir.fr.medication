Instance: Presc-Paracetamol-TL6h
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-Presc-Paracetamol-TL6h
* entry[+].resource = medicationrequest-Presc-Paracetamol-TL6h

Instance: medication-Presc-Paracetamol-TL6h
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-Paracetamol-TL6h"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000090270 "paracétamol"
* code.text = "PARACETAMOL"

Instance: medicationrequest-Presc-Paracetamol-TL6h
InstanceOf: FrPatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-Paracetamol-TL6h"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-12T15:47:52.372Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14644"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-08-12T15:47:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-17T15:46:59Z"
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity = 500 'mg' "mg"