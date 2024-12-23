Extension: FrMedicationStatementReconciliationProperties
Id: fr-medicationstatement-reconciliation-properties
Description: "Propiétés spécifiques de la ligne de médicament, ajoutée à la ressource MedicationStatement dans la Fiche de Conciliation des Traitements médicamenteux (FCT)"

* ^context.type = #element
* ^context.expression = "MedicationStatement"

* . ^short = "Propriétés de conciliation d'une ligne de traitement médicamenteux"
* . ^definition = "Propriétés de conciliation d'une ligne de traitement médicamenteux dans une Fiche de Conciliation des Traitements médicamenteux (FCT)"
* . ^comment = "Ces propriétés sont documentées par le pharmacien puis par le prescripteur. C'est la raison pour laquelle chacune a son propre lot de propriétés d'édition (date, statut et auteur(s)). Ces propriétés d'édition sont facultatives pour supporter les cas d'usage qui n'ont pas besoin de ce niveau de finesse. Par exemple, transmettre une fiche de conciliation complète et validée, cosignée du pharmacien et du prescripteur, d'un logiciel de conciliation au DPI sans qu'il n'y ait de dialogue entre les deux logiciels.\r\nUne ligne de Fiche de Conciliation des Traitements médicamenteux doit être crée avec au moins les deux propriétés *status* et *isDiscrepant* renseignées, cardinalité minimale 2. Le nombre de *comment* est indéterminé, cardinalité maximale *."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    status 1..1 and
    isDiscrepant 1..1 and
    discrepancy 0..1 and
    comment 0..* and
    type 0..1 and
    outcome 0..1 and
    resolution 0..1

* extension[status] ^short = "statut de divergence sur la ligne de traitement"
* extension[status] ^definition = "valeur codée du statut de divergence de la ligne (MedicationStatement) de la Fiche de Conciliation des Traitements médicamenteux : { Continué ; Équivalence ; Arrêté ; Modifié ; Initié }"
* extension[status] ^comment = "Ce statut est attribué par le pharmacien (en général, même si un prescripteur est habilité à le faire), dès la création de la Fiche de Conciliation. C'est pourquoi il est obligatoire et sa cardinalité [1..1]."

* extension[status].extension ^slicing.discriminator.type = #value
* extension[status].extension ^slicing.discriminator.path = "url"
* extension[status].extension ^slicing.rules = #open
* extension[status].extension contains
    value 1..*

* extension[status].extension[value] ^short = "valeur de la propriété *status*"
* extension[status].extension[value] ^definition = "valeur codée (coding) de la propriété *status* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition (statut, date, auteur(s))"
* extension[status].extension[value] ^comment = "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi."
* extension[status].extension[value] ^requirements = "Qualifier le statut de divergence de la ligne de traitement de la Fiche de Conciliation des Traitements médicamenteux par une valeur codée tirée d'un jeu de valeurs contraint."


* extension[status].extension[value].extension ^slicing.discriminator.type = #value
* extension[status].extension[value].extension ^slicing.discriminator.path = "url"
* extension[status].extension[value].extension ^slicing.rules = #open
* extension[status].extension[value].extension contains
    code 1..1 and
    date 0..1 and
    edStatus 0..1 and
    author 0..1

* extension[status].extension[value].extension[code] ^short = "valeur codée de la propriété *status*"
* extension[status].extension[value].extension[code] ^definition = "valeur codée (coding) de la propriété *status* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s)."
* extension[status].extension[value].extension[code] ^comment = "La valeur codée de la propriété *status* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire."
* extension[status].extension[value].extension[code] ^requirements = "Contraindre l'usage d'une valeur codée et de son jeu de valeurs."
* extension[status].extension[value].extension[code].value[x] 1..
* extension[status].extension[value].extension[code].value[x] only Coding
* extension[status].extension[value].extension[code].value[x] from FrMedicationReconciliationStatus (required)

* extension[status].extension[value].extension[date] ^short = "date d'édition de la propriété *status*"
* extension[status].extension[value].extension[date] ^definition = "date d'édition de l'information portée par l'élément *status* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition."
* extension[status].extension[value].extension[date] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date"
* extension[status].extension[value].extension[date] ^requirements = "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[status].extension[value].extension[date] ^meaningWhenMissing = "date de la Fiche de Conciliation des Traitements médicamenteux, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
* extension[status].extension[value].extension[date].value[x] 1..
* extension[status].extension[value].extension[date].value[x] only dateTime

