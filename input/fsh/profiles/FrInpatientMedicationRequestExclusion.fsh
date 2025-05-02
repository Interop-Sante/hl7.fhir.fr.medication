Profile: FrInpatientMedicationRequestExclusion
Parent: MedicationRequest
Id: fr-inpatient-medicationrequest-exclusion
Title: "FrInpatientMedicationRequestExclusion"
Description: "French inpatient medication request profile for excluded medication"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains fr-treatment-intent named treatmentIntent 0..1
* extension[treatmentIntent] ^short = "overall treatment intent"
* extension[treatmentIntent] ^definition = "the overall intention of the treatment"
* extension[treatmentIntent] ^meaningWhenMissing = "overall intention of the treatment not specified"
* extension[treatmentIntent].value[x].coding ^definition = "SNOMED CT code minimal value set for overall treatment intent (extensible)"
* subject only Reference($FrCorePatient)
