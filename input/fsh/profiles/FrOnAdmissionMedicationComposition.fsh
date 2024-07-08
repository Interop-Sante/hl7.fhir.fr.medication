Profile: FrOnAdmissionMedicationComposition
Parent: FrCurrentMedicationComposition
Id: FrOnAdmissionMedicationComposition
Description: "Profil de la ressource *Composition* du traitement médicamenteux prescrit à l'admmission."
* ^url = "http://interopsante.org/fhir/StructureDefinition/FrOnAdmissionMedicationComposition"
* ^status = #draft
* ^date = "2021-06-24"
* ^publisher = "InterOp'Santé - FRANCE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@interopsante.org"
* ^purpose = "Ce profil est utilisé pour la ressource *Composition* du document FHIR *Ordonnance Médicale d'Admission* (OMA) résultant de la prescription d'admission."
* ^copyright = "InterOp'Santé 2021"
* . ^short = "Ordonnace médicale d'admission (OMA)"
* . ^definition = "Traitements Médicamenteux prescrits à l'admission (Ordonnance Médicale d'Admission - OMA)."
* type = $fr-document-type#10000009 "OMA" (exactly)
* type ^definition = "Le contexte de la liste des Traitements Médicamenteux Courants : à l'admission (OMA - Ordonnance médicale d'Admission)"
* type ^comment = "Le type de liste des Traitements Médicamenteux Courants est fixé à la valeur signifiant Ordonnance Médicale d'Admission (OMA)"
* type ^requirements = "Fixer le contexte de réalisation de la liste des Traitements Médicamenteux Courants : l'Ordonnance Médicale d'Admission (OMA)"