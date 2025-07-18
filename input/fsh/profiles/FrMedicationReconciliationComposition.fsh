Profile: FRMedicationReconciliationComposition
Parent: Composition
Id: fr-medication-reconciliation-composition
Title: "FR Medication Reconciliation Composition"
Description: "Profil de la ressource *Composition* la Fiche de Conciliation des Traitements médicamenteux (FCT)."
* ^purpose = "Ce profil est utilisé pour la *Composition* du document FHIR *Fiche de Conciliation des Traitements médicamenteux (FCT)*\\."
* . ^short = "Fiche de Conciliation des Traitements médicamenteux (FCT)"
* . ^definition = "Fiche de Conciliation des Traitements médicamenteux (FCT) : Liste des traitements médicamenteux conciliés à partir du Bilan Médicamenteux (traitements avant l'hospitalisation) et du Traitement Médicamenteux Courant, conforme aux recommandations du [guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante).\r\n- référence le Bilan Médicamenteux ;\r\n- référence le Traitement Médicamenteux Courant ;\r\n- liste des lignes de traitement conciliées avec, pour chacune,\r\n  - la référence à la ligne de traitement médicamenteux du Bilan Médicamenteux si elle existe,\r\n  - la référence à la ligne de traitement médicamenteux du Traitement Médicamenteux Courant si elle existe,\r\n  - au moins une de ces deux lignes doit exister et être référencée,\r\n  - ses propriétés de conciliation."
* . ^comment = "Cette *Composition* comporte 3 <*section*\\> et 3 seulement :\r\n1. La référence au Bilan Médicamenteux, une ressource *Composition* profilée *fr-medication-history-composition*\r\n2. La référence au Traitement Médicamenteux Courant, une ressource *Composition* profilée *fr-current-medication-composition*\r\n3.  La liste des traitements médicamenteux conciliés avec chacune ses propriétés de conciliation, une <*entry*\\> (de cette 3ème section) par ligne de traitement référençant une ressource *MedicationStatement* profilée *fr-medication-reconciliation-medication-statement*"
* implicitRules ..0
* language ^defaultValueCode = #fr-FR
* status MS
* status ^comment = "1. Une FCT ne peut être au statut final que si elle est complète, à la fois du point de vue de la documentation des lignes de traitement médicamenteux conciliées (cf. les propriétés de conciliation de chacune de ses lignes de traitement) et du point de vue des auteurs qui assument ces contenus (cf. élément <*author*\\> de cette *Composition*\\).\r\n2. Une FCT peut être produite en plusieurs étapes pouvant mettre à disposition des versions intermédiaires, préliminaires, précédant la version finale. Cet élément <*status*\\> de la *Composition* permet alors de rendre compte de ces contenus intermédiaires  préliminaires.\r\n3. Le projet d'établissement et ses choix d'intégration inter applications peut légitimement se limiter à ne partager que la FCT à l'état final, les éventuelles versions intermédiaires préliminaires ne sortant pas du module qui en a la charge."
* type MS
* type from fr-medication-reconciliation-document-type (extensible)
* subject 1..
* subject only Reference($FrCorePatient)
* subject MS
* subject ^short = "Le patient"
* subject ^definition = "Le patient auquel se rapporte ce document FCT (Fiche de Conciliation des Traitements médicamenteux)."
* subject ^comment = "Une FCT (Fiche de Conciliation des Traitements médicamenteux) se rapporte obligatoirement à un patient, référencé en tant que ressource *Patient* profilée *fr-patient*\\."
* subject ^requirements = "Identifier le patient auquel se rapporte obligatoirement une FCT (Fiche de Conciliation des Traitements médicamenteux), patient référencé en tant que ressource *Patient* profilée *fr-patient*\\."
* subject.type = "Patient"
* author only Reference($FrCorePractitionerRole)
* author MS
* author ^short = "Le ou les auteurs"
* author ^definition = "Le ou les auteurs de cette FCT (Fiche de Conciliation des Traitements médicamenteux), défini ès qualités (ressource *PractitionerRole* profilée *fr-practitioner-role-profession*\\) ET, de préférence, aussi nominativement (la ressource *PractionerRole* profilée *fr-practitioner-role* instanciée réfère une instance de ressource *Practioner* profilée *fr-practitioner*\\)."
* author ^comment = "1. Il est vivement recommandé d'identifier nominativement les auteurs : la ressource *PractitionerRole* profilée *fr-practitioner-role-profession* instanciée (ex: Médecin) réfère une instance de ressource *Practitioner* profilée *fr-practitioner* (ex: Dr UNTEL).\r\n2. En l'absence de signature électronique, la fiche est réputée _signée_ par ses co-auteurs (voir élement <*author*\\> de cardinalité [1..*].\r\n3. Les règles de gestion de ce co-authoring peuvent être limitée au seul pharmacien (1 seul auteur) qui assumerait la seule version finale de cette Fiche qui serait communiquée.\r\n4. Un projet plus ambitieux pourrait produire une version préliminaire de la Fiche avec comme seul auteur le pharmacien qui établit la liste des traitements à concilier avec leurs propriétés de conciliation partiellement documentées, puis, une version finale avec comme co-auteurs le phamacien et le prescripteur des lignes de traitement qui ont alors toutes leurs propriétés de conciliation documentées."
* author ^requirements = "Identifier les co-auteurs de la FCT (Fiche de Conciliation des Traitements médicamenteux)."
* author ^meaningWhenMissing = "Au moins un auteur obligatoire."
* author.type = "PractitionerRole"
* attester.party 1..
* attester.party only Reference($FrCorePractitionerRole)
* attester.party.reference 1..
* attester.party.type = "Practitioner"
* attester.party.identifier ..0
* section ..3
* section MS
* section ^slicing.description = "3 sections : 1. Bilan médicamenteux ; 2Traitement Médicamenteux Courant ; 3. Conciliation proprement dite"
* section ^slicing.rules = #closed
* section ^comment = "3 sections, prédéfinies et ces 3 sections seulement"
* section ^requirements = "Structure de la FCT française conforme au du [guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante)."
* section ^meaningWhenMissing = "Les 3 sections prédéfinies sont obligatoires"

