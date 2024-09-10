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
