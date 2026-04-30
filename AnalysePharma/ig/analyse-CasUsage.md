# L'analyse pharmaceutique - Cas d'usage - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* **L'analyse pharmaceutique - Cas d'usage**

## L'analyse pharmaceutique - Cas d'usage

>  **Attention !** la partie analyse pharmaceutique est en cours d'élaboration et n'a pas été éprouvée. 

## Cas d’usage

### Validation pharmaceutique

Un professionnel effectue une ananlyse pharmaceutique et valide une/des ligne(s) de prescription. Cette validation peut être:

* sans commentaire
* avec un/des commentaire(s)
* avec une/des proposition(s) de prescription complémentaire(s) pour amélioré la prise en charge du patient (ex. prescription complémentaire de laxatif dans le cas d’un traitement à la morphine)

### Intervention pharmaceutique

Un professionnel effectue une analyse pharmaceutique et réalise une intervention pharmaceutique sur une/des ligne(s) de prescription suite à la détection d’un problème. L’intervention pharmaceutique peut:

* être soumise seule avec un commentaire expliquant la raison de l’intervention (ex. demande de confirmation d’un dosage qui semble surprenant étant donné le contexte patient)
* être associée à une/des proposition(s) de modification/annulation de ligne de prescription (ex. un médicament prescrit n’est pas au livret, proposition de remplacer par un médicament au livret) et/ou une/des proposition(s) d’annulation de ligne de prescription.

### Prise en compte de l’intervention pharmaceutique

Le prescripteur de la / des ligne(s) de prescription ayant fait l’objet d’une intervention pharmaceutique ainsi que l’éventuelle(s) proposition(s) associée(s) puis décide:

* d’accepter l’intervention pharmaceutique
* de ne pas accepter l’intervention pharmaceutique

