Instance: Analyse-Intervention-Type5-DOSTINEX
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Type: 5 Suivi thérapeutique - Problème: 7 Effet indésirable"
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
* output[=].valueString = "Au cours d'un traitement à long terme de Dostinex qui est indiqué dans l'adénome hypophysaire qui secrète prolactine, des troubles fibrotiques peuvent apparaître. Il convient donc de rechercher régulièrement chez les patients des manifestations éventuelles de fibrose progressive."
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #5 "Suivi thérapeutique"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #7 "Effet indésirable"