* extension[status].extension[value].extension[edStatus] ^short = "statut éditorial (codé) de la propriété *status*"
* extension[status].extension[value].extension[edStatus] ^definition = "statut éditorial (code) de l'information portée par l'élément *status* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition"
* extension[status].extension[value].extension[edStatus] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *status* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[status].extension[value].extension[edStatus] ^requirements = "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[status].extension[value].extension[edStatus] ^meaningWhenMissing = "Pas de gestion du statut éditorial de la valeur de la propriété *status* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[status].extension[value].extension[edStatus].value[x] 1..
* extension[status].extension[value].extension[edStatus].value[x] only code
* extension[status].extension[value].extension[edStatus].value[x] from FrEditorialStatus (required)
* extension[status].extension[value].extension[edStatus].value[x] ^binding.description = "fr-editorial-status"

* extension[status].extension[value].extension[author] ^short = "auteur(s) de la propriété *status*"
* extension[status].extension[value].extension[author] ^definition = "auteur(s) de l'information portée par l'élément *status* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition."
* extension[status].extension[value].extension[author] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author"
* extension[status].extension[value].extension[author] ^requirements = "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[status].extension[value].extension[author] ^meaningWhenMissing = "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la Fiche de Conciliation des Traitements médicamenteux"
* extension[status].extension[value].extension[author].value[x] 1..
* extension[status].extension[value].extension[author].value[x] only Reference($FrCorePractitionerRoleProfession)
* extension[status].extension[value].extension[author].value[x] ^short = "identité de l'auteur par son rôle et, de préférence, aussi sa personne"
* extension[status].extension[value].extension[author].value[x] ^definition = "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL)."
* extension[status].extension[value].extension[author].value[x] ^comment = "PrationerRole avec référence à Practioner (si pas de practioner référencé --> identification ès qualités du professionnel de santé -que par son rôle)"

* extension[isDiscrepant] ^short = "identification oui/non d'une divergence sur la ligne de traitement"
* extension[isDiscrepant] ^definition = "Booléen marqueur de l'identification d'une divergence ou non sur cette ligne (MedicationStatement) de la Fiche de Conciliation des Traitements médicamenteux.\r\nLa qualification de la divergence, intentionnelle ou non, est portée par l'élément codé *discrepancy*."
* extension[isDiscrepant] ^comment = "Ce marquage est réalisé par le pharmacien (en général, même si un prescripteur est habilité à le faire), dès la création de la Fiche de Conciliation des Traitements médicamenteux. C'est pourquoi il est obligatoire et sa cardinalité [1..1] et dissocié de la qualification de la divergence qui est portée par la propriété *discrepancy*."

* extension[isDiscrepant].extension ^slicing.discriminator.type = #value
* extension[isDiscrepant].extension ^slicing.discriminator.path = "url"
* extension[isDiscrepant].extension ^slicing.rules = #open


* extension[isDiscrepant].extension contains
    value 1..*

* extension[isDiscrepant].extension[value] ^short = "valeur booléenne de la propriété *isDiscrepant*"
* extension[isDiscrepant].extension[value] ^definition = "valeur booléenne (bool) de la propriété *isDiscrepant* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition (statut, date, auteur(s))."
* extension[isDiscrepant].extension[value] ^comment = "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi."
* extension[isDiscrepant].extension[value] ^requirements = "Marquer par un booléen l'identification de l'existence d'une divergence dans la ligne de traitement de la Fiche de Conciliation des Traitements médicamenteux."
* extension[isDiscrepant].extension[value].extension ^slicing.discriminator.type = #value
* extension[isDiscrepant].extension[value].extension ^slicing.discriminator.path = "url"
* extension[isDiscrepant].extension[value].extension ^slicing.rules = #open
* extension[isDiscrepant].extension[value].extension contains
    yesNo 1..1 and
    date 0..1 and
    edStatus 0..1 and
    author 0..*

* extension[isDiscrepant].extension[value].extension[yesNo] ^short = "valeur booléenne de la propriété *isDiscrepant*"
* extension[isDiscrepant].extension[value].extension[yesNo] ^definition = "valeur booléenne (bool) de la propriété *isDiscrepant* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s)."
* extension[isDiscrepant].extension[value].extension[yesNo] ^comment = "La valeur booléenne de la propriété *isDiscrepant* de la ligne de traitement de la Fiche de Conciliation des Traitements médicamenteux est obligatoire."
* extension[isDiscrepant].extension[value].extension[yesNo] ^requirements = "Contraindre l'usage d'une valeur booléenne."
* extension[isDiscrepant].extension[value].extension[yesNo].value[x] 1..
* extension[isDiscrepant].extension[value].extension[yesNo].value[x] only boolean

