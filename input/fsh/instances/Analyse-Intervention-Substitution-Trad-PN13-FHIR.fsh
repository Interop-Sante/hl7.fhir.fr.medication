Instance: Analyse-Intervention-Substitution-Trad-PN13-FHIR
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique avec proposition de substitution pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique"
* groupIdentifier.value = "10723"
* status = #completed
* intent = #proposal
* authoredOn = "2022-04-11T17:30:53+02:00"
* owner.identifier.value = "811102058236"
* owner.identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "Remplacement pour éviter interaction entre paracétamol et autre traitement pris par le patient"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #3 "Substitution/Echange"
* output[+].type.text = "proposition"
* output[=].valueReference.reference = "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution"