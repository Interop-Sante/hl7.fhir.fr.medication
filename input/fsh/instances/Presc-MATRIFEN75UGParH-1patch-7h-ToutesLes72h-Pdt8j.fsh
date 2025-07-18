Instance: Presc-MATRIFEN-patch-TL72h
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-Presc-MATRIFEN-patch-TL72h
* entry[+].resource = medicationrequest-Presc-MATRIFEN-patch-TL72h

Instance: medication-Presc-MATRIFEN-patch-TL72h
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-MATRIFEN-patch-TL72h"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $UCD#3400893183014 "MATRIFEN 75µG/H DISP TRANS"
* code.text = "MATRIFEN 75 ug/h, dispositif transdermique"
* form = $EDQM#10517500 "patch cutané"
* form.text = "dispositif cutané"
* ingredient.itemCodeableConcept = $SMS#100000090377 "fentanyl"
* ingredient.itemCodeableConcept.text = "FENTANYL"
* ingredient.isActive = true
* ingredient.strength.numerator = 75 'ug' "µg"
* ingredient.strength.denominator = $unitsofmeasure#h "h"

Instance: medicationrequest-Presc-MATRIFEN-patch-TL72h
InstanceOf: FrPatientMedicationRequest
Usage: #inline
* meta.profile[0] =  "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-MATRIFEN-patch-TL72h"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-29T16:14:13.817Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14629"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-29T16:14:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-06T16:13:59Z"
* dosageInstruction.timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction.route = $EDQM#20070000 "Voie transdermique"
* dosageInstruction.route.text = "Voie transdermique"
* dosageInstruction.doseAndRate[0].type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate[=].type.text = "Ordered"
* dosageInstruction.doseAndRate[=].rateRatio.numerator.value = 1
* dosageInstruction.doseAndRate[=].rateRatio.numerator.unit = "Patch"
* dosageInstruction.doseAndRate[=].rateRatio.numerator.system = $EDQM
* dosageInstruction.doseAndRate[=].rateRatio.numerator.code = #15036000
* dosageInstruction.doseAndRate[=].rateRatio.denominator.value = 72
* dosageInstruction.doseAndRate[=].rateRatio.denominator.unit = "h"
* dosageInstruction.doseAndRate[=].rateRatio.denominator.system = $unitsofmeasure
* dosageInstruction.doseAndRate[=].rateRatio.denominator.code = #h