* extension[isDiscrepant].extension[value].extension[date] ^short = "date d'édition de la propriété *isDiscrepant*"
* extension[isDiscrepant].extension[value].extension[date] ^definition = "date d'édition de l'information portée par l'élément *isDiscrepant*de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition."
* extension[isDiscrepant].extension[value].extension[date] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date"
* extension[isDiscrepant].extension[value].extension[date] ^requirements = "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[isDiscrepant].extension[value].extension[date] ^meaningWhenMissing = "date de la Fiche de Conciliation des Traitements médicamenteux, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
* extension[isDiscrepant].extension[value].extension[date].value[x] 1..
* extension[isDiscrepant].extension[value].extension[date].value[x] only dateTime

* extension[isDiscrepant].extension[value].extension[edStatus] ^short = "statut éditorial (codé) de la propriété *isDiscrepant*"
* extension[isDiscrepant].extension[value].extension[edStatus] ^definition = "statut éditorial (code) de l'information portée par l'élément *isDiscrepant* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition"
* extension[isDiscrepant].extension[value].extension[edStatus] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *isDiscrepant* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[isDiscrepant].extension[value].extension[edStatus] ^requirements = "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[isDiscrepant].extension[value].extension[edStatus] ^meaningWhenMissing = "Pas de gestion du statut éditorial de la valeur de la propriété *isDiscrepant* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[isDiscrepant].extension[value].extension[edStatus].value[x] 1..
* extension[isDiscrepant].extension[value].extension[edStatus].value[x] only code
* extension[isDiscrepant].extension[value].extension[edStatus].value[x] from FrEditorialStatus (required)
* extension[isDiscrepant].extension[value].extension[edStatus].value[x] ^binding.description = "fr-editorial-status"

* extension[isDiscrepant].extension[value].extension[author] ^short = "auteur(s) de la propriété *isDiscrepant*"
* extension[isDiscrepant].extension[value].extension[author] ^definition = "auteur(s) de l'information portée par l'élément *isDiscrepant* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition."
* extension[isDiscrepant].extension[value].extension[author] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author"
* extension[isDiscrepant].extension[value].extension[author] ^requirements = "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[isDiscrepant].extension[value].extension[author] ^meaningWhenMissing = "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"

* extension[isDiscrepant].extension[value].extension[author].value[x] 1..
* extension[isDiscrepant].extension[value].extension[author].value[x] only Reference($FrCorePractitionerRoleProfession)
* extension[isDiscrepant].extension[value].extension[author].value[x] ^short = "identité de l'auteur par son rôle et, de préférence, aussi sa personne"
* extension[isDiscrepant].extension[value].extension[author].value[x] ^definition = "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL)."

* extension[discrepancy] ^short = "qualification de la divergence identifiée sur la ligne de traitement"
* extension[discrepancy] ^definition = "valeur codée (coding) qualifiant la divergence de la ligne (MedicationStatement) de la Fiche de Conciliation des Traitements médicamenteux : { Intentionnelle ; Non-intentionnelle }\r\nNote : le concept de non-divergence est porté par la propriété *isDiscrepant* à la valeur FAUX ; le concept de divergence non-qualifiée est porté par la combinaison de la propriété *isDiscrepant* à la valeur VRAI et de cette propriété *discrepancy* non renseignée."
* extension[discrepancy] ^comment = "Cette qualification est généralement apportée par le prescripteur en réponse à la sollicitation du pharmacien ayant identifié qu'il y a une divergence (propriété *isDiscrepant* à la valeur VRAI). Elle peut être apportée par la pharmacien s'il dispose d'une documentation suffisante de la prescription concernée."
* extension[discrepancy] ^requirements = "Qualifier le caractère intentionnel ou non-intentionnel de la divergence identifiée, c'est-à-dire quand la propriété *isDiscrepant* a la valeur VRAI."
* extension[discrepancy] ^meaningWhenMissing = "La Divergence, si elle est idenfiée (propriété *isDiscrepant* à la valeur VRAI), n'est pas encore qualifiée Intentionnelle ou Non-intentionnelle.\r\nS'il n'y a pas de Divergence identifiée (propriété *isDiscrepant* à la valeur FAUX), propriété NON-APPLICABLE."
* extension[discrepancy].extension ^slicing.discriminator.type = #value
* extension[discrepancy].extension ^slicing.discriminator.path = "url"
* extension[discrepancy].extension ^slicing.rules = #open


* extension[discrepancy].extension contains
    value 1..*
    
