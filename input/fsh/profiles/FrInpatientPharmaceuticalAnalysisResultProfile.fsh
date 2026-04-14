Profile: FRInpatientPharmaceuticalAnalysisResultProfile
Parent: Task
Id: fr-inpatient-pharmaceutical-analysis-result
Title: "FR Pharmaceutical Analysis Result"
Description: "French Pharmaceutical Analysis Result profile"

* groupIdentifier 1..
* groupIdentifier ^short = "Identifiant de la prescription contenant la ligne de prescription analysée"

* businessStatus from FrPharmaceuticalInterventionDevenirCodeValueSet (extensible)

* intent = #proposal

* authoredOn 1..

* performerType from FrPharmaceuticalAnalysisPerformerTypeValueSet (extensible)

* owner 1..

* input 1..
* input.type.text = "ligne de prescription analysée"
* input.value[x] only Reference
* input.valueReference only Reference(FRInpatientMedicationRequest)

* output 1..
* output ^slicing.discriminator.type = #value
* output ^slicing.discriminator.path = "type.text"
* output ^slicing.description = "résultat de l'analyse et, le cas échéant, commentaire, type d'intervention pharmaceutique et/ou lien vers suggestion"
* output ^slicing.rules = #open
* output contains
    result 1..1 MS and
    comment 0..1 and
    type 0..1 and
    problem 0..1 and
    suggestion 0.. and
    suggestionUpdated 0..
* output[result].type.text = "résultat de l'analyse"
* output[result].value[x] only code
* output[result].valueCode from FrPharmaceuticalAnalysisResultCodeValueSet (required)
* output[comment].type.text = "commentaire"
* output[comment].value[x] only string
* output[type].type.text = "type d'intervention"
* output[type].value[x] only CodeableConcept
* output[type].valueCodeableConcept from FrPharmaceuticalInterventionTypeCodeValueSet (extensible)
* output[problem].type.text = "type de problème"
* output[problem].value[x] only CodeableConcept
* output[problem].valueCodeableConcept from FrPharmaceuticalInterventionProblemCodeValueSet (extensible)
* output[suggestion].type.text = "proposition"
* output[suggestion].value[x] only Reference
* output[suggestion].valueReference only Reference(FRInpatientPharmaceuticalInterventionSuggestionProfile)
* output[suggestionUpdated].type.text = "proposition modifiée"
* output[suggestionUpdated].value[x] only Reference
* output[suggestionUpdated].valueReference only Reference(FRInpatientMedicationRequest)