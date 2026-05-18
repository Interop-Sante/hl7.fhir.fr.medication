Instance: Analyse-Intervention-Type1-MACROGOL
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Type: 1 Ajout (prescription nouvelle) - Problème: 7 Effet indésirable"
* groupIdentifier.value = "Presc-3657"
* status = #completed
* intent = #proposal
* authoredOn = "2025-07-23T10:56:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-Morphine"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "Administration de laxatif recommandée pour les traitements à la morphine"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #1 "Ajout (prescription nouvelle)"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #7 "Effet indésirable"
* output[+].type.text = "proposition"
* output[=].valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-MACROGOL"