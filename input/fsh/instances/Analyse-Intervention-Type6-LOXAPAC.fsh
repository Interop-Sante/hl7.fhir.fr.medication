Instance: Analyse-Intervention-Type6-LOXAPAC
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Type: 6 Optimisation modalités d'administration - Problème: 8 Voie/administration inappropriée"
* groupIdentifier.value = "Presc-20260320165300"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-20T17:59:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-LOXAPAC"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "La seringue fournie avec le loxapac est graduée en mg. Or posologie prescrite en goutte, on a donc un risque d'erreur lors de l'administration. Pouvez-vous represcrire le Loxapac en mg pour limiter le risque d'erreur lors de l'administration ?"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #6 "Optimisation modalités d'administration"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #8 "Voie/administration inappropriée"