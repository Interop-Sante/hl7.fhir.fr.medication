Instance: InLine-observation-taille-Avion
InstanceOf: Observation
Usage: #example
Description: "Taille du patient pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique"
* meta.profile = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height"
* status = #final
* category.coding[0].code = #vital-signs
* category.coding[=].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding[0].code = #8302-2
* code.coding[=].system = "http://loinc.org"
* subject.reference = "Patient/InLine-patient-Avion"
* effectiveDateTime = "2018-10-25T11:06:06+02:00"
* valueQuantity.value = 189.0
* valueQuantity.unit = "cm"
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code = #cm