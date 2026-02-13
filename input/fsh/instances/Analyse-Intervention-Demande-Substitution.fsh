Instance: Analyse-Intervention-Demande-Substitution
InstanceOf: FRPharmaceuticalAnalysisResult
Usage: #example
Description: "Intervention pharmaceutique type 3 Substitution/echange problème 6.3 Interaction - Association déconseillée"
* groupIdentifier.value = "Presc-4254"
* status = #completed
* intent = #proposal
* authoredOn = "2026-02-12T17:35:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-NEFOPAM"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "L'utilisation du Nefopam est déconseillée chez le sujet âgé (plus de 75ans) à cause des effets anticholinergiques du nefopam. Pouvez-vous prescrire un autre antalgique?"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #3 "Substitution/Echange"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #6.3 "Interaction - Association déconseillée"
