Profile: FrMedicationHistoryComposition
Parent: Composition
Id: fr-medication-history-composition
Description: """Profil de la ressource Composition représentant le Bilan Médicamenteux."""
* . ^short = "Bilan Médicamenteux : liste des traitements médicamenteux du patient avant son entrée à l'hôpital. Ce Bilan Médicamenteux est la première étape de la Conciliation Médicamenteuse. Voir [le guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante)."
* implicitRules ..0
* language ^defaultValueCode = #fr-FR

* type MS
* type ^short = "Code contexte du *Bilan Médicamenteux* de cette Composition."
* type.coding 1..1
* type.coding = http://loinc.org#10160-0 "History of Medication use Narrative"

* subject 1..
* subject only Reference($FrCorePatient)
* subject MS
* subject ^short = "Le patient"
* subject ^definition = "Le patient auquel se rapporte ce document Bilan Médicamenteux."
* subject ^comment = "Un Bilan Médicamenteux se rapporte obligatoirement à un patient, référencé en tant que ressource *Patient* profilée *fr-patient*\\."
* subject.type = "Patient"

* date MS
* date ^short = "Date de réalisation du Bilan Médicamenteux"
* date ^definition = "Date de réalisation du Bilan Médicamenteux par son auteur."

* author only Reference($FrCorePractitionerRole) //NR : on ne veut pas ici cibler le practitioner ?
* author MS
* author ^short = "Auteur du Bilan Médicamenteux"

* title = "Bilan médicamenteux" //NR : on ne veut pas permettre un autre titre que celui-ci ?
* title ^requirements = "titre de ce document en français"

* attester 1..1
* attester.party 1..
* attester.party only Reference($FrCorePractitionerRole)
* attester.party ^definition = "Professionnel de santé défini ès qualités (ressource *FrPractionerRoleProfession*\\) ET, de préférence, aussi nominativement (la ressource *FrPractionerRoleProfession* instanciée réfère une instance de ressource *FrPractioner*\\)."
* attester.party.reference 1..
* attester.party.identifier ..0
* attester.party.identifier ^requirements = "Identification du professionnel de santé uniquement par référence à une ressource *PractitionerRole* profilée *fr-practitioner-role*\\."

* section 1..1
* section MS
* section ^short = "Les lignes de traitement médicamenteux"
* section ^definition = "Les lignes de traitement médicamenteux du Bilan, 1 ligne par <*entry*\\>"
* section ^comment = "1 seule section dans le BIlan Médicamenteux, le Bilan"
* section ^requirements = "Composition univoque de la ressource *Bilan Médicamenteux*"
* section ^meaningWhenMissing = "absence de traitement médicamenteux avant l'hospitalisation"

* section.extension contains FrMedicationHistorySources named compositionSourcing 0..* MS
* section.extension[compositionSourcing] ^short = "sourcing du Bilan Médicamenteux"
* section.extension[compositionSourcing] ^definition = "sources consultées pour réaliser le Bilan Médicamenteux"
* section.extension[compositionSourcing] ^comment = "Ce sourcing est obligatoire : il n'est pas possible de réaliser un Bilan Médicamenteux sans jamais consulter aucune source."
* section.extension[compositionSourcing] ^requirements = "Décrire obligatoirement les sources consultées."

* section.title = "Liste des médicaments" //NR : On ne veut pas laisser le chox du titre ?

* section.code.coding = http://loinc.org#10160-0 "History of Medication use Narrative"

* section.author ..0 //NR : pourquoi est-ce en must-support si le champs est interdit ?
* section.author MS
* section.author ^requirements = "L'auteur de la section est celui de l'ensemble du document"
* section.focus ..0
* section.focus MS
* section.focus ^definition = "Le sujet sur lequel porte la *section*\\, quand ce n'est pas celui sur lequel porte la *Composition*\\."
* section.focus ^comment = "Le Blian Médicamenteux ne concerne que le patient courant, sujet de la *Composition*\\.\r\n- La manière de décrire pour le nouveau-né ou le nourisson, les substances prises par sa mère qu'il absorberait par allaitement maternel, n'a pas été explicitement définie. Il s'agirait, de toute façon, si cette substance devait figurer dans le Bilan Médicamenteux du bébé, d'une <*entry*\\> de cette section, une ressource *MedicationStatement* profilée *fr_medication-history-medication-statement* dont il serait précisé qu'elle provient de l'allaitement maternel. Cas d'usage non détaillé."
* section.focus ^requirements = "Le Blian Médicamenteux ne concerne que le patient courant (voir élément *subject* de la *Composition*\\)."

* section.mode 1..
* section.mode = #working
* section.mode MS
* section.mode ^short = "Liste courante exhaustive"
* section.mode ^definition = "Liste courante exhaustive à sa date de réalisation (cf. element *date*\\) par son auteur (cf. element *author*\\)."
* section.mode ^comment = "This element is labeled as a modifier because a change list must not be misunderstood as a complete list. **Dans ce profil**\\, sa valeur est fixée à *working*."
* section.mode ^requirements = "Contraindre une gestion univoque de cette liste représentant le Bilan Médicamenteux."
* section.orderedBy ^short = "Ordre des lignes du Bilan Médicamenteux"
* section.orderedBy ^definition = "L'ordre des lignes de traitement du Bilan Médicamenteux, c'est à dire, l'ordre des <*entry*\\> de son unique <*section*\\>."
* section.orderedBy ^comment = "Il est recommandé d'utiliser la valeur codée *user* si l'ordre des <*entry*\\> provient d'un choix de l'auteur à travers l'IHM de son logiciel qui est conservé dans la génération de la ressource Bilan Médicamenteux. Car, rappel des spécifications HL7-FHIR : *If there is no order specified, the order is unknown, though there may still be some order.*"
* section.entry only Reference(FrMedicationHistoryMedicationStatement) 
* section.entry MS
* section.entry ^short = "La ligne de traitement médicamenteux"
* section.entry ^definition = "Référence à la ligne de traitement médicamenteux, ressource *MedicationStatement* profilée *fr-medication-history-medication-statement*"
* section.entry ^comment = "0 à n lignes de traitement médicamenteux dans le Bilan."
* section.entry ^requirements = "Porter les lignes de traitement médicamenteux du Bilan"
* section.entry ^meaningWhenMissing = "Aucun traitement avant l'hospitalisation"

* section.section ..0