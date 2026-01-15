# La dispensation - La dispensation nominative à délivrance reglobalisée - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* **La dispensation - La dispensation nominative à délivrance reglobalisée**

## La dispensation - La dispensation nominative à délivrance reglobalisée

> **Attention !**la partie dispensation est en draft et n'a pas été éprouvé, un groupe de travail dédié doit être lancé afin de faire évoluer le besoin.

### La dispensation nominative à délivrance reglobalisée

C’est la délivrance en un temps de la dispensation d’un ensemble de prescriptions.

Elle est représentée par une ressource **MedicationDispense** cumulant les ressources **MedicationDispense** de chacune des prescriptions retenues par les paramètres de dispensation (par ex: tous les patients de telle UF pour les 2 prochains jours). Exemple:

* soit 3 prescriptions
* dispensation du 16/07 pour 2 jours (ie. couvrant les 16 et 17 /07), sachant que la spécialité délivrée est DOLIPRANE 500 mg, gélule

#### Limites

L’usage de l’extension standard **event-basedOn** est discutable: elle ne s’applique qu’à un élément **Condition**

```
"context": [
  {
    "type": "element",
    "expression": "Condition"
  }
]

```

Une autre option est de référencer les dispensations nominatives dans l’élément répétable `supportingInformation`. Cette solution est nativement conforme au schéma de la ressource **MedicationDispense**. [Voir cette alternative](MedicationDispense-Disp-group01-2.md).

Une ressource **MedicationDispense** globale comme agrégateur de **MedicationDispense** individualisées est discutable : une ressource **SupplyDelivery** ne serait-elle pas plus appropriée ?

Le problème est qu’il n’y a **pas de moyen de relier cette ressource**SupplyDelivery**à la collection de ressources**MedicationRequest**** qu’elle honore : son élément `basedOn` est contraint de référencer une ressource **SupplyRequest**. Par contre la période couverte par la délivrance peut être décrite dans l’élément `occurence[x]:occurrencePeriod`.

Notons qu’en pratique intrahospitalière, `daysSupply` gagnerait à bénéficier d’une alternative `periodSupply` pour pouvoir mentionner plus précisément quelle est la période couverte par cette occurence de délivrance dans le cas d’une délivrance fractionnée.

