Instance: Analyse-Intervention-NonAcceptee
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Validation d'un dosage dont l'intervention pharmaceutique demandait confirmation"
* groupIdentifier.value = "Presc-20260320115000"
* status = #completed
* businessStatus = #2 "Non acceptée"
* intent = #proposal
* authoredOn = "2026-03-20T13:34:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-BINOCRIT"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "Dans la lettre de liaison de la médecine ainsi que dans les antécédents de la fiche d'hospitalisation, il est indiqué que le patient est traité avec du Binocrit 30 000 UI. hors il est prescrit depuis son hospitalisation en médecine du Binocrit 20 000UI. Pouvez-vous nous confirmer que le dosage est le bon?"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #7 "Adaptation posologique"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #5 "Sous-dosage"