# La dispensation nominative à délivrance reglobalisée

C'est la délivrance en un temps de la dispensation d'un ensemble de prescriptions.

Elle est représentée par une ressource *MedicationDispense* cumulant les ressources *MedicationDispense* de chacune des prescriptions retenues par les paramètres de dispensation (par ex: tous les patients de telle UF pour les 2 prochains jours).
Exemple:

- soit 3 prescriptions

    1. [paracétamol 1 g à 7h, 12h et 18h per os, du 13/07 08:48 au 18/07 08:47 (5j)](MedicationRequest-14654.html)
    1. [paracétamol 500 mg à 7h et 18 per os, du 14/07 09:07 au 17/07 09:06 (3j)](MedicationRequest-14659.html)
    1. [EFFERALGAN 1000 mg, cpr à 7h, 12h et 18h per os, du 15/07 11:02 au 25/07 11:01 (10j)](MedicationRequest-14660.html)

- dispensation du 16/07 pour 2 jours (ie. couvrant les 16 et 17 /07), sachant que la spécialité délivrée est DOLIPRANE 500 mg, gélule

  - 3 dispensations nominatives, de DOLIPRANE 500 mg gélule, une par prescription courante

      1. [6 gélules](MedicationDispense-14661.html)
      1. [2 gélules](MedicationDispense-14662.html)
      1. [6 gélules](MedicationDispense-14663.html)

       - les posologies `dosageInstruction` sont ré-exprimées en nombre d'unités du médicament délivré, traduisant l'incidence de cette délivrance reglobalisée sur chacune des dispensations nominatives

  - 1 délivrance reglobalisée, cumulant les 3 dispensations nominatives

      - [14 gélules](MedicationDispense-14664.html)
      - l'usage de l'extension standard [event-basedOn](https://hl7.org/fhir/R4/extension-event-basedon.html) référence les dispensations nominatives à l'origine de la délivrance reglobalisée
      - une ressource **Group** de `type` **person** est constituée pour référencer les patients `subject` de la délivrance reglobalisée
      - il n'y a pas de posologie globale (pas de `dosageInstruction`) pour cette délivrance reglobalisée.

## Limites

L'usage de l'extension standard *event-basedOn* est discutable: elle ne s'applique qu'à un élément *Condition*

```json
"context": [
  {
    "type": "element",
    "expression": "Condition"
  }
]
```

Une autre option est de référencer les dispensations nominatives dans l'élément répétable `supportingInformation`. Cette solution est nativement conforme au schéma de la ressource *MedicationDispense*. [Voir cette alternative](MedicationDispense-14665.html).

Une ressource *MedicationDispense* globale comme agrégateur de *MedicationDispense* individualisées est discutable : une ressource *SupplyDelivery* ne serait-elle pas plus appropriée ?

Le problème est qu'il n'y a **pas de moyen de relier cette ressource *SupplyDelivery* à la collection de ressources *MedicationRequest*** qu'elle honore : son élément `basedOn` est contraint de référencer une ressource *SupplyRequest*. Par contre la période couverte par la délivrance peut être décrite dans l'élément `occurence[x]:occurrencePeriod`.

Notons qu'en pratique intrahospitalière, `daysSupply` gagnerait à bénéficier d'une alternative `periodSupply` pour pouvoir mentionner plus précisément quelle est la période couverte par cette occurence de délivrance dans le cas d'une délivrance fractionnée.
