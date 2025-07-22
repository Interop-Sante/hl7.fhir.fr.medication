Profile: FRCurrentMedicationComposition
Parent: Composition
Id: fr-current-medication-composition
Title: "FR Current Medication Composition"
Description: "Profil de la ressource Composition du traitement médicamenteux courant."
* ^status = #draft
* ^purpose = "Ce profil est utilisé pour la ressource *Composition* de tout document FHIR *Traitement médicamenteux courant*\\. Par exemple, celui résultant de la prescription d'admission intitulé *Ordonnance Médicale d'Admission* (OMA)."
* . ^short = "Traitement Médicamenteux Courant"
* . ^definition = "Traitement Médicamenteux Courant : liste des lignes de traitement médicamenteux courant hospitalier."
* . ^comment = "En général, une ligne par médicament prescrit en cours. Des différences de construction des lignes peuvent exister d'un logiciel à un autre, liées à la structuration de la posologie (nombre de doses unitaires par période, quantité des doses unitaires, horaire des doses unitaires). Le jeu de tests de prescriptions intiales de référence permet l'évaluation de la capacité des logiciels à supporter la structuration de posologies complexes."
* implicitRules ..0
* language ^defaultValueCode = #fr-FR
* type MS
* type from fr-current-medication-document-type (extensible)
* type ^short = "Type de liste des Traitements Médicamenteux Courants"
* type ^definition = "Le contexte de la liste des Traitements Médicamenteux Courants (sans précision, OMA, sortie, transfert) ; jeu de valeurs extensible"
* type ^comment = "Tous les types de liste des Traitements Médicamenteux Courants n'ont pas de code LOINC. Le contexte de la liste des Traitements médicamenteux Courant peut dépasser le périmètre du jeu de valeurs associé, binding *extensible*\\."
* type ^requirements = "Préciser le contexte de réalisation de la liste des Traitements Médicamenteux Courants"
* type ^binding.description = "Type of a Current Medciation."
* subject 1..
* subject only Reference($FrCorePatient)
* subject MS
* subject ^short = "Le patient"
* subject ^definition = "Le patient auquel se rapporte ce document Traitement Médicamenteux Courant."
* subject ^comment = "Un Traitement Médicamenteux Courant se rapporte obligatoirement à un patient, référencé en tant que ressource *Patient* profilée *fr-patient*\\."
* subject ^requirements = "Identifier le patient auquel se rapporte obligatoirement un Traitement Médicamenteux Courant, patient référencé en tant que ressource *Patient* profilée *fr-patient*\\."
* subject ^meaningWhenMissing = "Patient obligatoire."
* subject.type 1..1
* subject.type = "Patient"
* encounter only Reference($FrCoreEncounter)
* date ^short = "Date de détermination du Traitement Médicamenteux Courant"
* date ^definition = "Date de détermination du Traitementeux Courant par son auteur (cf. element *author*\\).  //The composition editing time, when the composition was last logically changed by the author."
* author ..1
* author only Reference($FrCorePractitionerRole)
* author MS
* author ^short = "Le prescripteur"
* author ^definition = "Le prescripteur de ce Traitement Médicamenteux Courant, défini ès qualités (ressource *PractitionerRole* profilée *fr-practitioner-role*\\) ET, de préférence, aussi nominativement (la ressource *PractionerRole* profilée *fr-practitioner-role-profession* instanciée réfère une instance de ressource *Practioner* profilée *fr-practitioner*\\)."
* author ^comment = "Il est vivement recommandé d'identifier nominativement les auteurs : la ressource *PractitionerRole* profilée *fr-practitioner-role-profession* instanciée (ex: Médecin) réfère une instance de ressource *Practitioner* profilée *fr-practitioner* (ex: Dr UNTEL)."
* author ^requirements = "Identifier le prescriteur."
* author ^meaningWhenMissing = "Auteur obligatoire"
* title = "Traitement Médicamenteux Courant"
* attester.party only Reference($FrCorePractitionerRole)
* section 1..1
* section MS
* section ^short = "Liste des médicaments prescrits"
* section ^definition = "La liste des lignes de prescription médicamenteuse en cours."
* section ^comment = "Une ligne par <*entry*\\>, de médicament prescrit, avec sa posologie."
* section ^requirements = "Fournir la liste des prescriptions médicamenteuses en cours."
* section ^meaningWhenMissing = "Section obligatoire, éventuellement vide si aucun traitement médicamenteux en cours."
* section.title = "Liste des médicaments prescrits en cours"

* section.author ..0
* section.author ^requirements = "L'auteur de la section est celui de l'ensemble du document"

* section.focus ..0
* section.focus ^definition = "Le sujet sur lequel porte la *section*\\, quand ce n'est pas celui sur lequel porte la *Composition*\\."
* section.focus ^comment = "Le Traitement Médicamenteux Courant ne concerne que le patient courant, sujet de la *Composition*\\.\r\n- La manière de décrire pour le nouveau-né ou le nourisson, les substances prises par sa mère qu'il absorberait par allaitement maternel, n'a pas été explicitement définie. Il s'agirait, de toute façon et sous réserve que cette substance doive figurer dans le Traitement Médicamenteux Courant du bébé, d'une <*entry*\\> de cette section, une ressource *MedicationStatement* profilée *fr-current-medication-medication-statement* dont il serait précisé qu'elle provient de l'allaitement maternel. Cas d'usage non détaillé."
* section.focus ^requirements = "Le Traitement Médicamenteux Courant ne concerne que le patient auquel se rapporte ce document (voir element *subject* de la *Composition*\\)."
* section.mode 1..
* section.mode = #working
* section.mode MS
* section.mode ^short = "Liste courante exhaustive"
* section.mode ^definition = "Liste courante exhaustive à sa date de réalisation (cf. element *date*\\) par son auteur (cf. element *author*\\)."
* section.mode ^comment = "This element is labeled as a modifier because a change list must not be misunderstood as a complete list. **Dans ce profil**\\, sa valeur est fixée à ***working***\\."
* section.mode ^requirements = "Contraindre une gestion univoque de cette liste représentant le Bilan Médicamenteux."
* section.orderedBy ^short = "Ordre des lignes du Traitement Médicamenteux Courant"
* section.orderedBy ^definition = "L'ordre des lignes de traitement du Traitement Médicamenteux Courant, c'est à dire, l'ordre des <*entry*\\> de son unique <*section*\\>."
* section.orderedBy ^comment = "Il est recommandé d'utiliser la valeur codée ***user*** si l'ordre des <*entry*\\> provient d'un choix de l'auteur à travers l'IHM de son logiciel qui est conservé dans la génération de la ressource Traitement Médicamenteux Courant. Car, rappel des spécifications HL7-FHIR : *If there is no order specified, the order is unknown, though there may still be some order.*"
* section.entry only Reference(FRCurrentMedicationMedicationStatement)
* section.entry MS
* section.entry ^short = "La ligne de traitement médicamenteux"
* section.entry ^definition = "Référence à la ligne de traitement médicamenteux courant, ressource *MedicationStatement* profilée *fr-current-medication-medication-statement*\\."
* section.entry ^comment = "0 à n lignes de traitement médicamenteux dans le Traitement Médicamenteux Courant."
* section.entry ^requirements = "Porter les lignes du traitement médicamenteux courant."
* section.entry ^meaningWhenMissing = "Absence de traitement médicamenteux en cours (aucune prescription en cours ou toutes sont terminées ou ont été arrêtées)."
* section.section ..0