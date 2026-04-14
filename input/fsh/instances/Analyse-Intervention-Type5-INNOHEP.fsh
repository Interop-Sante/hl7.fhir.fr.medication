Instance: Analyse-Intervention-Type5-INNOHEP
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Type: 5 Suivi thérapeutique - Problème: 10 Monitorage à suivre"
* groupIdentifier.value = "Presc-20260320173100"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-20T18:38:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-INNOHEP"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "Il n'y a pas de clairance à la créatinine depuis le début du séjour soit le 05/03. Etant donné que la patiente est sous HBPM, est il possible de programmer cette analyse?"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #5 "Suivi thérapeutique"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #10 "Monitorage à suivre"