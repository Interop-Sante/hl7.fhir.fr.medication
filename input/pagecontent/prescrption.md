# Prescription

Le domaine couvert se limite à la **prescription intrahospitalière**.
Sont hors champ

- les prescriptions hospitalières exécutables en ville (PHEV);
- les prescriptions de médecine de ville.

## Vue d'ensemble

La prescription est un ensemble du **lignes de prescription**, représentées chacune par une ressource *MedicationRequest* profilée *FrInpatientMedicationRequest*.

La prescription en tant que telle (le regroupement de lignes de prescription), n'a pas été étudiée. Voir la rubrique [Implémentation](prescription.html#implémentation) pour une première ébauche.

Chaque **ligne de prescription** est composée d'un **médicament prescrit** et de sa **posologie**.

Le **médicament prescrit** est représenté par *l'élément medication\[x\](1..1)* de la ressource *FrInpatientMedicationRequest* qui le contraint à faire référence à une ressource *Medication*.

Selon que ce médicament prescrit est un **médicament simple** ou un **médicament composé** de plusieurs médicaments simples et que le médicament simple est exprimé en **DC** (dénomination commune) ou en **spécialité**,
le **médicament prescrit** est représenté par trois variantes de ressource *Medication*:

- *FrMedicationUcd*: médicament exprimée en spécialité identifié par son **code UCD**. Ex: *EFFERALGAN 1 000 mg, cpr dont le code UCD est 3400893766521*
- *FrMedicationNonProprietaryName*: médicament exprimé en DC (dénomination commune)/ Ex: *paracétamol*
- *FrMedicationCompound*: médicament composé de plusieurs médicaments simples exprimées en DC ou en spécialité. Ex: *glucose 5% 1L + sodium chlorure 3g + potassium chlorure 2g, composé de 3 médicaments simples, glucose, sodium chlorure et potassium chlorure, en quantités de 1L, 3g et 2g*.

Dépendance des ressources profilées par Interop'Santé

![IGMedicationDependanceRessourcesProfileesPrescription](../images/Prescription1.jpg)

Noter qu'un médicament simple peut être une association de plusieurs principes actifs. Ce n'en est pas moins un médicament simple représenté par une ressource *FrMedicationUcd* si c'est une spécialité ou une ressource *FrMedicationNonProprietaryName* si c'est une DC.
Ex: *CODOLIPRANE 500 mg/30 mg, cpr dont le code UCD est 3400893936047*
Ex: *paracétamol+codéine 500 mg+30 mg*

La **posologie** est représentée par l'élément dosageInstruction de la ressource *FrInpatientMedicationRequest*.

**Date de début, date de fin** et **durée de prescription**

Elles traduisent la période d'exécution de la prescription.

Cette information est portée indivuellement par chaque ligne de prescription, c'est à dire au niveau de la ressource *MedcationRequest* profilée par *FrInpatientMedicationRequest*, comme paramètre de la posologie prescrite, dans l'élément *dosageInstruction* de type *Dosage*, sous-élément *timing* de type *Timing*

- date de début : *.dosageInstruction.timing.repeat.boundsPeriod.start*
- date de fin : *.dosageInstruction.timing.repeat.boundsPeriod.end*
- durée : la durée ne figure pas dans la ressource. Elle ne peut exister qu'au niveau l'IHM. Quand elle est saisie, elle permet de calculer la date de fin à partir la date de début. Quand elle est affichée, elle est calculée à partir de la date de début et de la date de fin.

Ces dates de début et de fin de prescription, de même que la durée de prescription, ne sont pas des consignes de dispensation. Elles ne figurent donc pas dans les éléments *.validityPeriode* et *.expectedSupplyDuration* de l'élément *.dispensationRequest*.

En prescription intrahospitalière, il n'y a généralement pas de consigne de dispensation formulée par le prescripteur. Il n'y a donc généralement pas usage de l'élément *.dispensationRequest*.

### Précisions sur dates et durée de prescription

Ces précisions concernent les dates et durée de prescription de la ligne de prescription représentée par une ressource *MedicationRequest* profilée *FrInPatientMedicationRequest*.

Elles concernent également les règles définissant la **première dose prescrite** et la **dernière dose prescrites**.

Deux dates, de début et de fin, de la ligne de prescription doivent être considérées :

- La date de début et de fin **prescrite** : le plus souvent, "à partir de maintenant et pendant x jours"
- La date de début et de fin **effective** : la date/heure à partir de laquelle commence effectivement la ligne prescription, c'est-à-dire la date/heure de **début d'administration de la premier dose**, et la date/heure effective de fin de la ligne de prescription, c'est-à-dire la date/heure de **fin d'administration de la dernière dose**.

**Date/heure de fin prescrite** de la ligne de prescription (*MedicationRequest*)

Définit la date/heure de fin exprimée par le médecin lors de sa prescription.

**La première dose prescrite**:

- celle dont la date/heure de début d’administration est *immédiatement postérieure ou égale à la date/heure de début prescrite*.
- calculée à partir de la *date/heure de début prescrite*, en fonction de la posologie définie par la collection de *dosageInstruction*.

**Date/heure de fin prescrite** de la ligne de prescription (*MedicationRequest*)

Définit la date/heure de fin exprimée par le médecin lors de sa prescription.

**La dernière dose prescrite**:

- celle dont la date/heure de début d’administration est *immédiatement inférieure à la date/heure de fin prescrite*
- calculée à partir de la *date/heure de fin prescrite*, en fonction de la posologie définie par la collection *dosageInstruction*