* section contains MedicationHistory 1..1 MS and CurrentMedication 1..1 MS and Reconciliation 1..1 MS

* section[MedicationHistory] ^short = "Bilan Médicamenteux"
* section[MedicationHistory] ^definition = "Le Bilan Médicamenteux auquel se réfère la FCT (Fiche de Conciliation des Traitements médicamenteux)."
* section[MedicationHistory] ^comment = "Une FCT (Fiche de Conciliation des Traitements médicamenteux) doit se référer à un Bilan Médicamenteux. Cette section n'a qu'une seule <*entry*\\> qui référence une ressource *Composition* profilée *fr-medication-history-Composition* portant le Bilan Médicamenteux attaché à la FCT."
* section[MedicationHistory] ^requirements = "Référencer le Bilan Médicamenteux de cette conciliation des traitements médicamenteux."
* section[MedicationHistory] ^meaningWhenMissing = "Bilan Médicamenteux obligatoire."
* section[MedicationHistory].title 1..
* section[MedicationHistory].title = "Bilan Médicamenteux" 
* section[MedicationHistory].code = http://loinc.org#10160-0
* section[MedicationHistory].author ..0 MS
* section[MedicationHistory].author ^comment = "L'auteur du Bilan Médicamenteux est celui du Bilan référencé par l'élément <*entry*\\>.\r\nL'auteur de l'inclusion de ce bilan dans la fiche de conciliation est celui de la *Composition*\\."
* section[MedicationHistory].author ^requirements = "L'auteur du Bilan Médicamenteux est celui du Bilan référencé par l'élément <*entry*\\>.\r\nL'auteur de l'inclusion de ce bilan dans cette fiche de conciliation est celui de la *Composition*\\."
* section[MedicationHistory].author ^meaningWhenMissing = "Pas d'auteur spécifique de cette section de la composition."
* section[MedicationHistory].focus ..0 MS
* section[MedicationHistory].focus ^comment = "Le Bilan Médicamenteux ne peut concerner que le patient déclaré comme sujet de cette Conciliation Médicamenteuse (voir element *subject* de la *Composition*\\)."
* section[MedicationHistory].focus ^requirements = "Le Bilan Médicamenteux ne peut concerner que le patient déclaré comme sujet de cette Conciliation Médicamenteuse (voir element *subject* de la *Composition*\\)."
* section[MedicationHistory].mode 1.. MS 
* section[MedicationHistory].mode ^short = "Liste courante exhaustive à sa date de réalisation (cf. element *date*\\) par son auteur (cf. element *author*\\)."
* section[MedicationHistory].mode = #working
* section[MedicationHistory].mode ^comment = "This element is labeled as a modifier because a change list must not be misunderstood as a complete list. **Dans ce profil**\\, sa valeur est fixée à ***working***\\."
* section[MedicationHistory].mode ^requirements = "Contraindre une gestion univoque de cette liste représentant le Bilan Médicamenteux."
* section[MedicationHistory].orderedBy ^comment = "Non concerné car il n'y a qu'une seule <*entry*\\> dans cette <*section*\\>. L'ordre des lignes du Bilan Médicamenteux attaché, sera porté par l'élément  *orderedBy* de la seule <*section*\\> de la *Composition* référencée."
* section[MedicationHistory].entry 1..1 MS 
* section[MedicationHistory].entry only Reference(FrMedicationHistoryComposition)
* section[MedicationHistory].entry ^short = "La référence à la ressource *Composition* du Bilan Médicamenteux. Ce Bilan peut être vide si le patient ne prend pas de médicament en dehors de l'hospitalisation au titre de laquelle la Conciliation est réalisée."
* section[MedicationHistory].entry ^comment = "Un Bilan Médicamenteux, même vide si la patient ne prenait pas de médicament avant son hospitalisation, doit être attaché à la FCT (Fiche de Concimaition des Traitements médicamenteux)."
* section[MedicationHistory].section ..0 MS
* section[MedicationHistory].section ^requirements = "pas de sous-section dans le bilan médicamenteux (toutes les lignes de traitement sont au même niveau)"


