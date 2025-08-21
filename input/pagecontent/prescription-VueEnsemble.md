### Vue d'ensemble

La prescription est un ensemble de **lignes de prescription**, représentées chacune par une ressource *MedicationRequest* profilée *FrMedicationRequest* pour les prescriptions de médecine de ville et les prescriptions hospitalières exécutables en ville (PHEV) et *FrInPatientMedicationRequest* pour les prescriptions intrahospitalières.

La prescription en tant que telle (le regroupement de lignes de prescription), n'est pas représentée par une ressource FHIR. En accord avec les guidelines d'HL7 International, le lien entre les différentes ressources regroupées dans une prescription est représenté par l'élément *MedicationRequest.groupIdentifier*.

Chaque **ligne de prescription** est composée d'un **médicament prescrit** et de sa **posologie**.

Le **médicament prescrit** est représenté par l'élément `MedicationRequest.medication[x]` (1..1) du profil *FrMedicationRequest* ou *FrInpatientMedicationRequest*, celui-ci peut être représenté sous forme d'une référence vers une ressource *Medication* suivant le profil idoine (cf. paragraphe suivant) ou d'un concept codé (CodeableConcept).

Selon qu'un médicament prescrit référencé est un **médicament simple** ou un **médicament composé** de plusieurs médicaments simples, le **médicament prescrit** est représenté par deux variantes de ressource *Medication*:

