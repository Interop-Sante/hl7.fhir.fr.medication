Instance: InLine-Observation-poids-Avion
InstanceOf: Observation
Usage: #example
Description: "Poids du patient pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique"
* meta.profile = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight"
* status = #final
* category.coding[0].code = #vital-signs
* category.coding[=].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding[0].code = #29463-7
* code.coding[=].system = "http://loinc.org"
* subject.reference = "Patient/InLine-patient-Avion"
* effectiveDateTime = "2018-06-21T16:05:10+02:00"
* valueQuantity.value = 120.0
* valueQuantity.unit = "kg"
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code = #kg