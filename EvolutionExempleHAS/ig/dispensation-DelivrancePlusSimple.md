# La dispensation - La délivrance la plus simple - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* **La dispensation - La délivrance la plus simple**

## La dispensation - La délivrance la plus simple

> **Attention !**la partie dispensation est en draft et n'a pas été éprouvé, un groupe de travail dédié doit être lancé afin de faire évoluer le besoin.

### La délivrance la plus simple, de la prescription la plus simple

La **prescription la plus simple**

* en spécialité: [EFFERALGAN 1 000 mg, cpr, 1 à 7h, 12h et 18h per os, pendant 5j](MedicationRequest-InLine-Presc-EFFERALGAN.md)
* en DC: [paracétamol, 1 g à 7h, 12h et 18h per os, pendant 5j](MedicationRequest-InLine-presc-Paracetamol1.md)

La **délivrance la plus simple**

* la spécialité prescrite, pour la prescription en spécialité
* la même spécialité, pour la prescription en DC 
* forme compatible avec la voie d’administration prescrite
* dosage égal à la dose prescrite
 
* en une fois, pour la durée prescrite

Voir la délivrance la plus simple de

* [EFFERALGAN 1 000 mg, cpr, 1 à 7h, 12h et 18h per os, pendant 5j](MedicationDispense-Disp-EFFERALGAN.md)
* [paracétamol, 1 g à 7h, 12h et 18h per os, pendant 5j](MedicationDispense-Disp-EFFERALGAN-presc-DC.md)

La **posologie administrable** (`dosageInstruction`)

* est identique à celle de la prescription en spécialité 
* pour la prescription en spécialité (c’est la même spécialité)
* pour la prescription en DC si la forme correspond à 1 unité de présentation
 
* mais elle est exprimée différemment de celle de la posologie prescrite pour la prescription en DC 
* prescrite : 1g de DC paracétamol
* délivrée: 1 unité (de présentation) de la spécialité **EFFERALGAN 1 000 mg, cpr**
 