La *date/heure de fin d’administration* de la dernière dose (sa date/heure de début + sa durée d'administration) peut être supérieure à *date/heure de fin prescrite*.

**Durée de prescription**:

Elle est liée aux deux paramétres précédents. Quand ces trois paramètres sont exposés à l'utilisateur pour saisie, en général il en fixe deux et le troisième est calculé.

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

![IllustrationDateFinPrescriteExclue](../images/Prescription2.jpg)

En effet, si la date de début prescrite est égale à la date de début de la premiére dose, un intervalle fermé incluant de la date de fin prescrite conduira à la prescription de 16 doses.

*Illustration*
Si la date de fin prescrite était incluse : 16 doses (3/j x 5j = 16) !
![IllustrationDateFinPrescriteIncluse](../images/Prescription3.jpg)

**Note**:
Dans FHIR, le type *Period*, utilisé pour porter le couple (*date de début*, *date de fin*), stipule que les bornes, *start* et *end*, sont incluses. L'interval est *fermé*.

Un interval *semi-ouvert*, par exemple \[ 2021-02-14T12:34:56, 201-05-14T12:34:56 \[, se traduira par un élément *Period* dans lequel

- *start* : 2021-02-14T12:34:56
- *end* : 2021-05-14T12:34:55

**Rappel**:
Dans FHIR les horaires sont données à la seconde près : format *hh:mn:ss*. Il est précisé que l'utilisateur fait son affaire de la granularité à l'heure ou à la minute près en remplissant les minutes et les secondes manquantes par des *00*.

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
Dans la [R5](https://hl7.org/fhir/medicationrequest.html), un élément *effectiveDosePeriod* conçu pour accueillir ces deux dates a été ajouté.
![EffectiveDosePeriodR5](../images/Prescription4.jpg)

**Note PN13**:

- Ces deux dates figurent dans l'objet ELEMENT DE PRESCRIPTION, éléments *Dh_début* et *Dh_fin*.

Les règles de gestion suivantes doivent être appliquées pour définir ces deux dates en fonction de la collection de dosageInstruction associée au *MedicationRequest*. Elles reprennent celles de PN13 et sont conformes à la [définition de la R5](https://hl7.org/fhir/medicationrequest.html).

1. La Date/heure de début effective doit être égale à la date/heure de début d’administration de la première dose décrite par la collection de *dosageInstruction*.
1. La Date/heure de fin effective doit être égale à la date/heure de fin d’administration de la dernière dose décrite par la collection de *dosageInstruction*.

*Illustration*
1 comprimé 3 fois par jour (7h, 12h, 18h) pendant 5 jours, prescrit à 10h30, à partir de maintenant (10h30), donc 1ère dose à 12h.
![DateEffective1](../images/Prescription5.jpg)

Notes

1. Dans cet exemple,

    - la Date/heure début prescrite est J1 10h30 ;
    - la Date/heure fin prescrite est J6 10h30 (J1 10h30 + 5j = J6 10h30) ;
    - la dernière dose est celle dont la date/heure d’administration précède la Date/heure fin prescrite (J6 10h30). Cette dernière dose a comme date/heure d’administration J6 7h. Ce qui conduit à une Date/heure fin effective de la lilgne de prescription à J6 7h.
1. Si l’administration s’effectue sur une certaine durée, perfusion, seringue électrique, etc., le calcul de la date/heure de fin d’administration de la dernière dose à partir de *dosageInstruction* doit ajouter la durée de l’administration, *dosageInstruction.doseAndRate.RateRatio.denominator*, à la date/heure de début d’administration de cette dernière dose.
1. Pour les posologies complexes, impliquant une description au travers d’une collection d’éléments *dosageInstruction* rattachés à *MedicationRequest*, c’est l’interprétation de la collection de *dosageInstruction* qui doit conduire au calcul de ces dates/heures début/fin effectives de *MedicationRequest* (fonction min() pour les dates de début, fonction max() pour les date de fin).

*Illustration*
G5 1L sur 12h, 2 fois par jour (10h, 22h) pendant 5 jours, prescrit à 9h30, à partir de maintenant (9h30), donc 1ère dose à 10h.
![DateEffective2](../images/Prescription6.jpg)

Note
Dans cet exemple

- la Date/heure début prescrite est J1 9h30 ;
- la Date/heure fin prescrite est J6 9h30 (J1 9h30 + 5 j = J6 9h30) ;
- la dernière dose est celle dont la date/heure de début d’administration précède la Date/heure fin prescrite (J6 9h30). Cette dernière dose a comme date/heure de début d’administration J5 22h et durée d’administration 12h. Ce qui conduit à une Date/heure fin effective prescription à J6 10h.

Pour les **posologies conditionnelles d’un évènement aléatoire**, « si douleur » par exemple, il faut prendre comme dates/heures de début/fin de *MedicationRequest* celles de la période de prise en compte de l’évènement.

- Exemple : Paracétamol 1 g si douleur de J0 à J+3.
- Les dates/heures début/fin de MedicationRequest sont respectivement J0 et J+3.

## Cas d'usage

**La ligne de prescription intiale**:
En situation réelle, n'émettre que des lignes de prescription initiales est rarement suffisant. Néanmoins, c'est la base qui permet d'explorer la complexité de la prescription selon deux axes, le médicament prescrit et la posologie.

La complexité du *médicament prescrit*

- Une spécialité
  - monosubstance dosée en quantité sous forme comprimé
  - bisubstance dosées en quantité sous forme comprimé
  - monosubstance dosée en concentration et prescrite en dose-kg
  - monosubstance dosée en concentration et prescrite en application
  - monosubstance patch dosée en quantité sur durée du patch
  - monosubstance patch dosée en quantité horaire
  - trisubstance en perfusion prête à l'emploi
- En DC
  - on retrouve le pendant des prescriptions en spécialité
  - mais en ne spécifiant que les contraintes du prescripteur
    - la DC
    - dans certains cas, la forme, le dosage
- Extemporané
  - Ce sont des médicaments fabriqués à la demande
    - par assemblage de médicaments simples
    - spécifiés soit en spécialité soit en DC
  - Les cas d'usage sont les perfusions ou le seringies électriques
    - avec un ou plusieurs médicaments
    - dilués dans un soluté.
- Préparations magistrales et préparations officinales
  - Elles sont définies dans le Code de la santé publique
    - préparation magistrale : « tout médicament préparé au vu de la prescription destinée à un patient déterminé... » ;
    - préparation officinale : « tout médicament préparé en pharmacie, inscrit à la pharmacopée ou au formulaire national... ».
  - Elles ne sont pas couvertes par ce guide d'implémentation

*La complexité de la posologie*:

- 4 axes de complexité de la posologie
  - la fréquence
  - l'horaire
  - la durée d'administration
  - la dose
- Un premier niveau de complexité est adressé par les cas d'usage :
  - fréquence : journaliére ou tout les 3 j
  - horaires : fixes
  - durée d'administration : négligeable (assimilée à nulle) ou déterminée
  - dose : exprimée en nombre d'unités de médicament prescrit (comprimé, dose-kg , application, patch, flacon) ou quantité de principe actif (mg, g)

**Les différentes variations de la ligne de prescription initiale**:

On entend par variation de la ligne prescription toute évolution de celle-ci **prescrite** par le médecin.

Il s'agit donc d'une prescription, mais qui succède à la prescription ayant créé la ligne de prescription initiale et qui la reprend en en modifiant potentiellemnt tous les paramètres horsmis la composition du médicament prescrit.

## Ressources

**Profiles**:

- [*FrInpationtMedicationRequest*](StructureDefinition-FrInpationtMedicationRequest.html)
  - Type: *MedicationRequest*
  - Une ligne de prescription
  - En fonction de la nature du médicament prescrit, référence
    - soit une ressource *FrMedicationUCD*,
    - soit une ressource *FrMedicationNonProprietaryName*,
    - soit une ressource *FrMedicationCompound*
- [*FrMedicationUcd](StructureDefinition-FrMedicationUcd.html)
  - Type: *Medication*
  - Un médicatment prescrit en spécialité (UCD)
  - Référence un à plusieurs éléments *ingredient* qui peuvent être
    - soit une ressource *FrSnomedMPSubstanceActive*
    - soit, exceptionnellement, une ressource *FrMedicationUcdPart* pour les UCD comportant des unités de composition différentes
- [*FrMedicationUcdPart](StructureDefinition-FrMedicationUcdPart.html)
  - Type: *Medication*
  - Une partie de l'UCD (ex. *comprimé bleu*)
  - Ces parties discriminant des unités de composition différentes d'une même UCD, n'ont pas de code propre. Elles sont donc dépendantes de l'UCD à laquelle elles sont rattachées.
  - Pour cette raison, cette ressource **ne peut être utilisée seule**. Elle doit être explicitement rattachée à une ressource *FrMedicationUcd*.
- [*FrMedicationNonProprietaryName*](StructureDefinition-FrMedicationNonProprietaryName.html)
  - Type: *Medication*
  - Un médicament prescrit en DC
  - Référence un à plusieurs éléments *ingredient* qui ne peuvent pas être que des ressources *FrSnomedMPSubstanceActive*
- [*FrMedicationCompound](StructureDefinition-FrMedicationCompound.html)
  - Type: *Medication*
  - Un médicament prescrit composé de spécialités et/ou de médicament en DC
  - Référence un à plusieurs composants qui peuvent être, indépendamment,
    - soit une ressource *FrMedicationUCD*,
    - soit une ressource *FrMedicationNonProprietaryName*.
- [*FrMPSubstanceActive](StructureDefinition-FrMPSubstanceActive.html)
  - Type: *CodeableConcept*
  - Une substance active des *Medical Product* SNOMED CT

**Extensions**:

- [*FrTreatmentIntent*](StructureDefinition-FrTreatmentIntent.html)
  - L'intention général du traitement (préventif, curatif, palliatif, ...)
  - Type: element *CodeableConcept*
  - Cible: ressource *MedicationRequest*
  - Binding: jeu valeurs *FrTreatmentIntent* (extensible)
- [*FrDrugCharacteristic*](StructureDefinition-FrDrugCharacteristic.html)
  - Une propriété caractéristique de médicament prescrit.
  - Par exemple, à libération prolongée
  - Type: element *complex type*
  - Cible: ressource *Medication*
  - Cette extension préfigure une évolution de la ressource *Medication* en R5.
- [*FrBasisOfDoseComponent*](StructureDefinition-FrBasisOfDoseComponent.html)
  - Le médicament composant référencé par la quantité de la dose d'un médicament composé
  - Type: element *complex type*
  - Cible: élément *doseAndRate* d'une ressource *Dosage*
- [*FrIsVehicle*](StructureDefinition-FrIsVehicle.html)
  - Le médicament composant assumant le rôle de soluté
  - Type: element *complex type*
  - Cible: ressource *Medication* ou élément *ingredient* d'une ressouce *Medication*

**ValueSets**:

- [*SIPh-CIO_UCD*](http://siph.phast.fr/free-set-ciodc/)
  - Les codes UCD valides pour identifier les spécialités
- [*FrMedicinalProductOnly*](ValueSet-FrMedicinalProductOnly.html)
  - Les codes SNOMED CT des DC
- [*FrMpSubstanceActive*](ValueSet-FrMpSubstanceActive.html)
  - Les codes SNOMED CT des substances actives des *Medicinal Product*
- [*FrRouteOfAdministration*](ValueSet-FrRouteOfAdministration.html)
  - Les codes SNOMED CT des voies d'administration
- [*FrMethodOfAdministration*](ValueSet-FrMethodOfAdministration.html)
  - Les codes SNOMED CT des méthodes d'administration
- [*FrMpDoseForm*](ValueSet-FrMpDoseForm.html)
  - Les codes SNOMED CT des formes des *Medicinal Product*
- [*FrMpUnitOfPresentation*](ValueSet-FrMpUnitOfPresentation.html)
  - Les codes SNOMED CT des unités de présentation des *Medicinal Product*
- [*FrTreatmentIntent*](ValueSet-FrTreatmentIntent.html)
  - Les codes SNOMED de l'intention général du traitement (préventif, curatif, palliatif, ...)

**CodeSystems**:

- [*SIPh-CIO_UCD*](https://siph.phast.fr/free-set-ciodc/)
  - Le code system sur lequel est construit le value set SIPh-CIO_UCD des codes UCD valides.
  - CIOdc est Copyright © 2003-2021 PHAST - France. All rights reserved.
  - Ce code system fait partie de [FreeSet CIOdc](https://siph.phast.fr/free-set-ciodc/) disponible sous licence libre.
- *SNOMED_CT* ***Lien à mettre à jour***
  - Le code system de l'ontologie sur laquelle sont construits les jeux de valeurs des propriétés des médicaments et de la clinique.
  - SNOMED CT est Copyright © 2002 International Health Terminology Standards Development Organisation (SNOMED International). All rights reserved.
- [*UCUM*](https://ucum.org/)
  - Le code system des unités de mesures.
  - UCUM est Copyright © 1999-2013 Regenstrief Institute, Inc. et The UCUM Organization, Indianapolis, US-IN. All rights reserved.

## Implémentation

Aucune consigne particulière concernant l'implémentation des ressources ne figure dans ce guide.

Les consignes générales édictées par HL7 concernant tant leur implémentation sur un serveur de ressources FHIR que leur implémentation à travers un système de messagerie FHIR, s'appliquent.

## Exemples

### La ligne de prescription initiale, complexité du médicament prescrit

#### Médicament simple en spécilialité

- [EFFERALGAN 1 000 mg, cpr, 1 à 7h, 12h et 18h per os, pendant 5j](Instances-14624.html)
- [CODOLIPRANE 500 mg/30 mg, cpr, 1 à 7h et 18h par os, pendant 5j](Instances-14625.html)
- [DOLIPRANE 2.4% ss sucre, 20 dose-kg à 7h et 18h per os, pendant 5j](Instances-14626.html)
- [DIPROSONE 0.05%, 1 application cutanée à 8h, pendant 5j](Instances-14627.html)
- [NICOREETESKIN 15 mg/16h, patch, 1 à 7h, pendant 2 semaines](Instances-14628.html)
- [MATRIFEN 75 ug/h, patch, 1 à 7h, toutes les 72h, pendant 8j](Instances-14629.html)
- [BIONOLYTE G5, sol pr perf,poche 500 mL, 1 à 10h et 22h sur 12h, pendant 5j](Instances-14630.html)

#### Médicament simple en DC

- [paracétamol, 1 g à 7h, 12h et 18h per os, pendant 5j](Instances-14618.html)
- [paracétamol+codéine 500 mg+30 mg, 1 à 7h et 18h per os, pendant 5j](Instances-14619.html)
- [bêtaméthasone 0.05%, 1 application cutanée à 8h, pendant 5j](Instances-14620.html)
- [nicotine 15 mg/16h, patch, 1 à 7h, pendant 2 semaines](Instances-14621.html)
- [fentanyl 75 ug/h, patch 72h, 1 à 7h, tous les 3j, pendant 8j](Instances-14622.html)
- [glucose 5%+sodium chlorure 2g+potassium chlorure 1g x 500mL, 1 à 10h et 22h sur 12h, pendant 5j](Instances-14631.html)
  - Note : Il s'agit de la prescription d'une perfusion préfabriquée, prête à l'emploi, d'un médicament associant deux électrolytes à du glucose 5%. C'est une association de substances. À la différence du médicament composé qui est un assemblage extemporané de médicaments simples.

#### Médicament composé

- [Perfusion Glucose 5% 500 mL avec Sodium chlorure 2g et Potassium chlorure 1g, à 10h et 22h sur 12h, pendant 5j](Instances-14637.html)
- [Perfusion Glucose 5% 1L avec Sodium chlorure 3g et Potassium chlorure 2g, à 10h et 22h sur 12h, pendant 5j](Instances-14638.html)
- marquer l'un des médicaments composant comme étant le soluté du médicament composé
  - marqueur sur *Medication composant* : [céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](Instances-14649.html)
  - marqueur sur *.ingredient* de *Medication composé* : [céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](Instances-14650.html)
  - Ces deux variantes sont **soumises à concertation : une seule sera retenue**. Voir [Perfusions et seringues électriques](prescription.html#perfusion-et-seringues-électriques), § concacré à l'extension *IsVehicle*
- [dobutamine 200 mg dans soluté=G5 qsp 40 mL, 400 µg/min pendant 1j](Instances-14651.html)

### La prescription inititale, complexité de la posologie

Un premier niveau de complexité est adressé par les cas d'usage précédents.
Les niveaux de complexité supplémentaires adressent

- les doses rationnelles
  - [BISOPROLOL 7.5 mg SANDOZ, 1/3cpr à 7h et 2/3 à 18h per os, pendent 1 semaine](Instances-14646.html)
  - Dans FHIR, les nombres rationnels sont traduit en type decimal, avec des règles concernant la gestion de la *précision*
  - En pratique, pour l'expression de la dose, les nombres rationnels impliqués se limitent à 1/4, 1/3, 1/2, 2/3 et 3/4
  - Ce guide recommande de représenter les rationnels à la 6ème décimal. Ainsi
    - 1/4 : 0.25
    - 1/3 : 0.333333
    - 1/2 : 0.5
    - 2/3 : 0.666667
    - 3/4 : 0.75
- des doses différentes entre horaires
  - [CLARADOL 500 mg, 2 cpr à 7h et 1 cpr à 18h per os, pendant 5j](Instances-14641.html)
  - [paracétamol, 1 g à 7h et 500 mg à 18h per os, pendant 5j](Instances-14642.html)
- les fréquences inférieurs à la journée
  - [CLARADOL 500 mg, 1 cpr toutes les 6h per os, pendant 5j](Instances-14643.html)
  - [paracétamol, 500 mg toutes les 6 h per os, pendant 5j](Instances-14644.html)
- les fréquences calendaires
  - [CLARADOL 500 mg, 1 cpr à 18h tous les mardis et vendredis, per os, pendant 3 mois](Instances-14645.html)
  - Le type complexe *Timing* ne permet pas le codage des situations suivantes
    - *tous les 05 du mois*
    - *tous les derniers vendredis du mois*
  - Le type complexe *Timing* est normatif, il est en pratique impossible de le faire évoluer.
    - Faut-il créer les extensions *dayOfMonth* et *weekdayOfMonth* ?
    - Note: l'extension standard [dayOfMonth](https://hl7.org/fhir/R4/extension-timing-dayofmonth.html) existe !! (maturité 1).
- les prescriptions conditionnelles simple
  - [CLARADOL 500 mg, 1 cpr si douleur, 2 cpr max par prise, 6 cpr max par 24h, 4h délais min entre deux prises, pendant 5j](Instances-14639.html)
  - [paracétamol, 500 mg per os si douleur, 1 g max par prise, 3 g max par 24h, 4h délais min entre deux prises, pendant 5j](Instances-14640.html)
  - Le concept de délais *minimum* entre deux prises n'est pas codable.
    - Il apparait en tant que consigne complémentaire en texte libre dans un élément *additionalInstruction*.
    - Faut-il créer un extension ?
- les doses progessives ou dégressives par palier
  - [méthylpredinosolone, 6 mg pendant 2j, puis 4 mg pendant 2j, puis 2 mg pendant 2j](Instances-14647.html)
  - Qu'apporte l'élément *dosageInstruction.sequence* de chaque palier par rapport l'élément *dosageInstruction.timing.repeat.boundsPeriod* indispensable ?
  - L'élément *dosageInstruction.sequence* est facultatif. Ne serait-il pas préferable le supprimer ?
- l'expression de la quantité d'une dose se référant à l'un des médicaments composant du médicament composé prescrit
  - [céfotaxine dans G5 100 mL, 4g (céfotaxine) en 20 min toutes les 6h pendant 3j](Instances-14648.html)
  - Voir [Perfusions et seringues électriques](prescription.html#perfusion-et-seringues-électriques) § concacré à l'extension *Basis of Dose Component*.
- l'expression d'une dose réelle pertinente à partir d'une dose théorique fonction de paramètres patient
  - [capécitabine 1800 mg (1000 mg/m²), 7h et 18h per os, pendant 14j](Instances-14652.html)

### Les modifcations de la ligne prescription initiale

Il n'y a pas d'exemple, pour l'instant.

## Médicament prescrit et dose(s)

### Ex: LASILIX 20 mg, sol inj amp 2 mL, XX à 7h et 18h IV, pendant 5j

- **unité de médicament prescrit** ➟ *MedicationRequest.medication*
  - ==**LASILIX**== → marque ➟ dans le *.text* du *.coding* de la spécialité
  - ==**furosémide**== → principe actif ➟ *.ingredient().item\[x\]*
  - ==**20 mg**== → dosage ➟ *.ingredient().strength*
  - ==**sol inj**== → forme ➟ *.form*
  - ==**amp**== → présentation ➟ en annotation ==**{amp}**== de l'unité de dénombrement UCUM
  - ==**2 mL**== → volume ➟ *.amount*
- dose prescrite → *MedicationRequest.dosageInstruction*
  - ==**XX**== → quantité ➟ *.doseAndRate*
  - ==**à 7h et 18h**== → horaire de prise ➟ *.timing.repeat.timeOfDay()*
  - ==**per os**== → voie d'administration ➟ *.route*
  - ==**pendant 5j**== → début (maintenant) et fin (début + 5j) ➟ *.timing.boundsPeriod*
- La quantité ==**XX**== de la dose prescrite peut s'exprimer de 3 façons différentes, par exemple :
  - ==**1**== (unité \[de présentation de l'unité de médicament prescrit\] = ampoule contenant 20 mg de furosémide)
  - ==**20 mg**== (de principe actif = furosémide)
  - ==**2 mL**== (de produit = solution injectable contenant 20 mg de furosémide)

Ces 3 expressions permettent de déterminer la quantité de(s) principe(s) actif(s) à partir de caratéristiques du médicament prescrit

### Ex: FUROSEMIDE XX à 7h et 18h IV, pendant 5j

- **unité de médicament prescrit** ➟ *MedicationRequest.medication*
  - ==**FUROSEMIDE**== → médicament en DC ➟ dans le *.text* du *.coding* du médicament en DC
  - ==**furosémide**== → principe actif ➟ *.ingredient().item\[x\]*
  - les autres caractéristiques ne sont pas contraintes par le prescripteur
- **dose prescrite** → *MedicationRequest.dosageInstruction*
  - caractéristiques identiques à celles de l'exemple de ligne de prescription en spécialité
- La **quantité** ==**XX**== de la dose prescrite ne peut plus s'exprimer que d'1 façon :
  - ==**20 mg**== (de principe actif = furosémide)
- Les 2 autres ne permettent pas de déterminer la quantité de(s) prinicipe(s) actif(s)
  - ==**1**== (unité [de présentation de l'unité de médicament prescrit] = furosémide en quantité non définie)
  - ==**2 mL**== (de produit = un produit qui contient du furosémide en concentration non définie)

### Contraintes

entre

- propriétés de l’**unité de médicament prescrit**
- expression de la **quantité de la dose prescrite**

#### Objectif

- La quantité de principes actifs de la dose doit être déterminée,
- Sauf pour les unités de prescription à volume indéterminé (ex : application), la concentration de principes actifs de la dose doit être déterminé.

#### Contrainte sur le Médicament prescrit (*MedicationRequest.medication*)

Le dosage (*.ingredient[].strength*) est exigé quand le médicament prescrit est

- une association de principes actifs (ex : paracétamol + codéine)
- un médicament extemporané (ex : perfusion composée de plusieurs médicaments)

#### Contraintes sur l’Unité de la dose prescrite (*MedicationRequest.dosageInstruction.doseAndRate*)

L'unité est pertinente (donc autorisée), en fonction de son type,

- **unité de quantité** de principe actif, si le médicament prescrit n'est composé que d'**un seul principe actif** ;
- **unité de volume** du médicament prescrit, si le médicament prescrit a un **dosage en concentration** défini ;
- **unité de dénombrement** du médicament prescrit, si le médicament prescrit a un **dosage en quantité** défini.

On inclut dans définie, la possibilité de calcul à partir des propriétés connues.
Par exemple, quantité connue 20 mg et volume connu 2 ml, implique que la concentration est définie, 10 mg/mL et que l'unité mL pour exprimer la quantité de la dose, par exemple 3 mL, est pertinente parce qu'elle détermine sa quantité de principe actif, 30 mg.

## Durée d'administration

Quand elle n'est pas négligeable, sa valeur exprimée **DOIT** figurer au dénominateur de la dose prescrite.

Cf. [Requirements](https://hl7.org/fhir/R4/dosage-definitions.html#Dosage.doseAndRate.rate_x_) de l'élément *MedicationRequest.dosageInstruction.doseAndRate.rateRatio*

Si une durée d'administration n'est pas spécifiée par le prescripteur, cela siginifie qu'elle est négilgeable. Par exemple pour l'administration d'un comprimé ou l'injection direct d'une solution.

### Cas particuliers

#### IVL (intraveineuse lente) / IVD (intraveineuse directe)

Intraveineuse lente et intraveineuse directe ne sont pas des voies d'administration, quand bien même ces concepts s'y invitent régulièrement dans les listes locales des voies d'administration. Ce sont des méthodes, dont la principale différence porte sur la durée d'administration, qui n'est dans ce cas pas quantifée mais simplement qualifiée.

Si le prescripteur souhaite ne pas donner une durée d'administration explicite quantifiée, cette distinction qualitative DOIT être portée dans l'élément *method* de la ressource *MedicationRequest*. La voie d'administration, élément *route*, prend dans les deux cas la valeur voie intraveineuse.

Ni l'EDQM, ni SNOMED CT ne fournissent de codes pour nuancer la méthode d'administration *injection*.

#### Injection continue

Les injections continues sans mention de durée d'administration parce qu'elle est indéterminée au moment de la prescription sans pour autant être négligeable, se traduisent par une expression de la dose en débit, sans mention de quantité, ni de durée d'administration.

Elles se distinguent des expressions de doses à durée d'administration négligeable par l'absence de quantité.

exemple

... json
"doseAndRate": [
  {
     ...
     "rateRatio": {
      "value": 700,
      "unit": "µg"
      "system": "http://unitsofmeasure.org",
      "code": "ug"
    },
    "denominator": {
      "unit": "min",
      "system": "http://unitsofmeasure.org",
      "code": "min"
    }
  }
]
...
ou

... json
"doseAndRate": [
  {
    ...
    "rateQuantity": {
      "value": 700,
      "unit": "µg/min"
      "system": "http://unitsofmeasure.org",
      "code": "ug/min"
    }
  }
]
...

**Note**:
Il y deux façons d'exprimer un débit dans une dose FHIR :

- une unité UCUM de temps (ex: ==**min**==) au dénominateur (==**deniminator.code**==) dans un type de donnée *ratio* (==**rateRatio**==)
- une unité UCUM de débit (ex: ==**ug/min**==) dans un type de donnée *quantity* (==**rateQuantity**==)

La seconde implique une **interprétation du code UCUM par le logiciel** pour avoir connaissance de la notion de débit (savoir reconnaitre une unité de débit UCUM).

## Perfusions et seringues électriques

Elles présentent la particularité d'avoir un médicament prescrit composé de plusieurs médicaments simples, exprimés en spécialité et/ou en DC.

De ce fait, le rapport entre les caractéristiques du médicament prescrit composé et l'expression de la quantité des doses prescrites présente quelques particularités.

### BoDC (Basis of Dose Component)

Dans un médicament composé, permet d'exprimer à quel médicament composant, quelle ressource Medication, se réferre l'expression de la dose.

Ex: Permet de rapporter l'expression de la quantié 4g de la dose, au médicament céfotaxine du médicament composé céfotaxine dans 100 mL de glucose 5%.

Cette information est portée par l'extension [*FrBasisOfDoseComponent*](StructureDefinition-FrBasisOfDoseComponent.html) de l'élément *doseAndRate* du type complex *Dosage* qui s'applique à l'élément *dosageInstruction* de la ressource *MedicationRequest*.

Voir exemple [céfotaxine dans G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](Instances-14648.html)

Note PN13:

- Dans PN13, c'est le *COMPOSANT PRESCRIT* qui est marqué comme *est_Référent_poso*, et non pas les *ELEMENT DE POSOLOGIE* qui doivent tenir compte de ce marquage d'un *COMPOSANT PRESCRIT*.
- Dans FHIR, c'est l'élément *dosageInstruction* qui est marqué par la référence à la ressources *Medication* sur laquelle se fonde l'expression de la quantité du dosage.

### IsVehicle

Dans un médicament composé, permet d'exprimer quel composant, quelle ressource *Medication*, est le soluté.

Ex: Permet de marquer le glucose 5% comme étant le soluté dans le médicament composé céfotaxine dans 100 mL de glucose 5%.

Cette information est portée par l'extension [*FrIsVehicle*](StructureDefinition-FrIsVehicle.html).
Cette extension est appliquée

- soit à la ressource *Medication* composant qui est référencée par l'élément ingredient de la ressource *Medication* composée,
- soit à l'élément *ingredient* de la ressource *Medication* composée.

Voir les deux variantes de l'exemple

1. sur Medication composant : [céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](Instances-14649.html)
1. sur .ingredient de Medication composé : [céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](Instances-14650.html)

Ces **deux variantes** transmettent strictement la même information et **sont soumises à concertation**.
Dans le version 1 finalisé du guide, **une seule sera retenue** et le contexte d'application de l'extension *IsVehicule* sera réduit en conséquence.

Note PN13:

- Dans PN13, le marqueur *est_véhicule* est porté par le *COMPOSANT PRESCRIT*.
- Dans PN13, l'alernative proposée n'est pas possible parce que la collection de *COMPOSANT PRESCRIT* est directement portée par l'*ELEMENT DE PRESCRIPTION*, l'équivalent de la ressource *MedicationRequest*. Il n'y a pas d'élément XML container intermédiaire équivalent de la ressource *Medication* composé (profil *FrMedicationCompound*).

### Q.S.P. (quantité suffisante pour ...)

Cette expression est utilisé dans la prescription des injectables en seringue électrique pour déclarer le volume de soluté composant le médicament prescrit en *quantité suffisante pour* atteindre le volume du médicament composé, c'est-à-dire le volume final de la seringue.

L'application de la règle suivante répond à ce cas d'usage :

- repérer l'*ingredient* représentant le médicament composant qui joue le rôle de soluté avec l'extension *IsVehicule* ;
- ne pas mettre de volume à ce médicament composant jouant le rôle de soluté (absence d'élément amount dans la ressource Medication représentant le médicament soluté) ;
- mettre le volume cible dans l'élément amount de la ressource Medication représentant le médicament composé.

Cette règle impose l'utilisation de l'extension *IsVehicule*.
Voir exemple [dobutamine 200 mg dans soluté=G5 qsp 40 mL, 400 µg/min pendant 1j](Instances-14651.html)

En [R5](https://hl7.org/fhir/medication.html), le ressource *Medication* voit l'élément *ingredient.strength* passer de type exclusivement *Ratio* en type alternatif *Ratio*, *Quantity* ou *CodeableConcept* avec jeu de valeurs préferré contenant la valeur qs (quantité suffisante pour).

- En mettant dans
  - *.totalVolume* : le volume cible de la seringue,
  - *.ingredient\[soluté\].strengthCodeableConcept* : le code qs
  il est prescrit explicitement que le soluté est en Q.S.P. le volume cible de la seringue.

**Note**:
En R5 l'élément amount est renommé **totalVolume** pour lever toute ambiguité avec les volumes pouvant figurer dans les *ingredient.strength\[x\]*.

## Patches

### Propriétés du patch

Un patch est un médicament incluant un dispositif intégré garantissant

- une durée maximale de diffusion (ex: 16h, 72h)
- et
  - une quantité (15 mg)
   ou
  - un débit (75 ug/h)
  délivré de principe(s) actif(s).

Ces informations sont des propriétés du médicament prescrit.

Elles s'expriment dans la ressource Medication référencée par l'élément medication qui décrit l'unité de médicament prescrit dans la ressource MedicationRequest.

### Propriété de la dose

La durée d'administration du patch est un choix du prescipteur.

Il **DOIT** être exprimé en tant que tel au dénominateur de la dose prescrite, même si elle est idenitique à la durée maximal garantie par le dispositif intégré.

Le guide d'implémentation n'assigne à la durée d'administration, aucune valeur par défaut qui serait particulière aux patches.

## Dose calculée / dose prescrite

Il arrive que la dose prescrite découle d'un dose de référence formulée en quantité de principe actif par unité de poids ou de surface corporelle. La dose effectivement prescrite est arrondie à une valeur réalisable.

Ex: capécitabime 1000 mg/m².

- Pour un patient de 1,85 m² (1,75 m et 70 kg), la dose calculée est 1850 mg.
- Les formes orales sèches disponibles ont un dosage de 150 mg ou 500 mg.
- Le médecin prescrit une dose effective de 1800 mg.

Ces deux valeurs de la dose prescrite sont transmises dans deux éléments doseAndRate distingués par leur type

... json
"doseAndRate": [
   {
      "type": {
         "coding": [
            {
               "system": "http://terminology.hl7.org/CodeSystem/dose-rate-type",
               "code": "calculated",
               "display": "Calculated"
            }
         ]
      },
      "doseQuantity": {
         "value": 1000,
         "unit": "mg/m²",
         "system": "http://unitsofmeasure.org",
         "code": "mg/m2"
      }
   },
   {
      "type": {
         "coding": [
            {
               "system": "http://terminology.hl7.org/CodeSystem/dose-rate-type",
               "code": "ordered",
               "display": "Ordered"
            }
         ]
      },
      "doseQuantity": {
         "value": 1800,
         "unit": "mg",
         "system": "http://unitsofmeasure.org",
         "code": "mg"
      }
   }
]
...

Voir exemple [capécitabine 1800 mg (1000 mg/m²), 7h et 18h per os, pendant 14j](Instances-14652.html)

**Note**:
Il est est tout à fait possible de prescrire plus simplement capécitabine 1000 mg/m², accompagnée de la ==**surface corporelle**== (1,85 m²), voire seulement de la ==**taille**== (1,75 m) et du ==**poids**== (70 kg) du patient.
Mais c'est un autre cas d'usage, qui, quand bien même il déboucherait sur la même délivrance, *capécitabine 1800 mg*, laisserait au pharmacien l'arbitrage de l'arrondi par rapport à la dose prescrite. C'est un cas d'usage différent parce que l'acteur et le temps où se fait l'arrondi ne sont pas les mêmes.

## Etude complémentaire

Cette étude faite suite aux deux critiques majeures formulées à l'issue de la consultation du 21 octobre 2021 :

- Le binding 'exclusive' à SNOMED CT
- L'usage de profils multiples de la ressource Medication plutôt qu'un seul profil avec des ==**slice**== par type de médicament (spécialité, DC, coumpound)

### Objectif de l'étude

Remplacer les 3 profils de la ressource Medication

- *frMedicationUCD*,
- *frMedicationNonProprietaryName* et
- *frMedicationCompound*

par un seul profil slicé.

### Ressources concernées

[*FrInpationtMedicationRequest2*](StructureDefinition-FrInpationtMedicationRequest2.html)

- Type: *MedicationRequest*
- Une ligne de prescription
- Quelle que soit la nature du médicament prescrit, référence une ressource *FrMedication2Unique*

Ce profil diffère de *FrInpatientMedicationRequest* par le fait qu'il ne référence que *FrMedication2Unique* et non pas *frMedicationUCD*, *frMedicationNonProprietaryName* ou *frMedicationCompound* selon que le médicament prescrit est une spécialité, un médicament simple en DC ou un médicament composé extemporané.

[*FrMedication2unique*](StructureDefinition-FrMedication2unique.html)

- Type: *Medication*
- Un médicament prescrit en spécialité (UCD), en DC ou en composé extemporané
- Référence un à plusieurs éléments ingredient qui peuvent être
  - soit une ressource *FrMPSubstance2Active* (pour les substances d'un médicament simple)
  - soit une ressource *FrMedication2unique* (pour les médicaments composants des médicaments composés extemporané)

Le ==**code**== est slicé, ==**discriminant**== sur le système de codage

- ==**ucdCode**==
  - ==**discriminant**==:==**coding.codesystem**== = [http://phast.fr/fhir/ValueSet/Pharmacy/CIOdc/SIPh-CIO_UCD]
  - binding requis sur le jeu de valeurs des codes UCD (SIPh-CIO_UCD)
- ==**snomedMedicinalProductCode**==
  - ==**discriminant**==:==**coding.codesystem**== = [http://snomed.info/sct]
  - avec binding requis sur le jeu de valeurs des codes *Medicinal Product* SNOMED CT ([FrMedicinalProductOnly](ValueSet-FrMedicinalProductOnly.html))
- ==**otherMedicationCode**== : pour tout système de codage autre que SIPh-CIO_UCD et SNOMED CT
  - ==**discriminant**==:==**coding.codesystem**== != [http://phast.fr/fhir/ValueSet/Pharmacy/CIOdc/SIPh-CIO_UCD] | [http://snomed.info/sct]

[*FrMPSubstance2Active*](StructureDefinition-FrMPSubstance2Active.html)

- Type: *CodeableConcept*
- Une substance active des Medical Product SNOMED CT

Le slicing du ==**coding**== permet le codage de la substance selon

- le jeu de valeurs requis des substances de Medicinal Product SNOMED CT
  et/ou
- plusieurs systèmes de codage alternatifs non controlés.

### Analyse

Le slicing du ==**code**== du médicament (profil *FrMedication2unique* de la ressource *Medication*) en trois tranches, une par type de médicament, est fait sur son système de codage. Pour que ces alternatives soient exclusives, deux doivent être fixées et différentes et la troisième ouverte à l'exclusion des deux précédentes.

Ainsi, les médicaments définis en tant que spécialité ont un ==**code**== exclusivement dans le ==**codesystem**== UCD. Ça tombe plutôt bien.
Mais les médicaments simples définis en DC ont leur ==**codesystem**== exclusivement SNOMED CT. Ce qui est contraire à la demande des éditeurs de relâcher la contrainte de ==**binding**== 'exclusive' sur SNOMED CT.

Laisser ouvert le ==**codesystem**== du médicament simple en DC, quand bien même SNOMED serait *préferré*, ne permet pas de le discriminer d'un éventuel ==**codesystem**== utilisé pour les médicaments composites. Cette situation de slicing sur un ==**discriminant**== ambigu n'est pas valide (elle ne passe pas le [validateur HL7](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator#UsingtheFHIRValidator-Runningthevalidator)).

Néanmoins, en maintenant ces contraintes de binding exclusif pour les tranches spécialité et DC, les messages d'erreur retournés sur la validation de [MD_0003noExt_ (doliprane 500mg gél 16_2j)](Instances-14665.html) stipule que le slicing est incongru (donc interdit) sur an element that does not repeat. Il s'agit de l'élément ==**Medication.code**==. Ce ==**coding**== est effectivement unique pour une instance de *Medication*. La multiplicité est ailleurs, dans le type de médicament que représente cette *Medication*, une spécialité, un médicament simple en DC ou un médicament composé.

### Conclusion

Le slicing n'adresse pas cette multiplicité des saveurs exclusives que peut prendre un élément.
