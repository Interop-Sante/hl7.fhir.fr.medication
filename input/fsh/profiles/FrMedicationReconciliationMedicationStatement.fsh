Profile: FrMedicationReconciliationMedicationStatement
Parent: MedicationStatement
Id: fr-medication-reconciliation-statement
Description: "Profil de la ressource *MedicationStatement* référencée dans la ressource *Composition* de la Fiche de Conciliation des Traitements médicamenteux (FCT)."
* ^status = #draft
* . ^short = "Ligne de traitement médicamenteux de la FCT (Fiche de Conciliation ds Traitements médicamenteux)"
* . ^definition = "Ligne de traitement médicamenteux de la FCT (Fiche de Conciliation ds Traitements médicamenteux), avec ses propriétés de documentation de la conciliation."
* meta.tag ..0
* implicitRules ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains FrMedicationStatementReconciliationProperties named reconciliation 0..1 MS
* extension[reconciliation] ^short = "Propriétés de la conciliation de cette ligne de traitement médicamenteux"
* extension[reconciliation] ^definition = "Documentation de la conciliation : statut, divergence, commentaire, type d'erreur/écart, conséquence de l'erreur/écart, résolution de l'erreur/écart"
* extension[reconciliation] ^comment = "La documentation de la conciliation est renseignée progressivement par le pharmacien puis le prescripteur lors du dialogue qui s'instaure entre eux-deux.\r\nL'élément complexe *reconciliation* peut porter tout l'historique de ce renseignement progressif ou ne porter que son état courant, c'est-à-dire pour chaque propriété, l'information à sa dernière date d'enregistrement par son ou ses auteurs."
* extension[reconciliation] ^requirements = "Porter la documentation de la Conciliation Médicamenteuse selon les règles de gestion en vigueur en France"
* status MS
* medication[x] only Reference(FrMedication)
* medication[x] MS
* medication[x] ^short = "Le médicament constitutif de cette ligne | What medication was taken"
* medication[x] ^definition = "Identifie le médicament constitutif de cette ligne. C'est lien vers une ressource Medication qui décrit ce médicament. Identifies the medication being administered. This is a link to a resource representing the details of the medication."
* medication[x] ^comment = "Même si le médicament n'est composé que d'une spécialité (par exemple un comprimé), il est défini par référence à une Medication qui décrira sa composition d'une seule spécialité"
* medication[x] ^requirements = "traitement univoque de l'élément medication[x]"
* subject only Reference($FrCorePatient)
* subject MS
* subject ^definition = "Le patient qui prend ou a pris cette ligne de traitement médicamenteux."
* subject ^comment = "Obligatoire dans la ressource FHIR *MedicationStatement* originelle, donc DOIT ABSOLUMENT être identique au patient identifé dans la ressource *Composition* de la Fiche. Cf. *Composition.subjet*\\."
* subject ^requirements = "La Fiche de Conciliation des Traitements médicamenteux ne s'applique qu'à un patient"
* subject.reference 1.. MS
* subject.reference ^requirements = "référence la ressource Patient selon la profile fr-patient défini par Interop'Santé"
* subject.type = "Patient"
* subject.identifier ..0
* subject.identifier ^requirements = "Identification du patient exclusivement par référence à une ressource Patient selon le profil fr-patient défini par Interop'Santé"
* informationSource ..0 MS
* informationSource ^comment = "Dans le contexte de la Conciliation des Traitements médicamenteux, le sourcing des informations de la ligne de la Fiche de Conciliation des Traitements médicamenteux doit être réalisé à travers la collection d'éléments *derivedFrom* et à travers elle seulement."
* informationSource ^requirements = "Garantir la règle de gestion du sourcing exclusivement à travers la collection d'éléments *derivedFrom*"
* derivedFrom 1..2 MS
* derivedFrom ^slicing.description = "lien avec telle ligne du Bilan Médicamenteux et/ou telle ligne de la Prescription d'Admission"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^comment = "Une ligne de la Fiche de Conciliation doit être en relation avec au moins une ligne du Bilan d'Admission ou une ligne de la Prescription d'Admission"
* derivedFrom ^requirements = "fournir le lien entre la Fiche de Conciliation et le Bilan Médicamenteux et la Prescription d'Admission."
* derivedFrom contains
    fromMedicationHistory 0..1 MS and
    fromCurrentMedication 0..1 MS
