Instance: InLine-practitioner-Luiggi
InstanceOf: Practitioner
Usage: #example
Description: "Practitioner prescripteur pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique"
* meta.profile = $FrCorePractitioner
* identifier[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[=].type.coding[=].code = #EI
* identifier[=].system = "https://somehospital.fr/EI"
* identifier[=].value = "P082443"
* name[0].use = #usual
* name[=].family = "LUIGGI"
* name[=].given = "DENIS"
* name[+].use = #official
* name[=].family = "LUIGGI"
* name[=].given = "DENIS"