Instance: Analyse-Intervention-Arret
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique type 2 Arrêt problème 5 Médicament non indiqué"
* groupIdentifier.value = "Presc-4130"
* status = #completed
* intent = #proposal
* authoredOn = "2025-07-23T11:06:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-Paracetamol-Si-Souleur"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "Indication non retrouvée dans le dossier du patient. Médicament prescrit en Si Besoin depuis son entrée et instaurée lors du dernier séjour en juillet, pas de prise par le patient depuis 15 jours. Peux-tu arrêter ce traitement?"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #2 "Arrêt"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #5 "Médicament non indiqué"
* output[+].type.text = "proposition"
* output[=].valueReference.reference = "MedicationRequest/InLine-Inter-Arret-Paracetamol-Si-Douleur"