Instance: Analyse-Intervention-Type1-DOSTINEX
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Type: 1 Ajout (prescription nouvelle) - Problème: 9 Traitement non reçu"
* groupIdentifier.value = "Presc-20260320163100"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-20T17:26:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-DOSTINEX"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "Traitement Paroxéline en ville non represcrit à l'hospitalisation"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #1 "Ajout (prescription nouvelle)"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #9 "Traitement non reçu"