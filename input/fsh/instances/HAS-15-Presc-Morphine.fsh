Instance: HAS-15-Presc-Morphine
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h) pendant huit jours"
* type = #searchset
* entry[0].resource = medicationrequest-HAS-15-Presc-Morphine

Instance: medicationrequest-HAS-15-Presc-Morphine
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* extension[renderedDosageInstruction].valueMarkdown = "une gélule le soir (à 20h) pendant huit jours"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h) pendant huit jours"
* medicationCodeableConcept = $Medicabase#MV00001636 "MORPHINE LP 10mg gélule microgranulé à libération prolongée"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.boundsDuration = 8 $unitsofmeasure#d "jour"
* dosageInstruction.timing.repeat.timeOfDay = "20:00:00"
* dosageInstruction.timing.repeat.when = #EVE
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "gélule"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15012000