* extension[discrepancy].extension[value] ^short = "valeur codée de la propriété *discrepancy*"
* extension[discrepancy].extension[value] ^definition = "valeur codée (coding) de la propriété *discrepancy* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition (statut, date, auteur(s)). { DI ; DNI } pour divergence intentionnelle et divergence non-intentionnelle.\r\nNote : le concept de non-divergence est porté par la propriété *isDiscrepant* à la valeur FAUX ; le concept de divergence non-qualifiée est porté par la combinaison de la propriété *isDiscrepant* à la valeur VRAI et de cette propriété *discrepancy* non renseignée."
* extension[discrepancy].extension[value] ^comment = "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi."
* extension[discrepancy].extension[value] ^requirements = "Qualifier la divergence identifiée sur la ligne de traitement de la Fiche de Conciliation des Traitements médicamenteux par une valeur codée tirée d'un jeu de valeurs contraint."
* extension[discrepancy].extension[value].extension ^slicing.discriminator.type = #value
* extension[discrepancy].extension[value].extension ^slicing.discriminator.path = "url"
* extension[discrepancy].extension[value].extension ^slicing.rules = #open
* extension[discrepancy].extension[value].extension contains
    code 1..1 and
    date 0..1 and
    edStatus 0..1 and
    author 0..*

* extension[discrepancy].extension[value].extension[code] ^short = "valeur codée de la propriété *discrepancy*"
* extension[discrepancy].extension[value].extension[code] ^definition = "valeur codée (coding) de la propriété *discrepancy* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s)."
* extension[discrepancy].extension[value].extension[code] ^comment = "La valeur codée de la propriété *discrepancy* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire."
* extension[discrepancy].extension[value].extension[code] ^requirements = "Contraindre l'usage d'une valeur codée et de son jeu de valeurs."
* extension[discrepancy].extension[value].extension[code].value[x] 1..
* extension[discrepancy].extension[value].extension[code].value[x] only Coding
* extension[discrepancy].extension[value].extension[code].value[x] from FrMedicationReconciliationQualifiedDiscrepancy (required)
* extension[discrepancy].extension[value].extension[code].value[x] ^binding.description = "fr-medication-reconciliation-qualified-discrepancy"
* extension[discrepancy].extension[value].extension[date] ^short = "date d'édition de la propriété *discrepancy*"
* extension[discrepancy].extension[value].extension[date] ^definition = "date d'édition de l'information portée par l'élément *discrepancy* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition."
* extension[discrepancy].extension[value].extension[date] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la fiche de Conciliation, cf. ressource Composition.date"
* extension[discrepancy].extension[value].extension[date] ^requirements = "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[discrepancy].extension[value].extension[date] ^meaningWhenMissing = "date de la fiche de Conciliation, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
* extension[discrepancy].extension[value].extension[date].value[x] 1..
* extension[discrepancy].extension[value].extension[date].value[x] only dateTime
* extension[discrepancy].extension[value].extension[edStatus] ^short = "statut éditorial (codé) de la propriété *discrepancy*"
* extension[discrepancy].extension[value].extension[edStatus] ^definition = "statut éditorial (code) de l'information portée par l'élément *discrepancy* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition"
* extension[discrepancy].extension[value].extension[edStatus] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *discrepancy* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[discrepancy].extension[value].extension[edStatus] ^requirements = "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[discrepancy].extension[value].extension[edStatus] ^meaningWhenMissing = "Pas de gestion du statut éditorial de la valeur de la propriété *discrepancy* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[discrepancy].extension[value].extension[edStatus].value[x] 1..
* extension[discrepancy].extension[value].extension[edStatus].value[x] only code
* extension[discrepancy].extension[value].extension[edStatus].value[x] from FrEditorialStatus (required)
* extension[discrepancy].extension[value].extension[edStatus].value[x] ^binding.description = "fr-editorial-status"
* extension[discrepancy].extension[value].extension[author] ^short = "auteur(s) de la propriété *discrepancy*"
* extension[discrepancy].extension[value].extension[author] ^definition = "auteur(s) de l'information portée par l'élément *discrepancy* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition."
* extension[discrepancy].extension[value].extension[author] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author"
* extension[discrepancy].extension[value].extension[author] ^requirements = "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[discrepancy].extension[value].extension[author] ^meaningWhenMissing = "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"
* extension[discrepancy].extension[value].extension[author].value[x] 1..
* extension[discrepancy].extension[value].extension[author].value[x] only Reference($FrCorePractitionerRoleProfession)
* extension[discrepancy].extension[value].extension[author].value[x] ^short = "identité de l'auteur par son rôle et, de préférence, aussi sa personne"
* extension[discrepancy].extension[value].extension[author].value[x] ^definition = "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL)."
* extension[discrepancy].extension[value].extension[author].value[x] ^comment = "PrationerRole avec référence à Practioner (si pas de practioner référencé --> identification ès qualités du professionnel de santé -que par son rôle)"

