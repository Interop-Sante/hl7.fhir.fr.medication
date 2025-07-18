Profile: FROnAdmissionMedicationComposition
Parent: FRCurrentMedicationComposition
Id: fr-on-admission-medication-composition
Title: "FR On Admission Medication Composition"
Description: "Profil de la ressource *Composition* du traitement médicamenteux prescrit à l'admmission."
* ^status = #draft
* . ^short = "Ordonnace médicale d'admission (OMA)"
* . ^definition = "Traitements Médicamenteux prescrits à l'admission (Ordonnance Médicale d'Admission - OMA)."
* type = $fr-document-type#10000009 "OMA" (exactly)
* type ^definition = "Le contexte de la liste des Traitements Médicamenteux Courants : à l'admission (OMA - Ordonnance médicale d'Admission)"
* type ^comment = "Le type de liste des Traitements Médicamenteux Courants est fixé à la valeur signifiant Ordonnance Médicale d'Admission (OMA)"
* type ^requirements = "Fixer le contexte de réalisation de la liste des Traitements Médicamenteux Courants : l'Ordonnance Médicale d'Admission (OMA)"