Instance: InLine-patient-Avion
InstanceOf: Patient
Usage: #example
Description: "Patient pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique"
* meta.profile = $FrCorePatient
* identifier[0].use = #usual
* identifier[=].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[=].type.coding[=].code = #INTRN
* identifier[=].type.coding[=].display = "Identifiant interne"
* identifier[=].system = "https://somehospital.fr/IPP"
* identifier[=].value = "5000001820"
* name[0].use = #usual
* name[=].family = "AVION"
* name[+].use = #official
* name[=].family = "AVION"
* name[=].given = "JAUNE"
* birthDate = "1961-11-25"