* extension[comment] ^short = "commentaires libres (documentation) de la ligne de traitement"
* extension[comment] ^definition = "commentaires libres de la ligne (MedicationStatement) de la Fiche de Conciliation des Traitements médicamenteux"
* extension[comment] ^comment = "Il peut y avoir plusieurs commentaires, cardinalité [0..\\*]. Le *text*\\, le *edStatus* et le ou les *author* à *date* donnée peuvent évoluer pour chaque commentaire, cardinalité [1..\\*] de l'élément *value*."
* extension[comment] ^requirements = "Documenter la Conciliation de la ligne de traitement, au-delà du codage de ses propriétés codées"
* extension[comment] ^meaningWhenMissing = "Absence de documentation complémentaire aux propriétés codées de Conciliaton de la ligne de prescription"
* extension[comment].extension ^slicing.discriminator.type = #value
* extension[comment].extension ^slicing.discriminator.path = "url"
* extension[comment].extension ^slicing.rules = #open

* extension[comment].extension contains
    value 1..*
    
* extension[comment].extension[value] ^short = "texte de la propriété *comment*"
* extension[comment].extension[value] ^definition = "valeur texte de la propriété *comment* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition (statut, date, auteur(s))"
* extension[comment].extension[value] ^comment = "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi."
* extension[comment].extension[value] ^requirements = "Porter la documentation textuelle _riche_ (possibilité de balisage markdown) de la conciliation de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux."
* extension[comment].extension[value].extension ^slicing.discriminator.type = #value
* extension[comment].extension[value].extension ^slicing.discriminator.path = "url"
* extension[comment].extension[value].extension ^slicing.rules = #open
* extension[comment].extension[value].extension contains
    text 1..1 and
    date 0..1 and
    edStatus 0..1 and
    author 0..*

* extension[comment].extension[value].extension[text] ^short = "texte de la propriété *comment*"
* extension[comment].extension[value].extension[text] ^definition = "valeur texte libre potentiellement riche (markdown) de la propriété *comment* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s)."
* extension[comment].extension[value].extension[text] ^comment = "La valeur texte libre potentiellement riche (balisage markdown) de la propriété *status* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire."
* extension[comment].extension[value].extension[text] ^requirements = "Contraindre l'usage d'une valeur texte libre potentiellement riche (balisage markdown)."
* extension[comment].extension[value].extension[text].value[x] 1..
* extension[comment].extension[value].extension[text].value[x] only markdown
* extension[comment].extension[value].extension[date] ^short = "date d'édition de la propriété *comment*"
* extension[comment].extension[value].extension[date] ^definition = "date d'édition de l'information portée par l'élément *comment* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition."
* extension[comment].extension[value].extension[date] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date"
* extension[comment].extension[value].extension[date] ^requirements = "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[comment].extension[value].extension[date] ^meaningWhenMissing = "date de la fiche de Conciliation, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
* extension[comment].extension[value].extension[date].value[x] 1..
* extension[comment].extension[value].extension[date].value[x] only dateTime
* extension[comment].extension[value].extension[edStatus] ^short = "statut éditorial (codé) de la propriété *comment*"
* extension[comment].extension[value].extension[edStatus] ^definition = "statut éditorial (code) de l'information portée par l'élément *comment* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition"
* extension[comment].extension[value].extension[edStatus] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *comment* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[comment].extension[value].extension[edStatus] ^requirements = "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[comment].extension[value].extension[edStatus] ^meaningWhenMissing = "Pas de gestion du statut éditorial de la valeur de la propriété *comment* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[comment].extension[value].extension[edStatus].value[x] 1..
* extension[comment].extension[value].extension[edStatus].value[x] only code
* extension[comment].extension[value].extension[edStatus].value[x] from FrEditorialStatus (required)
* extension[comment].extension[value].extension[edStatus].value[x] ^binding.description = "fr-editorial-status"
* extension[comment].extension[value].extension[author] ^short = "auteur(s) de la propriété *commentaire*"
* extension[comment].extension[value].extension[author] ^definition = "auteur(s) de l'information portée par l'élément *comment* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition."
* extension[comment].extension[value].extension[author] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author"
* extension[comment].extension[value].extension[author] ^requirements = "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[comment].extension[value].extension[author] ^meaningWhenMissing = "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"

* extension[comment].extension[value].extension[author].value[x] 1..
* extension[comment].extension[value].extension[author].value[x] only Reference($FrCorePractitionerRoleProfession)
* extension[comment].extension[value].extension[author].value[x] ^short = "identité de l'auteur par son rôle et, de préférence, aussi sa personne"
* extension[comment].extension[value].extension[author].value[x] ^definition = "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL)."

* extension[type] ^short = "type de l'écart/erreur entre Bilan et Traitement Courant pour la ligne de traitement"
* extension[type] ^definition = "type l'écart/erreur entre la ligne dans le Bilan et celle dans le Traitement Courant de la Fiche de Conciliation des Traitements médicamenteux, écart aussi intitulé erreur médicamenteuse. Ex: { Erreur posologie ; Oubli médicament prescrit ; Oubli automédication ; Erreur substitution ; Erreur forme galénique ; Ajout ; Autre }, _jeu de valeurs extensible_"
* extension[type] ^comment = "Cette propriété pourrait ne pas être limitée aux seules DNI (divergences non-intensionnelles)"
* extension[type].extension ^slicing.discriminator.type = #value
* extension[type].extension ^slicing.discriminator.path = "url"
* extension[type].extension ^slicing.rules = #open

