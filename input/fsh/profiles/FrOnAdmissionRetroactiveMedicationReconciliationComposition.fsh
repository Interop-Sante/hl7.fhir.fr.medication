Profile: FROnAdmissionRetroactiveReconciliationComposition
Parent: FRMedicationReconciliationComposition
Id: fr-on-admission-retroactive-reconciliation-composition
Title: "FR On Admission Retroactive Reconciliation Composition"
Description: "Profil de la ressource *Composition* de la Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d'admission."
* ^status = #draft
* ^purpose = "Ce profil est utilisé pour la *Composition* du document FHIR *Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d'admission*\\."
* . ^short = "Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d'admission"

* type = $fr-document-type#10000002 "FCT rétroactive d'admission"

* section[CurrentMedication] ^short = "Ordonnance Médicale d'admission (OMA)"
* section[CurrentMedication] ^definition = "La liste des traitements médicamenteux prescrit à l'admission (Ordonnance Médicale d'admission - OMA), confrontée au Bilan Médicamenteux et qui l'objet de la conciliation des traitements."
* section[CurrentMedication] ^requirements = "Référencer l'Ordonnance Médicale d'Admission qui fait l'objet de cette conciliation des traitements."
* section[CurrentMedication].entry only Reference(FROnAdmissionMedicationComposition)
* section[CurrentMedication].entry ^short = "La composition de l'Ordonnance Médicale d'Admission (OMA) attachée"
* section[CurrentMedication].entry ^definition = "La référence à la ressource *Composition* de l'Ordonnance Médicale d'Admission (OMA). Cette Ordonnance peut, formellement, être vide si le patient n'a aucun médicament prescrit à son admission."
* section[CurrentMedication].entry ^comment = "Une Ordonnance Médicale d'Admission (OMA), même vide si la patient n'a aucun médicament prescrit lors de son admission, doit être attachée à la FCT (Fiche de Concimaition des Traitements médicamenteux)."