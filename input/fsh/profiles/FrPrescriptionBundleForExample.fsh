Profile: FRPrescriptionBundleForExample
Parent: Bundle
Id: fr-prescription-bundle-for-example
Title: "FR Prescription Bundle For Example"
Description: "Profil de la ressource Bundle pour la constitution d'exemples de prescription."
* ^status = #draft
* ^purpose = "Ce profil est utilisé pour la constitution d'exemples de prescription en FHIR. Toutes les prescriptions en FHIR ne sont pas forcément présentées sous la forme de ressource Bundle suivant ce profil, la représentation dépend de l'architecture du (ou des) serveur(s) FHIR interrogé(s). Cf. section 21 de la page sur la transformation PN13 vers FHIR pour plus de détail."
* . ^short = "Bundle exemple de prescription"
* . ^definition = "Exemple de prescription contenant l'ensemble des ressources issus d'une traduction d'un message PN13 de prescription en FHIR"
* implicitRules ..0
* language ^defaultValueCode = #fr-FR
* type ^defaultValueCode = #searchset
// * entry ^slicing.discriminator.type = #profile
// * entry ^slicing.discriminator.path = "entry.resource"  
// * entry ^slicing.description = "6 slices: 1. for Patient 2. for Practitioner 3. for MedicationRequest 4. for Medication 5. for RequestGroup 6. for Observation"
// * entry ^slicing.rules = #open
// * entry contains
//     Patient 0..1 MS and
//     Practitioner 0..1 MS and
//     MedicationRequest 1.. MS and
//     MedicationNonCompound 0.. MS and
//     MedicationCompound 0.. MS and
//     RequestGroupForPrescription 0..1 MS and
//     Observation 0.. MS
// * entry.resource[Patient] from $FrCorePatient 
// * entry.resource[Patient].resolve() ^short = "Patient for whom the medication is requested"
// * entry.resource[Practioner] from $FrCorePractitioner
// * entry.resource[Practioner] ^short = "Requester of the medication request"
// * entry.resource[MedicationRequest] from fr-inpatient-medicationrequest
// * entry.resource[MedicationRequest] ^short = "Line of presciption"
// * entry.resource[MedicationNonCompound] from fr-medication-noncompound
// * entry.resource[MedicationNonCompound] ^short = "Simple medication either prescribed directly or referenced by a compound medication"
// * entry.resource[MedicationCompound] from fr-medication-compound
// * entry.resource[MedicationCompound] ^short = "Prescribed compound medication"
// * entry.resource[RequestGroupForPrescription] from fr-requestgroup-for-prescription
// * entry.resource[RequestGroupForPrescription] ^short = "Relation between lines of prescription (ex. exclusive: one or the other)"
// * entry.resource[Observation] from fr-observation-for-prescription
// * entry.resource[Observation] ^short = "Observation provided as context of the prescription (ex. weight, height...)"