* extension[type].extension contains
    value 1..*

* extension[type].extension[value] ^short = "valeur codée de la propriété *type*"
* extension[type].extension[value] ^definition = "valeur codée (coding) de la propriété *type* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s)."
* extension[type].extension[value] ^comment = "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi."
* extension[type].extension[value] ^requirements = "Qualifier le type d'écart/erreur sur la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux par une valeur codée tirée d'un jeu de valeurs contraint."

* extension[type].extension[value].extension ^slicing.discriminator.type = #value
* extension[type].extension[value].extension ^slicing.discriminator.path = "url"
* extension[type].extension[value].extension ^slicing.rules = #open
* extension[type].extension[value].extension contains
    code 1..1 and
    date 0..1 and
    edStatus 0..1 and
    author 0..*

* extension[type].extension[value].extension[code] ^short = "valeur codée de la propriété *type*"
* extension[type].extension[value].extension[code] ^definition = "valeur codée (coding) de la propriété *type* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition edStatut, date, author(s)."
* extension[type].extension[value].extension[code] ^comment = "La valeur codée de la propriété *type* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire."
* extension[type].extension[value].extension[code] ^requirements = "Contraindre l'usage d'une valeur codée et de son jeu de valeurs."
* extension[type].extension[value].extension[code].value[x] 1..
* extension[type].extension[value].extension[code].value[x] only Coding
* extension[type].extension[value].extension[code].value[x] from FrMedicationReconciliationType (extensible)
* extension[type].extension[value].extension[code].value[x] ^binding.description = "fr-medication-reconciliation-type"
* extension[type].extension[value].extension[date] ^short = "date d'édition de la propriété *type*"
* extension[type].extension[value].extension[date] ^definition = "date d'édition de l'information portée par l'élément *type* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *status* défini par son ou ses auteurs *author* dans son cycle d'édition."
* extension[type].extension[value].extension[date] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date"
* extension[type].extension[value].extension[date] ^requirements = "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[type].extension[value].extension[date] ^meaningWhenMissing = "date de la fiche de Conciliation, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
* extension[type].extension[value].extension[date].value[x] 1..
* extension[type].extension[value].extension[date].value[x] only dateTime

* extension[type].extension[value].extension[edStatus] ^short = "statut éditorial (codé) de la propriété *type*"
* extension[type].extension[value].extension[edStatus] ^definition = "statut éditorial (code) de l'information portée par l'élément *type* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition"
* extension[type].extension[value].extension[edStatus] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *type* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[type].extension[value].extension[edStatus] ^requirements = "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[type].extension[value].extension[edStatus] ^meaningWhenMissing = "Pas de gestion du statut éditorial de la valeur de la propriété *type* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[type].extension[value].extension[edStatus].value[x] 1..
* extension[type].extension[value].extension[edStatus].value[x] only code
* extension[type].extension[value].extension[edStatus].value[x] from FrEditorialStatus (required)


* extension[type].extension[value].extension[author] ^short = "auteur(s) de la propriété *type*"
* extension[type].extension[value].extension[author] ^definition = "auteur(s) de l'information portée par l'élément *type* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition."
* extension[type].extension[value].extension[author] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author"
* extension[type].extension[value].extension[author] ^requirements = "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[type].extension[value].extension[author] ^meaningWhenMissing = "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"

* extension[type].extension[value].extension[author].value[x] 1..
* extension[type].extension[value].extension[author].value[x] only Reference($FrCorePractitionerRoleProfession)
* extension[type].extension[value].extension[author].value[x] ^short = "identité de l'auteur par son rôle et, de préférence, aussi sa personne"
* extension[type].extension[value].extension[author].value[x] ^definition = "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL)."
* extension[type].extension[value].extension[author].value[x] ^comment = "PrationerRole avec référence à Practioner (si pas de practioner référencé --> identification ès qualités du professionnel de santé -que par son rôle)"
* extension[outcome] ^short = "gravité estimée de la divergence identifiée sur la ligne de traitement"
* extension[outcome] ^definition = "gravité estimée de la divergence, intitulé « Gravité de l’erreur » dans [le guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante) : { mineure ; significative ; majeure ; critique ; catastrophique }"
* extension[outcome] ^comment = "Cette propriété pourrait ne pas être limitée aux seules DNI (divergences non-intensionnelles)"

