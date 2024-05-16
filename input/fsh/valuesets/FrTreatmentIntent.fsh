ValueSet: FrTreatmentIntent
Id: FrTreatmentIntent
Title: "French overall intention of the treatment"
Description: "Le jeu de valeurs à utiliser pour coder l'élément *treatmentIntent* de la ressource *FrInpatientMedicationRequest*."
* ^meta.lastUpdated = "2021-10-18T07:44:00Z"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "http://interopsante.org/fhir/ValueSet/fr-treatment-intent"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-10-18T07:44:00Z"
* ^publisher = "InterOp'Santé - FRANCE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@interopsante.org"
* ^immutable = false
* ^copyright = "InterOp'Santé 2021. This value set includes content from SNOMED CT, which is copyright © 2002 International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* include codes from system SNOMED_CT
    where constraint = "< 363675004 |Intents (nature of procedure values) (qualifier value)|"