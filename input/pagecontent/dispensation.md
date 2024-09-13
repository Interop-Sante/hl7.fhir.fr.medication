# La dispensation

La dispensation est un concept français, qui recouvre 2 actions différentes :

- la validation pharmaceutique de l’ordonnance, qui induit un dialogue éventuel avec le prescripteur
- la délivrance du médicament, qui est la fourniture de la matière et des consignes d’administration

## Objectif

Principes

- Faire suite aux exemples de prescripition intra-hospitalière de ce guide Interop'Santé
- En commençant par la délivrance intra-hospitalière (priorité au flux matière)
- La validation pharmaceutique sera abordée ultérieurement

Fournir des exemples de délivrance intra-hosîtalière,

- comportant des éléments de complexité croissante,
- dans la continuité des exemples de prescription en spécialité et en DC.

Les exemples seront fondés sur des prescriptions réputées validées par le pharmacien.

Les éléments de complexité sont à définir, à l’instar de ceux définis pour la prescription.

## Ressource MedicationDispense

La ressource MedicationDispense porte la délivrance d'un médicament et d'un seul.

- Pour décrire la délivrance de plusieurs médicaments, il faudra générer autant de MedicationDispense qu'il y a de médicaments délivrés.
- La gestion d'une délivrance multi médicaments n'est pas abordée. Entre les Bundle de type document (persistence) et les query (dynamique), FHIR offre une palette de possibilités parmi lesquelles aucune n'est à ce jour privilégiée au titre du présent guide.

### Propriétés

