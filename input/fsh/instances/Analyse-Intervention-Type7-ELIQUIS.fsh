Instance: Analyse-Intervention-Type3-ELIQUIS
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Type: 7 Adaptation posologique - Problème: 4 Surdosage"
* groupIdentifier.value = "Presc-20260322163400"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-22T18:07:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-ELIQUIS-50"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "Il est prescrit de l'apixaban à 5 mg x2 par jour. Ce médicament est indiqué dans la prévention des évènements thromboemboliques chez un patient présentant une ACFA. Or cette patiente a plus de 80 ans et pèse moins de 60 kg. La dose recommandée de ce médicament est de 2,5 mg deux fois par jour pour ce type de patient."
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #7 "Adaptation posologique"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #4 "Surdosage"
* output[+].type.text = "proposition"
* output[=].valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-ELIQUIS-25"