* extension[outcome].extension ^slicing.discriminator.type = #value
* extension[outcome].extension ^slicing.discriminator.path = "url"
* extension[outcome].extension ^slicing.rules = #open

* extension[outcome].extension contains
    value 1..*



* extension[outcome].extension[value] ^short = "valeur codée de la propriété *outcome*"
* extension[outcome].extension[value] ^definition = "valeur codée (coding) de la propriété *outcome* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s)."
* extension[outcome].extension[value] ^comment = "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi."
* extension[outcome].extension[value] ^requirements = "Qualifier la gravité de l'écart/erreur sur la ligne de traitement de la Fiche de Conciliation des Traitements médicamenteux par une valeur codée tirée d'un jeu de valeurs contraint."
* extension[outcome].extension[value].extension ^slicing.discriminator.type = #value
* extension[outcome].extension[value].extension ^slicing.discriminator.path = "url"
* extension[outcome].extension[value].extension ^slicing.rules = #open
* extension[outcome].extension[value].extension contains
    code 1..1 and
    date 0..1 and
    edStatus 0..1 and
    author 0..*

* extension[outcome].extension[value].extension[code] ^short = "valeur codée de la propriété *outcome*"
* extension[outcome].extension[value].extension[code] ^definition = "valeur codée (coding) de la propriété *outcome* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition edStatut, date, author(s)."
* extension[outcome].extension[value].extension[code] ^comment = "La valeur codée de la propriété *outcome* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire."
* extension[outcome].extension[value].extension[code] ^requirements = "Contraindre l'usage d'une valeur codée et de son jeu de valeurs."
* extension[outcome].extension[value].extension[code].value[x] 1..
* extension[outcome].extension[value].extension[code].value[x] only Coding
* extension[outcome].extension[value].extension[code].value[x] from FrMedicationReconciliationOutcome (required)
* extension[outcome].extension[value].extension[code].value[x] ^binding.description = "fr-medication-reconciliation-outcome"
* extension[outcome].extension[value].extension[date] ^short = "date d'édition de la propriété *outcome*"
* extension[outcome].extension[value].extension[date] ^definition = "date d'édition de l'information portée par l'élément *outcome*de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition."
* extension[outcome].extension[value].extension[date] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date"
* extension[outcome].extension[value].extension[date] ^requirements = "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[outcome].extension[value].extension[date] ^meaningWhenMissing = "date de la fiche de Conciliation, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
* extension[outcome].extension[value].extension[date].value[x] 1..
* extension[outcome].extension[value].extension[date].value[x] only dateTime
* extension[outcome].extension[value].extension[edStatus] ^short = "statut éditorial (codé) de la propriété *outcome*"
* extension[outcome].extension[value].extension[edStatus] ^definition = "statut éditorial (code) de l'information portée par l'élément *outcome* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition"
* extension[outcome].extension[value].extension[edStatus] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *outcome* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[outcome].extension[value].extension[edStatus] ^requirements = "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[outcome].extension[value].extension[edStatus] ^meaningWhenMissing = "Pas de gestion du statut éditorial de la valeur de la propriété *outcome* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[outcome].extension[value].extension[edStatus].value[x] 1..
* extension[outcome].extension[value].extension[edStatus].value[x] only code
* extension[outcome].extension[value].extension[edStatus].value[x] from FrEditorialStatus (required)
* extension[outcome].extension[value].extension[edStatus].value[x] ^binding.description = "fr-editorial-status"

* extension[outcome].extension[value].extension[author] ^short = "auteur(s) de la propriété *outcome*"
* extension[outcome].extension[value].extension[author] ^definition = "auteur(s) de l'information portée par l'élément *outcome* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition."
* extension[outcome].extension[value].extension[author] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author"
* extension[outcome].extension[value].extension[author] ^requirements = "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[outcome].extension[value].extension[author] ^meaningWhenMissing = "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"
* extension[outcome].extension[value].extension[author].value[x] 1..
* extension[outcome].extension[value].extension[author].value[x] only Reference($FrCorePractitionerRoleProfession)
* extension[outcome].extension[value].extension[author].value[x] ^short = "identité de l'auteur par son rôle et, de préférence, aussi sa personne"
* extension[outcome].extension[value].extension[author].value[x] ^definition = "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL)."
* extension[outcome].extension[value].extension[author].value[x] ^comment = "PrationerRole avec référence à Practioner (si pas de practioner référencé --> identification ès qualités du professionnel de santé -que par son rôle)"

* extension[resolution] ^short = "résolution de la divergence identifiée sur la ligne de traitement"
* extension[resolution] ^definition = "Ce qui a été fait pour résoudre la divergence non intentionnelle. Ex: { repris ; dose corrigée ; forme corrigée ; spécialité corrigée ; arrêt }, _jeu de valeurs extensible_."
* extension[resolution] ^comment = "Cette propriété pourrait ne pas être limitée aux seules DNI (divergences non-intensionnelles)"
* extension[resolution].extension ^slicing.discriminator.type = #value
* extension[resolution].extension ^slicing.discriminator.path = "url"
* extension[resolution].extension ^slicing.rules = #open

