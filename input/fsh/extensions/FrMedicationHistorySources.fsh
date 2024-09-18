Extension: FrMedicationHistorySources
Id: fr-medication-history-sources
Description: "Sources des lignes du Bilan Médicamenteux que représente la ressource *Composition* ou de chacune de ses lignes que représente la ressource *MedicationStatement* référencée par l'élément *entry* de la ressource *Composition* (nombre de sources ET le type de source, défini codé avec, si possible, son auteur, défini ès qualités et, si possible, nominativement)"

* ^purpose = "propriétés du sourcing de la ressource MedicationStatement définies selon les règles de gestion du Bilan Médicamenteux"
* ^context[0].type = #element
* ^context[=].expression = "MedicationStatement"
* ^context[+].type = #element
* ^context[=].expression = "Composition"

* . ^short = "Sourcing"
* . ^definition = "Sourcing du Bilan Médicamenteux ou de la ligne de traitement du Bilan Médicamenteux"
* . ^comment = "Nombre de sources (quel que soit leur nombre) ET la liste de ces sources définies par leur type et, éventuellement, leur auteur identifié ès qualités et, de préférence, également nominativement."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    number 1..1 and
    source 1..*

* extension[number] ^label = "Nombre de sources"
* extension[number] ^short = "Nombre de sources"
* extension[number] ^definition = "Nombre de sources consultées  du Bilan Médicamenteux / Nombre de sources condordantes  de chaque ligne du Bilan Médicamenteux."
* extension[number] ^comment = "Au niveau du Bilan Médicamenteux, dénombre les sources consultées. Au niveau de chaque ligne de traitement du Bilan Médicamenteux, dénombre les sources concordantes pour la ligne."
* extension[number] ^requirements = "Dénombrer les sources du Bilan ou de chacune de ses lignes"
* extension[number].value[x] 1..
* extension[number].value[x] only positiveInt
* extension[number].value[x] ^short = "Valeur du nombre de sources"
* extension[number].value[x] ^definition = "Entier positif"
* extension[number].value[x] ^comment = "Un entier strictement positif."
* extension[number].value[x] ^requirements = "Dénombrement des sources."
* extension[number].value[x] ^minValuePositiveInt = 1

* extension[source] ^label = "source"
* extension[source] ^short = "source retenue ou concordante"
* extension[source] ^definition = "Les sources retenues du Bilan médicamenteux, ou concordantes de la ligne de traitement"
* extension[source] ^comment = "Au moins 1 type de source doit être identifié (cardinalité [1..*]), avec si possible son auteur"
* extension[source] ^requirements = "Identifier les sources retenues"

* extension[source].extension ^slicing.discriminator.type = #value
* extension[source].extension ^slicing.discriminator.path = "url"
* extension[source].extension ^slicing.rules = #open
* extension[source].extension contains
    type 1..1 and
    author 0..1
* extension[source].extension[type] ^short = "type (codé) de la source d'information retenue"
* extension[source].extension[type] ^definition = "Type (coding) de la source retenue. Jeu de valeurs ouvert (*extensible*), d'après [le guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante)."
* extension[source].extension[type] ^comment = "Le type de source est très varié. C'est la raison pour laquelle le jeu de valeurs attaché à cette valeur codée est extensible."
* extension[source].extension[type] ^requirements = "Le type de la source doit être identifié"
* extension[source].extension[type].value[x] 1..
* extension[source].extension[type].value[x] only Coding
* extension[source].extension[type].value[x] from FrMedicationHistorySourceType (extensible)
* extension[source].extension[type].value[x] ^short = "valeur codée du type de source"
* extension[source].extension[type].value[x] ^definition = "Valeur du type codé (coding) de la source retenue. Attachée au jeu de valeurs ouvert (*extensible*) **fr-medication-history-source-type**, d'après [le guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante)."
* extension[source].extension[type].value[x] ^binding.description = "fr-medication-history-source-type"
* extension[source].extension[author] ^short = "Auteur de la source d'informations retenue"
* extension[source].extension[author] ^definition = "Auteur de la source d'informations retenue, le patient, un profesionnel de santé ou une personne en relation avec le patient."
* extension[source].extension[author] ^comment = "Il est recommandé d'identifer nominativement l'auteur de la source.\r\nL'auteur peut ne pas être explicitement précisé si le type de source en porte un implicite suffisamment défini (par exemple, *médicaments apportés par le patient*)"
* extension[source].extension[author] ^requirements = "Identification explicite de l'auteur, notamment s'il est identifié nominativement."
* extension[source].extension[author] ^meaningWhenMissing = "L'auteur ès qualités est implicite du type de la source. L'auteur n'est pas nominativement identifié."
* extension[source].extension[author].value[x] 1..
* extension[source].extension[author].value[x] only Reference($FrCorePatient or $FrCorePractitionerRoleProfession or $FrCoreRelatedPerson)
* extension[source].extension[author].value[x] ^short = "identification de l'auteur de la source"
* extension[source].extension[author].value[x] ^definition = "Identification de l'auteur par référence à une ressource fr-patient, fr-pratitioner-role ou fr-relatedPerson"
* extension[source].extension[author].value[x] ^comment = "Si un auteur est identifié, il doit l'être par référence à une ressource fr-patient, fr-pratitioner-role ou fr-relatedPerson"
* extension[source].extension[author].value[x] ^requirements = "Un auteur doit être identifié par référence à une ressource fr-patient, fr-pratitioner-role ou fr-relatedPerson"
