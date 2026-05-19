Instance: Analyse-Intervention-Type1-METFORMINE
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Type: 1 Ajout (prescription nouvelle) - Problème: 2 Indication non traitée"
* groupIdentifier.value = "Presc-20260323112700"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-23T11:46:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-METFORMINE"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "La patiente souffre également d'hypertension mais aucun médicament hypertenseur n'a été prescrit à l'hospitalisation."
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #1 "Ajout (prescription nouvelle)"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #2 "Indication non traitée"