* section[CurrentMedication] ^short = "Traitement Médicamenteux Courant"
* section[CurrentMedication] ^definition = "La liste des traitements médicamenteux courants du patient hospitalisé, confrontée au Bilan Médicamenteux et qui l'objet de la conciliation des traitements."
* section[CurrentMedication] ^comment = "Formellement, cette liste peut être vide."
* section[CurrentMedication] ^requirements = "Référencer le Traitement Médicamenteux Courant qui fait l'objet de cette conciliation des traitements."
* section[CurrentMedication] ^meaningWhenMissing = "La liste des Traitements Médicamenteux Courants est obligatoire (même vide). C'est l'objet même de la conciliation des traitements."
* section[CurrentMedication].title 1..
* section[CurrentMedication].title = "Traitement Médicamenteux Courant" (exactly)
* section[CurrentMedication].author ..0 MS
* section[CurrentMedication].author ^requirements = "L'auteur du Traitement Médicamenteux Courant est celui du document référencé par l'élément <*entry*\\>.\r\nL'auteur de l'inclusion de ce document dans cette fiche de conciliation est celui de la *Composition*\\."
* section[CurrentMedication].author ^meaningWhenMissing = "Pas d'auteur spécifique de cette section de la composition."
* section[CurrentMedication].focus ..0 MS
* section[CurrentMedication].focus ^comment = "Le Traitement Médicamenteux Courant ne peut concerner que le patient déclaré comme sujet de cette Conciliation Médicamenteuse (voir element *subject* de la *Composition*\\)."
* section[CurrentMedication].focus ^requirements = "Le Traitement Médicamenteux Courant ne peut concerner que le patient déclaré comme sujet de cette Conciliation Médicamenteuse (voir element *subject* de la *Composition*\\)."
* section[CurrentMedication].mode 1.. MS
* section[CurrentMedication].mode ^short = "Liste courante exhaustive à sa date de réalisation (cf. element *date*\\) par son auteur (cf. element *author*\\)."
* section[CurrentMedication].mode = #working (exactly)
* section[CurrentMedication].mode ^comment = "This element is labeled as a modifier because a change list must not be misunderstood as a complete list. **Dans ce profil**\\, sa valeur est fixée à ***working***\\."
* section[CurrentMedication].mode ^requirements = "Contraindre une gestion univoque de cette liste représentant le Traitement Médicamenteux Courant."
* section[CurrentMedication].orderedBy ^comment = "Non concerné car il n'y a qu'une seule <*entry*\\> dans cette <*section*\\>. L'ordre des lignes du Traitement Médicamenteux Courant attaché, sera porté par l'élément  *orderedBy* de la seule <*section*\\> de la *Composition* référencée."
* section[CurrentMedication].entry 1..1 MS 
* section[CurrentMedication].entry only Reference(FrCurrentMedicationComposition)
* section[CurrentMedication].entry ^short = "La référence à la ressource *Composition* du Traitement Médicamenteux Courant. Ce Traitement peut, formellement, être vide si le patient ne prend pas de médicament lors de son hospitalisation."
* section[CurrentMedication].entry ^comment = "Un Traitement Médicamenteux Courant, même vide si la patient ne prend aucun médicament lors de son hospitalisation, doit être attaché à la FCT (Fiche de Concimaition des Traitements médicamenteux)."
* section[CurrentMedication].section ..0 MS
* section[CurrentMedication].section ^requirements = "pas de sous-section dans le traitement médicamenteux courant (toutes les lignes de traitement sont au même niveau)"