* derivedFrom[fromMedicationHistory] only Reference(FrMedicationHistoryMedicationStatement)
* derivedFrom[fromMedicationHistory] ^short = "Ligne du Bilan Médicamenteux"
* derivedFrom[fromMedicationHistory] ^definition = "Ligne du Bilan Médicamenteux en relation avec cette ligne de la Fiche de Conciliation"
* derivedFrom[fromMedicationHistory] ^comment = "Un ligne de la Fiche de Conciliation peut n'être en relation avec aucune des lignes du bilan Médicamenteux (ligne initiée lors de la Prescription d'Admission)"
* derivedFrom[fromMedicationHistory] ^requirements = "Référencer une ressource ligne de Bilan Médicamenteux"
* derivedFrom[fromMedicationHistory] ^meaningWhenMissing = "Aucune ligne du Bilan Médicamenteux n'est en relation avec cette ligne de la Fiche de Conciliation"
* derivedFrom[fromMedicationHistory].reference 1..
* derivedFrom[fromMedicationHistory].identifier ..0
* derivedFrom[fromMedicationHistory].identifier ^requirements = "identifier la ligne de Bilan Médicamenteux par référence à une ressource MedicationStatement profilée SiPh"
* derivedFrom[fromCurrentMedication] only Reference(FrCurrentMedicationMedicationStatement)
* derivedFrom[fromCurrentMedication] ^short = "Ligne du Traitement Médicamenteux Courant"
* derivedFrom[fromCurrentMedication] ^definition = "Ligne du Traitement Médicamenteux Courant en relation avec cette ligne de la Fiche de Conciliation"
* derivedFrom[fromCurrentMedication] ^comment = "Un ligne de la Fiche de Conciliation peut n'être en relation avec aucune des lignes de la Prescription d'Admission (ligne arrêtée ou oubliée lors de la Prescription d'Admission)"
* derivedFrom[fromCurrentMedication] ^requirements = "Référencer une ressource ligne de Traitement Médicamenteux Courant"
* derivedFrom[fromCurrentMedication].reference 1..
* derivedFrom[fromCurrentMedication].identifier ..0
* derivedFrom[fromCurrentMedication].identifier ^requirements = "identifier la ligne du Bilan d'Admission par référence à une ressource MedicationStatement profilée SiPh"
* note MS
* note ^definition = "Information textuelle complémentaire pour ce médicament, ***A L'EXCEPTION*** des notes concernant la documentation de la Conciliation proprement-dite de ce médicament qui doivent figurer dans l'élément *commentaire* de l'extension *reconciliation*."
* note ^comment = "Bien distinguer les informations complémentaires relatives au traitement médicamenteux que représente cette ligne, qui doivent figurer ici, de celles relative à la conciliation proprement-dite de cette ligne avec le Bilan Médicamenteux et le Traitement Médicamenteux Courant, qui doivent figurer dans l'extension *reconciliation*"
* note ^requirements = "Bien distinguer information complémentaire concernant le traitement médicamenteux de celle concernant la conciliation proprement-dite."
* note ^meaningWhenMissing = "Toute l'information nécessaire à la compréhension du traitement médicamenteux que représente cette ressource *MedicationStatement* est contenue dans ses autres éléments."
* dosage.doseAndRate.dose[x] only FrRangeUcum or FrSimpleQuantityUcum
* dosage.doseAndRate.dose[x] MS
* dosage.doseAndRate.dose[x] ^short = "Precise amount of medication per dose"
* dosage.doseAndRate.dose[x] ^definition = "Amount of medication per dose. No use of element 'comparator' in the simpleQuantity definitions."
* dosage.doseAndRate.rate[x] only FrRatioUcum or FrRangeUcum or FrSimpleQuantityUcum
* dosage.doseAndRate.rate[x] MS
* dosage.doseAndRate.rate[x] ^short = "Precise amount of medication per unit of time"
* dosage.doseAndRate.rate[x] ^definition = "Amount of medication per unit of time No use of element 'comparator' in the simpleQuantity definitions."
* dosage.maxDosePerPeriod only FrRatioUcum
* dosage.maxDosePerPeriod MS
* dosage.maxDosePerAdministration only FrSimpleQuantityUcum
* dosage.maxDosePerAdministration MS
* dosage.maxDosePerLifetime only FrSimpleQuantityUcum
* dosage.maxDosePerLifetime MS