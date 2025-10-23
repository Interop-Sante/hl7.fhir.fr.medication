# La prescription - Cas d'usage - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* **La prescription - Cas d'usage**

## La prescription - Cas d'usage

### Cas d’usage

#### La ligne de prescription initale

En situation réelle, n’émettre que des lignes de prescription initiales est rarement suffisant. Néanmoins, c’est la base qui permet d’explorer la complexité de la prescription selon deux axes, le médicament prescrit et la posologie.

La complexité du **médicament prescrit**

* Une spécialité 
* monosubstance dosée en quantité sous forme comprimé
* bisubstance dosée en quantité sous forme comprimé
* monosubstance dosée en concentration et prescrite en dose-kg
* monosubstance dosée en concentration et prescrite en application
* monosubstance patch dosée en quantité sur durée du patch
* monosubstance patch dosée en quantité horaire
* trisubstance en perfusion prête à l’emploi
 
* En DC 
* on retrouve le pendant des prescriptions en spécialité
* mais en ne spécifiant que les contraintes du prescripteur 
* la DC
* dans certains cas, la forme, le dosage
 
 
* Extemporané 
* Ce sont des médicaments fabriqués à la demande 
* par assemblage de médicaments simples
* spécifiés soit en spécialité soit en DC
 
* Les cas d’usage sont les perfusions ou les seringues électriques 
* avec un ou plusieurs médicaments
* dilués dans un soluté.
 
 
* Préparations magistrales et préparations officinales 
* Elles sont définies dans le Code de la santé publique 
* préparation magistrale : « tout médicament préparé au vu de la prescription destinée à un patient déterminé… » ;
* préparation officinale : « tout médicament préparé en pharmacie, inscrit à la pharmacopée ou au formulaire national… ».
 
* Dans le contexte de ce guide, elles sont modélisées comme des prescriptions Extemporanées dont les ingrédients sont à indiquer dans les ressources `Medication` les représentant
 

**La complexité de la posologie**:

* 4 axes de complexité de la posologie 
* la fréquence
* l’horaire
* la durée d’administration
* la dose
 
* Un premier niveau de complexité est adressé par les cas d’usage : 
* fréquence : journaliére ou tous les 3 j
* horaires : fixes
* durée d’administration : négligeable (assimilée à nulle) ou déterminée
* dose : exprimée en nombre d’unités de médicament prescrit (comprimé, dose-kg , application, patch, flacon) ou quantité de principe actif (mg, g)
 

#### Les différentes variations de la ligne de prescription initiale

On entend par variation de la ligne prescription toute évolution de celle-ci **prescrite** par le médecin.

Il s’agit donc d’une prescription qui succède à la prescription ayant créé la ligne de prescription initiale et qui en reprend le contenu en modifiant certains paramètres à l’exception de la composition du médicament prescrit.