* extension[resolution].extension contains
    value 1..*


* extension[resolution].extension[value] ^short = "valeur codée de la propriété *resolution*"
* extension[resolution].extension[value] ^definition = "valeur codée (coding) de la propriété *resolution* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition (statut, date, auteur(s))."
* extension[resolution].extension[value] ^comment = "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi."
* extension[resolution].extension[value] ^requirements = "Qualifier la résolution de l'écart/erreur sur la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux par une valeur codée tirée d'un jeu de valeurs contraint."
* extension[resolution].extension[value].extension ^slicing.discriminator.type = #value
* extension[resolution].extension[value].extension ^slicing.discriminator.path = "url"
* extension[resolution].extension[value].extension ^slicing.rules = #open

* extension[resolution].extension[value].extension contains
    code 1..1 and
    date 0..1 and
    edStatus 0..1 and
    author 0..*

* extension[resolution].extension[value].extension[code] ^short = "valeur codée de la propriété *resolution*"
* extension[resolution].extension[value].extension[code] ^definition = "valeur codée (coding) de la propriété *resolution* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s)."
* extension[resolution].extension[value].extension[code] ^comment = "La valeur codée de la propriété *resolution* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire."
* extension[resolution].extension[value].extension[code] ^requirements = "Contraindre l'usage d'une valeur codée et de son jeu de valeurs."
* extension[resolution].extension[value].extension[code].value[x] 1..
* extension[resolution].extension[value].extension[code].value[x] only Coding
* extension[resolution].extension[value].extension[code].value[x] from FrMedicationReconciliationResolution (extensible)
* extension[resolution].extension[value].extension[code].value[x] ^binding.description = "fr-medication-reconciliation-resolution"
* extension[resolution].extension[value].extension[date] ^short = "date d'édition de la propriété *resolution*"
* extension[resolution].extension[value].extension[date] ^definition = "date d'édition de l'information portée par l'élément *resolution*de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition."
* extension[resolution].extension[value].extension[date] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date"
* extension[resolution].extension[value].extension[date] ^requirements = "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[resolution].extension[value].extension[date] ^meaningWhenMissing = "date de la fiche de Conciliation, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
* extension[resolution].extension[value].extension[date].value[x] 1..
* extension[resolution].extension[value].extension[date].value[x] only dateTime
* extension[resolution].extension[value].extension[edStatus] ^short = "statut éditorial (codé) de la propriété *resolution*"
* extension[resolution].extension[value].extension[edStatus] ^definition = "statut éditorial (code) de l'information portée par l'élément *resolution* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition"
* extension[resolution].extension[value].extension[edStatus] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *resolution* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[resolution].extension[value].extension[edStatus] ^requirements = "discriminer les statuts (phases) d'édition de chacune des propriétés de la la Fiche de Conciliation des Traitements médicamenteux"
* extension[resolution].extension[value].extension[edStatus] ^meaningWhenMissing = "Pas de gestion du statut éditorial de la valeur de la propriété *resolution* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
* extension[resolution].extension[value].extension[edStatus].value[x] 1..
* extension[resolution].extension[value].extension[edStatus].value[x] only code
* extension[resolution].extension[value].extension[edStatus].value[x] from FrEditorialStatus (required)
* extension[resolution].extension[value].extension[edStatus].value[x] ^binding.description = "fr-editorial-status"
* extension[resolution].extension[value].extension[author] ^short = "auteur(s) de la propriété *resolution*"
* extension[resolution].extension[value].extension[author] ^definition = "auteur(s) de l'information portée par l'élément *resolution* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition."
* extension[resolution].extension[value].extension[author] ^comment = "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la fiche de Conciliation, cf. ressource Composition.author"
* extension[resolution].extension[value].extension[author] ^requirements = "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux"
* extension[resolution].extension[value].extension[author] ^meaningWhenMissing = "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"
* extension[resolution].extension[value].extension[author].value[x] 1..
* extension[resolution].extension[value].extension[author].value[x] only Reference($FrCorePractitionerRoleProfession)
* extension[resolution].extension[value].extension[author].value[x] ^short = "identité de l'auteur par son rôle et, de préférence, aussi sa personne"
* extension[resolution].extension[value].extension[author].value[x] ^definition = "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL)."
* extension[resolution].extension[value].extension[author].value[x] ^comment = "PrationerRole avec référence à Practioner (si pas de practioner référencé --> identification ès qualités du professionnel de santé -que par son rôle)"