ValueSet: FrTreatmentIntent
Id: fr-treatment-intent
Title: "French overall intention of the treatment"
Description: "Le jeu de valeurs à utiliser pour coder l'élément *treatmentIntent* de la ressource *FRInpatientMedicationRequest*."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system SNOMED_CT
    where constraint = "< 363675004 |Intents (nature of procedure values) (qualifier value)|"