voir spécification HL7 R4 : [MedicationDispense](https://hl7.org/fhir/R4/medicationdispense.html)

- ==**status**== : statut de la délivrance. Un [jeu de valeurs](https://hl7.org/fhir/R4/valueset-medicationdispense-status.html) est **requis** par le standard (cf.infra). Il manquerait au moins une valeur entre "préparé" et "délivré", a minima "en cours d'acheminement".
- ==**medication**== : le médicament délicré. C'est un médicament réel, a priori une spécialité identifiée par son code UCD.

**ATTENTION** : 10 à 15% des médicaments dispensés à l’hôpital n’ont pas de code UCD, par exemple les préparations pédiatriques à partir d’une UCD.
Le chapitre Prescription couvre les médicaments composés et illustre comment ils doivent être décrits (ex : une perfusion). Il ne couvre ni les préparations magistrales ni les préparations hospitalières (article L. 5121-1 du Code de la santé publique). Leur description standardisée doit faire l’objet d’un travail complémentaire qui n’a pas encore été programmé.

- ==**subject**== : le patient ou le groupe de patients. L'option groupe de patients ouvre la possibilité de formuler une dispensation nomminative reglobalisée.
- ==**performer**== : le **préparateur** qui réalise la délivrance
- ==**authorizingPrescription**== : la prescription pour laquelle cette délivrance est réalisée. Ou les prescriptions si la délivrance est reglobalisée.
- ==**type**== : type de délivrance. Un [jeu de valeurs](https://hl7.org/fhir/R4/v3/ActPharmacySupplyType/vs.html) est proposé en exemple. Il ne permet de qualifier directement le type au sens « journalière individuelle nominative », « nominative reglobalisée », …
- ==**quantity**== : quantité de médicament délivré.
- ==**daysSupply**== : durée de traitement couvert (à la posologie décrite dans ==**dosageInstruction**== des prescriptions référencées par ==**authorizingPrescription**== ). Ne porte pas la périodicité de la délivrance mais la période tirée de cette éventuelle périodicité qui est appliquée à cette délivrance.
- ==**whenPrepared**== : quand la préparation est prête à être enlevée ou expédiée.
- ==**whenHandedOver**== : quand la préparation est délivrée au soignant. C’est une information non disponible pour toute valeur de status recouvrant « non délivré ».
- ==**dosageInstruction**== : posologie administrable du médicament délivré. Elle est formulée par le pharmacien compte tenu de celle de la prescription et du médicament délivré. Elle est identique à la posologie prescrite quand le médicament délivré est strictement identique au médicament prescrit.
- ==**destination**== : l'établissement ou le lieu où la délivrance a été expédiée.
- ==**receiver**== : la personne qui a (==**status**== = *completed*) ou doit (==**status**== ≠ *completed*) retirer le(s) médicament(s).
- ==**note**== : note information complémentaire, en texte libre, concernant la dispensation.

### Diagramme d'état de la propiété ==**status**==

![Dispendation-DiagrammeEtat](../images/Dispensation1.png)

*hypothèse* faite à partir des [libellés des codes](https://hl7.org/fhir/R4/valueset-medicationdispense-status.html) (qui seraient à traduire). HL7 ne spécifie pas ce diagramme d'état.

## La délivrance la plus simple, de la prescription la plus simple

La *prescription la plus simple*

- en spécialité: [EFFERALGAN 1 000 mg, cpr, 1 à 7h, 12h et 18h per os, pendant 5j](Instances-14624.html)
- en DC: [paracétamol, 1 g à 7h, 12h et 18h per os, pendant 5j](Instances-14618.html)

La *délivrance la plus simple*

- la spécialité prescrite, pour la prescription en spécialité
- la même spécialité, pour la prescription en DC
  - forme compatible avec la voie d'administration prescrite
  - dosage égal à la dose prescrite
- en une fois, pour la durée prescrite

Voir la délivrance la plus simple de

- [EFFERALGAN 1 000 mg, cpr, 1 à 7h, 12h et 18h per os, pendant 5j](Instances-14657.html)
- [paracétamol, 1 g à 7h, 12h et 18h per os, pendant 5j](Instances-14658.html)

La *posologie administrable* (==**dosageInstruction**==)

- est identique à celle de la prescription en spécialité
  - pour la prescription en spécialité (c'est la même spécialité)
- mais elle est exprimée différemment de celle de la posologie prescrite pour la prescription en DC
  - prescrite : 1g de CD paracétamol
  - délivrée: 1 unité (de présentation) de la spécialité *EFFERALGAN 1 000 mg, cpr*

## La dispensation nominative à délivrance reglobalisée

C'est la délivrance en un temps de la dispensation d'un ensemble de prescriptions.

Elle est représentée par une ressource *MedicationDispense* cumulant les ressources *MedicationDispense* de chacune des prescriptions retenues par les paramètres de dispensation (par ex: tous les patients de telle UF pour les 2 prochains jours).
Exemple:

- soit 3 prescriptions

   1.[paracétamol 1 g à 7h, 12h et 18h per os, du 13/07 08:48 au 18/07 08:47 (5j)](Instances-14654.html)
   1.[paracétamol 500 mg à 7h et 18 per os, du 14/07 09:07 au 17/07 09:06 (3j)](Instances-14659.html)
   1.[EFFERALGAN 1000 mg, cpr à 7h, 12h et 18h per os, du 15/07 11:02 au 25/07 11:01 (10j)](Instances-14660.html)

- dispensation du 16/07 pour 2 jours (ie. couvrant les 16 et 17 /07), sachant que la spécialité délivrée est DOLIPRANE 500 mg, gélule

  - 3 dispensations nominatives, de DOLIPRANE 500 mg gélule, une par prescription courante

    1.[6 gélules](Instances-14661.html)
    1.[2 gélules](Instances-14662.html)
    1.[6 gélules](Instances-14663.html)

        - les posologies (==**dosageInstruction**==) sont ré-exprimées en nombre d'unités du médicament délivré, traduisant l'incidence de cette délivrance reglobalisée sur chacune des dispensations nominatives

  - 1 délivrance reglobalisée, cumulant les 3 dispensations nominatives

        - [14 gélules](Instances-14664.html)
        - l'usage de l'extension standard [event-basedOn](https://hl7.org/fhir/R4/extension-event-basedon.html) référence les dispensations nominatives à l'origine de la délivrance reglobalisée
        - une ressource **Group** de ==**type**== **person** est constituée pour référencer les patients ==**subject**== de la délivrance reglobalisée
        - il n'y a pas de posologie globale (pas de ==**dosageInstruction**==) pour cette délivrance reglobalisée.

## Limites

L'usage de l'extension standard *event-basedOn* est discutable: elle ne s'applique qu'à un élément *Condition*

''' json
  "context" : [{
    "type" : "element",
    "expression" : "Condition"
  }],
  '''

Une autre option est de référencer les dispensations nominatives dans l'élément répétable ==**supportingInformation**==. Cette solution est nativement conforme au schéma de la ressource *MedicationDispense*. [Voir cette alternative](Instances-14665.html).

Une ressource *MedicationDispense* globale comme agrégateur de *MedicationDispense* individualisées est discutable : une ressource *SupplyDelivery* ne serait-elle pas plus appropriée ?

Le problème est qu'il n'y a **pas de moyen de relier cette ressource *SupplyDelivery* à la collection de ressources *MedicationRequest*** qu'elle honore : son élément ==**basedOn**== est contraint de référencer une ressource *SupplyRequest*. Par contre la période couverte par la délivrance peut être décrite dans l'élément ==**occurence\[x\]:occurrencePeriod**==.

Notons qu'en pratique intrahospitalière, ==**daysSupply**== gagnerait à bénéficier d'un alternative ==**periodSupply**== pour pouvoir mentionner plus précisément quelle est la période couverte par cette occurence de délivrance dans le cas d'une délivrance fractionnée.
