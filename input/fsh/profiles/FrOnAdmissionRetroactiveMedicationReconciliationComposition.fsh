Profile: FrOnAdmissionRetroactiveMedicationReconciliationComposition
Parent: FrMedicationReconciliationComposition
Id: FrOnAdmissionRetroactiveMedicationReconciliationComposition
Description: "Profil de la ressource *Composition* de la Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d'admission."
* ^url = "http://interopsante.org/fhir/StructureDefinition/FrOnAdmissionRetroactiveMedicationReconciliationComposition"
* ^status = #draft
* ^purpose = "Ce profil est utilisé pour la *Composition* du document FHIR *Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d'admission*\\."
* . ^short = "Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d'admission"
* . ^definition = "Fiche de Conciliation des Traitements médicamenteux (FCT) : Liste des traitements médicamenteux conciliés à partir du Bilan Médicamenteux (traitements avant l'hospitalisation) et de l'Ordonnance médicale d'Admission (OMA), conforme aux recommandations du [guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante).\r\n- référence le Bilan Médicamenteux ;\r\n- référence l'Ordonnance médicale d'Admission (OMA) ;\r\n- liste des lignes de traitement conciliées avec, pour chacune,\r\n  - la référence à la ligne de traitement médicamenteux du Bilan Médicamenteux si elle existe,\r\n  - la référence à la ligne de traitement médicamenteux de l'OMA si elle existe,\r\n  - au moins une de ces deux lignes doit exister et être référencée,\r\n  - ses propriétés de conciliation."
* . ^comment = "Cette *Composition* comporte 3 <*section*\\> et 3 seulement :\r\n1. La référence au Bilan Médicamenteux, une ressource *Composition* profilée *fr-medication-history-composition*\r\n2. La référence à l'OMA, une ressource *Composition* profilée *fr-on-adsmission-medication-composition*\r\n3.  La liste des traitements médicamenteux conciliés avec chacune ses propriétés de conciliation, une <*entry*\\> (de cette 3ème section) par ligne de traitement référençant une ressource *MedicationStatement* profilée *fr-medication-reconciliation-medication-statement*"
* type = $fr-document-type#10000002 "FCT rétroactive d'admission" (exactly)
* section[CurrentMedication] ^short = "Ordonnance Médicale d'admission (OMA)"
* section[CurrentMedication] ^definition = "La liste des traitements médicamenteux prescrit à l'admission (Ordonnance Médicale d'admission - OMA), confrontée au Bilan Médicamenteux et qui l'objet de la conciliation des traitements."
* section[CurrentMedication] ^requirements = "Référencer l'Ordonnance Médicale d'Admission qui fait l'objet de cette conciliation des traitements."
* section[CurrentMedication].entry only Reference(FrOnAdmissionMedicationComposition)
* section[CurrentMedication].entry ^short = "La composition de l'Ordonnance Médicale d'Admission (OMA) attachée"
* section[CurrentMedication].entry ^definition = "La référence à la ressource *Composition* de l'Ordonnance Médicale d'Admission (OMA). Cette Ordonnance peut, formellement, être vide si le patient n'a aucun médicament prescrit à son admission."
* section[CurrentMedication].entry ^comment = "Une Ordonnance Médicale d'Admission (OMA), même vide si la patient n'a aucun médicament prescrit lors de son admission, doit être attachée à la FCT (Fiche de Concimaition des Traitements médicamenteux)."