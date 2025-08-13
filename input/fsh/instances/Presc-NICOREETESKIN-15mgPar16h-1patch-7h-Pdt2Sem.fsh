Instance: Presc-NICOREETESKIN-patch
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "NICORETTESKIN 1 patch 15mg/16h à 7h pdt 2 sem"
* type = #searchset
* entry[0].resource = medication-Presc-NICOREETESKIN-patch
* entry[+].resource = medicationrequest-Presc-NICOREETESKIN-patch

Instance: medication-Presc-NICOREETESKIN-patch
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-NICOREETESKIN-patch"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $UCD#3400893539354 "NICORETTESKIN 15MG/16H DISP"
* code.text = "NICOTINE"
* form = $EDQM#10519000 "Patch transdermique"
* form.text = "dispositif transdermique"
* ingredient.itemCodeableConcept = $SMS#100000079991 "nicotine"
* ingredient.itemCodeableConcept.text = "NICOTINE"
* ingredient.isActive = true
* ingredient.strength.numerator = 15 'mg' "mg"
* ingredient.strength.denominator = 1 '1'

Instance: medicationrequest-Presc-NICOREETESKIN-patch
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] =  "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-NICOREETESKIN-patch"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-29T13:27:21.531Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14628"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-29T13:27:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-12T13:26:59Z"
* dosageInstruction.timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction.route = $EDQM#20070000 "Voie transdermique"
* dosageInstruction.route.text = "Voie transdermique"
* dosageInstruction.doseAndRate[0].type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate[=].type.text = "Ordered"
* dosageInstruction.doseAndRate[=].rateRatio.numerator.value = 1
* dosageInstruction.doseAndRate[=].rateRatio.numerator.unit = "patch"
* dosageInstruction.doseAndRate[=].rateRatio.numerator.system = $EDQM
* dosageInstruction.doseAndRate[=].rateRatio.numerator.code = #15036000
* dosageInstruction.doseAndRate[=].rateRatio.denominator.value = 16
* dosageInstruction.doseAndRate[=].rateRatio.denominator.unit = "h"
* dosageInstruction.doseAndRate[=].rateRatio.denominator.system = $unitsofmeasure
* dosageInstruction.doseAndRate[=].rateRatio.denominator.code = #h