* section[Reconciliation] ^short = "Conciliation proprement dite"
* section[Reconciliation] ^definition = "Conciliation proprement dite : synthèse des médicaments du Bilan Médicamenteux et du Traitement médicamenteux courant avec documentation des écarts"
* section[Reconciliation] ^requirements = "décrire la conciliation proprement dite, à ses différentes étapes de réalisation"
* section[Reconciliation].title 1..
* section[Reconciliation].title = "Fiche de Conciliation des Traitements médicamenteux"
* section[Reconciliation].author ..0 
* section[Reconciliation].author ^short = "Who authored the section"
* section[Reconciliation].author ^requirements = "L'auteur du contenu de cette section conciliation proprement-dite est celui de la composition."
* section[Reconciliation].author ^meaningWhenMissing = "Pas d'auteur spécifique de cette section de la composition."
* section[Reconciliation].author.reference 1..
* section[Reconciliation].author.type = "Practitioner"
* section[Reconciliation].author.identifier ..0
* section[Reconciliation].author.identifier ^requirements = "Les auteurs sont identifiés exclusivement par référence à une ressource profilée fr-practioner-role"
* section[Reconciliation].focus ..0 MS
* section[Reconciliation].focus ^requirements = "La fiche de conciliation ne peut concerner que le patient déclaré comme sujet de cette Conciliation Médicamenteuse (voir élement <*subject*\\> de cette *Composition*\\)."
* section[Reconciliation].mode 1.. MS 
* section[Reconciliation].mode ^short = "Liste courante exhaustive à sa date de réalisation (cf. element *date*\\) par son auteur (cf. element *author*\\)."
* section[Reconciliation].mode = #working 
* section[Reconciliation].mode ^comment = "This element is labeled as a modifier because a change list must not be misunderstood as a complete list. **Dans ce profil**\\, sa valeur est fixée à ***working***\\."
* section[Reconciliation].mode ^requirements = "Contraindre une gestion univoque de cette liste de traitements médicamenteux à concilier."
* section[Reconciliation].entry MS 
* section[Reconciliation].entry ^short = "Ligne de traitement médicamenteux de la FCT (Fiche de Concilitaion des Traitements médicamenteux)"
* section[Reconciliation].entry ^comment = "Chaque ligne est associée à une ligne du Bilan Médicamenteux et/ou une ligne du Traitement Médicamenteux courant et est documentée par étape par le pharmacien et par le prescripteur."
* section[Reconciliation].entry ^requirements = "Décrire chaque ligne de traitement médicamenteux à concilier, avec ses propriétés de conciliation"
* section[Reconciliation].entry ^meaningWhenMissing = "Pas de médicament dans le Bilan Médicaenteux ET pas de médicament prescrit à l'admission : TRES PEU PROBABLE"

* section[Reconciliation].entry only Reference(FrMedicationReconciliationMedicationStatement)

* section[Reconciliation].section ..0 MS
* section[Reconciliation].section ^requirements = "pas de sous-section dans la fiche de conciliation (toutes les lignes de traitement conciliées sont au même niveau)"