- *FrMedicationNonCompound*: médicament simple exprimé: 
  - en spécialité identifié par son **code UCD**. Ex: *EFFERALGAN 1 000 mg, cpr dont le code UCD est 3400893766521*
  - en DC (dénomination commune) identifié par son **code SMS** ou son **code technique ANSM** (dans l'attente de l'attribution d'un code SMS). Ex: *paracétamol dont le code SMS est 100000090270*
  - en MV (médicament virtuel) identifié par son **code Medicabase**. Ex. *BETAMETHASONE 0,05% voie cutanée pom dont le code Medicabase est MV00000063*
- *FrMedicationCompound*: médicament composé de plusieurs médicaments simples exprimées en DC ou en spécialité. Ex: *glucose 5% 1L + sodium chlorure 3g + potassium chlorure 2g, composé de 3 médicaments simples, glucose, sodium chlorure et potassium chlorure, en quantités de 1L, 3g et 2g*.

Dépendance des ressources profilées par Interop'Santé

<div class="figure" style="width:100%; overflow-x:auto;">
  <p style="margin: 0; padding: 0;">
    {% include prescription.svg %}
  </p>
</div>

Noter qu'un médicament simple peut être une association de plusieurs principes actifs. Ce n'en est pas moins un médicament simple représenté par une ressource *FrMedicationNonCompound*. Ex : *CODOLIPRANE 500 mg/30 mg, cpr dont le code UCD est 3400893936047* contenant 500 mg de paracétamol et 30 mg de codéine*

La **posologie** est représentée par l'élément `dosageInstruction` de la ressource *MedicationRequest*.

**Date de début, date de fin** et **durée de prescription**

Elles traduisent la période d'exécution de la prescription.

Cette information est portée indivuellement par chaque ligne de prescription, c'est à dire au niveau de la ressource *MedicationRequest* profilée par *FRMedicationRequest* ou *FrInpatientMedicationRequest*, comme paramètre de la posologie prescrite, dans l'élément `dosageInstruction` de type *Dosage*, sous-élément `timing` de type *Timing*

- date de début : `.dosageInstruction.timing.repeat.boundsPeriod.start`
- date de fin : `.dosageInstruction.timing.repeat.boundsPeriod.end`
- durée : dans FHIR la durée est exclusive des dates de début et date de fin:
  - Si elle est exprimée dans `.dosageInstruction.timing.repeat.boundsDuration`, les date de début et date de fin ne figurent pas dans la ressource (dans le cas des prescriptions de médecine de ville ou des prescriptions hospitalières à exécution en ville).
  - Si les dates de début et de fin sont exprimées, la durée ne peut exister qu'au niveau de l'IHM. Quand elle est saisie, elle permet de calculer la date de fin à partir la date de début. Quand elle est affichée, elle est calculée à partir de la date de début et de la date de fin.

Ces dates de début et de fin de prescription, de même que la durée de prescription, ne sont pas des consignes de dispensation. Elles ne figurent donc pas dans les éléments `.validityPeriod` et `.expectedSupplyDuration` de l'élément `.dispensationRequest`.

En prescription intrahospitalière, il n'y a généralement pas de consigne de dispensation formulée par le prescripteur. Il n'y a donc généralement pas usage de l'élément `.dispensationRequest`.

#### Précision sur les parties textuelles

Les prescriptions FHIR peuvent contenir plusieurs parties textuelles:

- pour indiquer des éléments qui ne peuvent pas être codés
- pour donner une version "humainement lisible" des éléments codés

**Eléments de posologie non structurés**

Certains éléments de posologie ne peuvent pas être représentés de manière complètement structurée ou doivent obligatoirement être représentés sous forme textuelle. Ces éléments sont renseignés dans un élément `MedicationRequest.dosageInstruction.additionalInstruction.text`. 

*Note 1:* L'élément `MedicationRequest.dosageInstruction.patientInstruction` pourrait également être utilisé pour certaines indications complémentaires pour la posologie. Mais le choix entre `MedicationRequest.dosageInstruction.patientInstruction` et `MedicationRequest.dosageInstruction.additionalInstruction.text` n'est pas toujours évident. Afin de simplifier le profil, il a été décider de n'utiliser que `MedicationRequest.dosageInstruction.additionalInstruction.text` qui peut être multivalué et éventuellement associé à un code. En conséquence, le profil `FrMedicationRequest`interdit l'usage de `MedicationRequest.dosageInstruction.patientInstruction`

*Note 2:* Lélement `MedicationRequest.dosageInstruction.additionalInstruction.text` est réservé pour les éléments de posologie qui ont été renseignés "à la main" et ne peuvent pas être représentés de manière structurée. Il ne doit pas être utilisé pour du texte généré automatiquement à partir de données structurées.

***Exemples d'éléments de posologie non structurés***

- indication spécifique de prise.
  - ex: "administrer le contenu avec un peu de compote" [HAS - topiramate 15 mg gélule: 1 gélule par jour. Si difficulté à prendre la gélule, l'ouvrir et en administrer le contenu avec un peu de compote (id_poso=24)](Bundle-HAS-24-Topiramate.html)
- moment de prise non codé dans le jeu de valeurs FHIR [event-timing](https://hl7.org/fhir/R4/valueset-event-timing.html) associé à l'élément `MedicationRequest.dosageInstruction.timing.repeat.when`ni dans le jeu de valeurs complémentaire [fr-additional-when-codes](ValueSet-fr-additional-when-codes.html) associé à l'extension [fr-additional-when-values](StructureDefinition-fr-additional-when-values.html)
  - ex: "à débuter 12 heures avant l'intervention chirurgicale" [HAS - enoxaparine sodique 4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention. (id_poso=28)](Bundle-HAS-28-Presc-Enoxaparine)
- multiplicité des caractéristiques de moment de prise qui ne peuvent pas être codés dans `MedicationRequest.dosageInstruction.timing.repeat.when` qui est monovalué
  - ex: "matin et soir, au cours ou à la fin des repas​" [HAS - metformine 700 mg comprimé: 1 comprimé le matin et 1 comprimé soir, au cours ou à la fin des repas (id_poso=27)](Bundle-HAS-27-1-Metformine.html)
- indication de condition de prise qui ne sont pas facilement codables dans l'élément `MedicationRequest.dosageInstruction.asNeededCodeableConcept`
  - ex: "en fonction de la gène allergique" [HAS - desloratadine 5 mg comprimé 1 comprimé « 1 à  2 fois par jour » en fonction de la gêne allergique (id_poso=13)](Bundle-HAS-13-Presc-Desloratadine.html)
- contrainte calendaire ne pouvant pas être exprimée en FHIR
  - ex: "le premier jour de chaque mois" [HAS - vitamine D 100 000 UI solution buvable : 1 ampoule, le premier jour de chaque mois (id_poso=11)](Bundle-HAS-11-1-Presc-VitamineD.html)
  - ex: "1er, 8e et 15e jours du cycle" [HAS - EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique (id_poso=11)](Bundle-HAS-11-2-Presc-EVRA.html)
- les alternances de doses ne pouvant pas être représenté en FHIR
  - "0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours" [HAS - fluindione 20 mg comprimé quadrisécable: 0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours, à répéter sur le mois (id_poso=23)](Bundle-HAS-23-1-Presc-Fluindione)

***Spécificité ville***

Dans le cas d'une dose calculée, si elle est fournie en plus de la valeur absolue, la valeur reative (ex. formule de calcul) doit être indiquée textuellement dans `MedicationRequest.doseInstruction.additionalInstruction.text` et non indiquée dans la partie structurée.

- ex: "soit 170UI anti-Xa /kg" [HAS - Tinzaparine sodique 10 000 UI anti-Xa/0,5 ml solution injectable : 12 000UI anti-Xa (soit 170UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée (id_poso=3)](Bundle-HAS-03-Presc-Tinzaparine.html)

**Version textuelle de la posologie**

Afin de permettre l'affichage de la posologie par tous les logiciels, y compris ceux qui n'ont pas la possibilité d'interpréter la structuration de la posologie, la posologie associée à une ligne de prescription est à indiquer dans l'extension `renderedDosageInstruction` qui préfigure l'élément `MedicationRequest.renderedDosageInstruction`en FHIR R5.

- ex: "40mg le soir" [HAS - pantoprazole 40 mg comprimé: 40 mg le soir en MV (id_poso=1)](Bundle-HAS-01-Presc-Pantoprazole-MV.html)

**Version textuelle de la prescription**

Même si une version textuelle de la prescription est produite automatiquement dans `MedicationRequest.text`, elle est souvent difficile à comprendre quand on ne maitrise pas FHIR. Une version textuelle de l'ensemble de la ligne de prescription représentée par la ressource `MedicationRequest`peut être renseigné dans l'élément `MedicationRequest.note.text`. Dans l'éventualité où la ressource `MedicationRequest`aurait plusieurs éléments `MedicationRequest.note`il est recommandé d'ajouter le préfixe "Prescription textuelle:" à l'élément `MedicationRequest.note`afin de simplifier la compréhension.

- ex: "PARACETAMOL 24 mg/mL (DOLIPRANE 2.4%), susp buv, flac 100 mL : 1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C." [HAS - paracetamol 24 mg/mL (DOLIPRANE 2.4%), susp buv, flac 100 mL : 1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C.(id_poso=8)](Bundle-HAS-08-2-Presc-Paracetamol.html)

**Cas particulier de la traduction PN13 en FHIR**

PN13 intègre beaucoup d'éléments textuels qui ne peuvent être indiqués que dans l'élément `MedicationRequest.note`. Afin de permettre de discriminer la portée de chaque note, l'extension [fr-medicationrequest-note-scope](/StructureDefinition-fr-medicationrequest-note-scope.html) a été créée. Elle n'est utilisée que dans le cas de prescription initalement en PN13 retranscrites en FHIR.

#### Précisions sur les terminologies utilisables pour les unités

Les deux terminologies utilisables pour représenter les unités d'administration dans les posologies sont UCUM et EDQM.
Toute unité utilisée pour une posologie qui ne correspond pas à un code natif de ces terminologies ne doit être exprimé que par l'élément `unit` du datatype `Quantity`et des datatypes dérivés, les éléments `code`et `system`ne doivent pas à utiliser.

En particulier, les non unit UCUM (code entre accolades {} ou entre crochets []) ne doivent pas être utilisées.

- ex: "une application" [HAS - BEPANTHEN®5% crème : 1 application, 2 fois par jour, en couche mince (id_poso=12)](Bundle-HAS-12-1-Presc-BEPANTHEN.html)

***Recommandation pour faciliter la dispensation***

Lorsqu'une unités d'administration n'est pas en UCUM et EDQM et qu'il est donc difficile de traduire la prescription en nombre de "boite" de médicament à dispenser, il est recommandé que le prescripteur mette une indication de ce qui doit être dispensé dans une unité "convertible". 

#### Précision sur le rattrapage de dose

Sauf indication contraire dans la prescription via l'élément `MedicationRequest.dosageInstruction.additionalInstruction.text`, la structuration de la posologie (ex. l'utilisation de l'élément `MedicationRequest.dosageInstruction.timing.repreat.when`) ne doit pas interdire de rattraper une dose qui n'a pas été prise au bon moment.

#### Précisions sur dates et durée de prescription

Ces précisions concernent les dates et durée de prescription de la ligne de prescription représentée par une ressource *MedicationRequest* profilée *FrMedicationRequest* ou *FrInPatientMedicationRequest*.

Elles concernent également les règles définissant la **première dose prescrite** et la **dernière dose prescrite**.

Deux dates, de début et de fin, de la ligne de prescription doivent être considérées :

- La date de début et de fin **prescrite** : le plus souvent, "à partir de maintenant et pendant x jours" (ce qui se traduit à FHIR par une date de début renseignée et une date de fin calculée à partir de la date de début et la durée renseignées)
- La date de début et de fin **effective** : la date/heure à partir de laquelle commence effectivement la ligne prescription, c'est-à-dire la date/heure de **début d'administration de la premier dose**, et la date/heure effective de fin de la ligne de prescription, c'est-à-dire la date/heure de **fin d'administration de la dernière dose**.

**Date/heure de début prescrite** de la ligne de prescription (*MedicationRequest*)

Définit la date/heure de début exprimée par le médecin lors de sa prescription.
**Note:** Si seule la durée du traitement est exprimée, la date de début correspond à la date de la première prise.

**La première dose prescrite**:

- si la date de début est exprimée:
  - celle dont la date/heure de début d’administration est *immédiatement postérieure ou égale à la date/heure de début prescrite*.
  - calculée à partir de la *date/heure de début prescrite*, en fonction de la posologie définie par la collection de *dosageInstruction*.
- si la date de début n'est pas exprimée:
  - date/heure de la première prise

**Date/heure de fin prescrite** de la ligne de prescription (*MedicationRequest*)

Définit la date/heure de fin exprimée par le médecin lors de sa prescription.
**Note:** Si seule la durée du traitement est exprimé, la date de fin correspond à la durée du traitement après la date de la première prise.

**La dernière dose prescrite**:

- si la date de fin est expimée:
  - celle dont la date/heure de début d’administration est *immédiatement inférieure à la date/heure de fin prescrite*
  - calculée à partir de la *date/heure de fin prescrite*, en fonction de la posologie définie par la collection `dosageInstruction`
- si la date de fin n'est pas exprimée:
  - celle dont la date/heure de début d'administration est *immédiatement inférieure à la date de fin calculée (durée du traitement après la date de la première prise)
  - calculée à partir de la *durée de prescription*, en fonction de la date de la première prise et de la posologie définie par la collection `dosageInstruction`

La *date/heure de fin d’administration* de la dernière dose (sa date/heure de début + sa durée d'administration) peut être supérieure à *date/heure de fin prescrite*.

**Durée de prescription**:

Elle est liée aux deux paramétres précédents. Quand ces trois paramètres sont exposés à l'utilisateur pour saisie, en général il en fixe deux et le troisième est calculé.
Pour les prescriptions de médecine de ville ou les prescriptions hospitalières à éxecution en ville, il est possible que seule la durée de prescription soit exprimée les dates de début et fin dépendant de quand le patient se fait délivrer les médicaments.

Les unités UCUM suivantes sont utilisées :

1. *jour* (code = d) : égale 24h.

    - Ce n'est pas le *jour calendaire*.
    - Ainsi, 3 jours à partir de J0 07:12:34 donne comme *date de fin* J3 07:12:33.
    - Et non pas J2 23:59:59 correspondant au décompte de 3 jours calendaires.
1. *semaine* (code = wk) : égale 7 jours.
1. *mois* (code = mo) : égale 28, 29, 30 ou 31 jours selon les mois impliqués.

    - Ce n'est pas le *mois julien moyen* de 30,4375 jours défini par UCUM.
    - Ainsi, 3 mois à partir du 2021-02-14T12:34:56 donne comme *date de fin* 2021-05-14T12:34:55.
    - Et non pas 2021-04-16T20:04:55, correspondant à 2021-02-14T12:34:56 + 91 jours 7 heures 30 minutes, découlant de 3*365,25/12=91,3125 jours.

1. *année* (code = a) : égale 1 année *julienne moyenne*, soit 365,25 jours

**Garantie du nombre de doses prescrites sur une période donnée**:

Pour garantir qu'une prescription de, par exemple, 3 doses par jour pendant 5 jours, donne bien systématiquement 15 doses prescrites, comme logiquement attendu, et non pas 15 ou 16 en fonction des circonstances, il est spécifié dans ce guide d'implémentation que la *date/heure* de *fin prescrite* est exclue. En d'autres termes, l'intervalle \[ date de début prescrite, date de fin prescrite \[ est semi-ouvert.

*Illustration*
Date de fin prescrite exclue : 15 doses (3/j x 5j = 15)

![IllustrationDateFinPrescriteExclue](Prescription2.jpg)

En effet, si la date de début prescrite est égale à la date de début de la premiére dose, un intervalle fermé incluant de la date de fin prescrite conduira à la prescription de 16 doses.

*Illustration*
Si la date de fin prescrite était incluse : 16 doses (3/j x 5j = 16) !
![IllustrationDateFinPrescriteIncluse](Prescription3.jpg)

**Note**:
Dans FHIR, le type *Period*, utilisé pour porter le couple (*date de début*, *date de fin*), stipule que les bornes, *start* et *end*, sont incluses. L'interval est *fermé*.

Un interval *semi-ouvert*, par exemple \[ 2021-02-14T12:34:56, 201-05-14T12:34:56 \[, se traduira par un élément *Period* dans lequel

- *start* : 2021-02-14T12:34:56
- *end* : 2021-05-14T12:34:55

**Rappel**:
Dans FHIR, le type datetime impose de donner les horaires à la seconde près lorsque l'heure est renseignée : format *hh:mn:ss*. Il est précisé que l'utilisateur fait son affaire de la granularité à l'heure ou à la minute près en remplissant les minutes et les secondes manquantes par des *00*.

Néanmoins, pour exprimer l'horaire de fin exclu à la granularité horaire ou minute, il conviendra de remplir les minutes ou secondes manquantes par *59*.

Par exemple
3j à partir du 14 fév 2021 12h34 (résolution à la minute)

- *start* : 2021-02-14T12:34:00
- *end* : 2021-05-14T12:33:59

ou
3j à partir du 14 fév 2021 12h (résolution à la tranche horaire)

- *start* : 2021-02-14T12:00:00
- *end* : 2021-05-14T11:59:59

**Date/heure de début effective et Date/heure de fin effective de la ligne de prescription**:

Ces deux dates ne figurent pas dans *MedicationRequest* R4.
Dans la [R5](https://hl7.org/fhir/medicationrequest.html), un élément `[effectiveDosePeriod](https://www.hl7.org/fhir/medicationrequest-definitions.html#MedicationRequest.effectiveDosePeriod)` conçu pour accueillir ces deux dates a été ajouté.

**Note PN13**:

- Ces deux dates figurent dans l'objet ELEMENT DE PRESCRIPTION, éléments *Dh_début* et *Dh_fin*.

Les règles de gestion suivantes doivent être appliquées pour définir ces deux dates en fonction de la collection de `dosageInstruction` associée au *MedicationRequest*. Elles reprennent celles de PN13 et sont conformes à la [définition de la R5](https://hl7.org/fhir/medicationrequest.html).

1. La Date/heure de début effective doit être égale à la date/heure de début d’administration de la première dose décrite par la collection de `dosageInstruction`.
1. La Date/heure de fin effective doit être égale à la date/heure de fin d’administration de la dernière dose décrite par la collection de `dosageInstruction`.

*Illustration*
1 comprimé 3 fois par jour (7h, 12h, 18h) pendant 5 jours, prescrit à 10h30, à partir de maintenant (10h30), donc 1ère dose à 12h.
![DateEffective1](Prescription5.jpg)

Notes

1. Dans cet exemple,

    - la Date/heure début prescrite est J1 10h30 ;
    - la Date/heure fin prescrite est J6 10h30 (J1 10h30 + 5j = J6 10h30) ;
    - la dernière dose est celle dont la date/heure d’administration précède la Date/heure fin prescrite (J6 10h30). Cette dernière dose a comme date/heure d’administration J6 7h. Ce qui conduit à une Date/heure fin effective de la ligne de prescription à J6 7h.
1. Si l’administration s’effectue sur une certaine durée, perfusion, seringue électrique, etc., le calcul de la date/heure de fin d’administration de la dernière dose à partir de *dosageInstruction* doit ajouter la durée de l’administration, `dosageInstruction.doseAndRate.RateRatio.denominator`, à la date/heure de début d’administration de cette dernière dose.
1. Pour les posologies complexes, impliquant une description au travers d’une collection d’éléments `dosageInstruction` rattachés à *MedicationRequest*, c’est l’interprétation de la collection de `dosageInstruction` qui doit conduire au calcul de ces dates/heures début/fin effectives de *MedicationRequest* (fonction min() pour les dates de début, fonction max() pour les date de fin).

*Illustration*
G5 1L sur 12h, 2 fois par jour (10h, 22h) pendant 5 jours, prescrit à 9h30, à partir de maintenant (9h30), donc 1ère dose à 10h.
![DateEffective2](Prescription6.jpg)

Note
Dans cet exemple

- la Date/heure début prescrite est J1 9h30 ;
- la Date/heure fin prescrite est J6 9h30 (J1 9h30 + 5 j = J6 9h30) ;
- la dernière dose est celle dont la date/heure de début d’administration précède la Date/heure fin prescrite (J6 9h30). Cette dernière dose a comme date/heure de début d’administration J5 22h et durée d’administration 12h. Ce qui conduit à une Date/heure fin effective prescription à J6 10h.

Pour les **posologies conditionnelles d’un évènement aléatoire**, « si douleur » par exemple, il faut prendre comme dates/heures de début/fin de *MedicationRequest* celles de la période de prise en compte de l’évènement.

- Exemple : Paracétamol 1 g si douleur de J0 à J+3.
- Les dates/heures début/fin de MedicationRequest sont respectivement J0 et J+3.

#### Précision sur les liens entre lignes de prescription

Les liens entre lignes de prescription peuvent bien sûr être indiqués dans les éléments `MedicationRequest.dosageInstruction.additionalInstruction.text`. Cependant, afin de faciliter la constitution automatisé de plan de prise, il est possible d'en modéliser certains via une ressource `RequestGroup`. La ressource `RequestGroup`utilisée pour représenter ces liens est liée au `MedicationRequest`concernées par l'élément `groupIdentifier`

***Point d'attention***
L'utilisation de la ressource `RequestGroup`impose que les `MedicationRequest`liées aient comme valeur `option`pour `MedicationRequest.intent`. Il est donc primordiale pour toute `MedicationRequest`avec `option`comme `intent` de rechercher d'éventuelle ressource `RequestGroup`ayant le même `groupIdentifier`pour vérifier s'il s'agit d'une ligne de prescription liée à une autre.

**Médicaments à prendre en même temps**

Les lignes de prescription correspondant à des médicaments à prendre en même temps sont liées par une ressource `RequestGroup`référençant chaque ligne dans un occurrence de `RequestGroup.action`(via `RequestGroup.action.resource.reference`). La prise en même temps est représentée par une relation de type `concurrent`entre les deux actions.

- ex: [METHOTREX® et LEDERFOLINE® à prendre en même temps](Bundle-MultiLine-Presc-METHOTREXATE-LEDERFOLINE.html)

**Médicaments à prendre avec un intervalle de temps**

Les lignes de prescription correspondant à des médicaments à prendre avec un intervalle de temps entre les deux sont liées par une ressource `RequestGroup`référençant chaque ligne dans un occurrence de `RequestGroup.action`(via `RequestGroup.action.resource.reference`). La prise en différée est représentée par une relation de type `after` ou `before`entre les deux actions.

- ex: [Paracetamol 2h après Sucralfate](Bundle-MultiLine-Presc-Sucralfate-Paracetamol.html)

**Alternative entre deux médicaments**

Les lignes de prescription correspondant une alternative sont liées par une ressource `RequestGroup`référençant chaque ligne dans un occurrence de `RequestGroup.action`(via `RequestGroup.action.resource.reference`). L'alternative est représentée par la valeur `ALT` dans l'extension [fr-additional-action-relationship](tructureDefinition-fr-additional-action-relationship.html) au niveau de l'élément `RequestGroup.action.relatedAction`, la valeur de `RequestGroup.action.relatedAction.relationship` étant fixée à `concurrent`. L'action qui porte cette relation référence le médicamnt de "seconde intension" si le premier n'est pas adapté. Les conditions d'utilisation du médicament de "seconde intension" sont à indiquer dans `RequestGroup.action.description`

- ex: [METFORMINE® ou GLICLAZIDE® en cas d’intolérance digestive à la METFORMINE®](Bundle-MultiLine-Presc-METFORMINE-GLICLAZIDE.html)




