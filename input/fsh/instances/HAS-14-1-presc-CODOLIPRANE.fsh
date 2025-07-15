Instance: HAS-14-1-Presc-CODOLIPRANE
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-14-1-Presc-CODOLIPRANE

Instance: medicationrequest-HAS-14-1-Presc-CODOLIPRANE
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: CODOLIPRANE®: 1 comprimé si douleur, avec un maximum de 2 cp/prise, avec un maximum de 8 cp/jour, en respectant 4 heures minimales entre 2 prises"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $UCD#3400893936047 "CODOLIPRANE 500/30MG CPR"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.asNeededCodeableConcept = $sct#22253000 "douleur"
* dosageInstruction.asNeededCodeableConcept.text = "Si douleurs"
* dosageInstruction.timing.repeat.frequencyMax = 1
* dosageInstruction.timing.repeat.period = 4
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseRange.low.value = 1
* dosageInstruction.doseAndRate.doseRange.low.unit = "comprimé"
* dosageInstruction.doseAndRate.doseRange.low.system = $EDQM
* dosageInstruction.doseAndRate.doseRange.low.code = #15054000
//* dosageInstruction.doseAndRate.doseRange.high.value = 2
//* dosageInstruction.doseAndRate.doseRange.high.unit = "comprimé"
//* dosageInstruction.doseAndRate.doseRange.high.system = $EDQM
//* dosageInstruction.doseAndRate.doseRange.high.code = #15054000
* dosageInstruction.maxDosePerPeriod.numerator = 8 $EDQM#15054000 "comprimé"
* dosageInstruction.maxDosePerPeriod.denominator = 24 'h' "h"
* dosageInstruction.maxDosePerAdministration = 2 $EDQM#15054000 "comprimé"
