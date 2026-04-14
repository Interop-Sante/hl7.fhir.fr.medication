Instance: Analyse-Validation-Commentaire-LACRIFLUID
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Validation d'une prescription de LACRIFLUID avec commentaire"
* groupIdentifier.value = "Presc-20260318093300"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-18T11:33:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-LACRIFLUID"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #VALIDATION
* output[+].type.text = "commentaire"
* output[=].valueString = "Le LACRIFLUID n'est pas référencé au livret thérapeutique. La spécialité référencée est le CELLUVISC. Cependant, le CELLUVISC est en cours de réapprovisionnement. La prescription de LACRIFLUID est validée en traitement personnel jusqu'à réapprovisionnement du CELLUVISC. Proposition jointe avec du CELLUVISC lorsque celui-ci sera disponible"
* output[+].type.text = "proposition"
* output[=].valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-CELLUVISC"
