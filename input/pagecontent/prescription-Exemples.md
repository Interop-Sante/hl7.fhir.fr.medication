# Exemples

Pour des raisons de lisibilité, les exemples présentés en FHIR sont considérés comme le résultat d'une recherche de prescription par identifiant (i.e. élément `groupIndentifier`) sous forme de *Bundle* de type `searchset`.
Ce formalisme n'est pas obligatoire, la manière dont les ressources FHIR constituant une prescription sont mises à disposition dépends du serveur FHIR (ex. operation spécifique pour la recherche de prescription par identifiant, mise en oeuvre de `_include` et de `_revInclude`)

## Exemples généraux

### La ligne de prescription initiale, complexité du médicament prescrit

#### Médicament simple en spécialité

- [EFFERALGAN 1 000 mg, cpr, 1 à 7h, 12h et 18h per os, pendant 5j](MedicationRequest-14624.html)
- [CODOLIPRANE 500 mg/30 mg, cpr, 1 à 7h et 18h per os, pendant 5j](MedicationRequest-14625.html)
- [DOLIPRANE 2.4% ss sucre, 20 dose-kg à 7h et 18h per os, pendant 5j](MedicationRequest-14626.html)
- [DIPROSONE 0.05%, 1 application cutanée à 8h, pendant 5j](MedicationRequest-14627.html)
- [NICOREETESKIN 15 mg/16h, patch, 1 à 7h, pendant 2 semaines](MedicationRequest-14628.html)
- [MATRIFEN 75 ug/h, patch, 1 à 7h, toutes les 72h, pendant 8j](MedicationRequest-14629.html)
- [BIONOLYTE G5, sol pr perf,poche 500 mL, 1 à 10h et 22h sur 12h, pendant 5j](Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h.html)

#### Médicament simple en DC

- [paracétamol, 1 g à 7h, 12h et 18h per os, pendant 5j](MedicationRequest-14618.html)
- [bêtaméthasone 0.05%, 1 application cutanée à 8h, pendant 5j](Presc-Betamethasone-ApplCut.html)
- [nicotine 15 mg/16h, patch, 1 à 7h, pendant 2 semaines](MedicationRequest-14621.html)
- [fentanyl 75 ug/h, patch 72h, 1 à 7h, tous les 3j, pendant 8j](MedicationRequest-14622.html)

#### Médicament composé

- [paracétamol+codéine 500 mg+30 mg, 1 à 7h et 18h per os, pendant 5j](MedicationRequest-14619.html)
- [Perfusion Glucose 5% 500 mL avec Sodium chlorure 2g et Potassium chlorure 1g, à 10h et 22h sur 12h, pendant 5j](MedicationRequest-14637.html)
- [Perfusion Glucose 5% 1L avec Sodium chlorure 3g et Potassium chlorure 2g, à 10h et 22h sur 12h, pendant 5j](MedicationRequest-14638.html)
- marquer l'un des médicaments composant comme étant le soluté du médicament composé: [céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](MedicationRequest-14650.html) Voir [Perfusions et seringues électriques](prescription-Exemples.html#perfusion-et-seringues-électriques), § concacré à l'extension *IsVehicle*
- [dobutamine 200 mg dans soluté=G5 qsp 40 mL, 400 µg/min pendant 1j](MedicationRequest-14651.html)


#### Médicament virtuel

- [glucose 5%+sodium chlorure 2g+potassium chlorure 1g x 500mL, 1 à 10h et 22h sur 12h, pendant 5j](MedicationRequest-14631.html)
  - Note : Il s'agit de la prescription d'une perfusion préfabriquée, prête à l'emploi, d'un médicament associant deux électrolytes à du glucose 5%. C'est une association de substances. À la différence du médicament composé qui est un assemblage extemporané de médicaments simples.

### La prescription initiale, complexité de la posologie

Un premier niveau de complexité est adressé par les cas d'usage précédents.
Les niveaux de complexité supplémentaires adressent

- les doses rationnelles
  - [BISOPROLOL 7.5 mg SANDOZ, 1/3cpr à 7h et 2/3 à 18h per os, pendant 1 semaine](Presc-BISOPROLOL-SANDOZ-DosesRationnelles.html)
  - Dans FHIR, les nombres rationnels sont traduits en type decimal, avec des règles concernant la gestion de la *précision*
  - En pratique, pour l'expression de la dose, les nombres rationnels impliqués se limitent à 1/4, 1/3, 1/2, 2/3 et 3/4
  - Ce guide recommande de représenter les rationnels à la 6ème décimal. Ainsi
    - 1/4 : 0.25
    - 1/3 : 0.333333
    - 1/2 : 0.5
    - 2/3 : 0.666667
    - 3/4 : 0.75
- des doses différentes entre horaires
  - [CLARADOL 500 mg, 2 cpr à 7h et 1 cpr à 18h per os, pendant 5j](MedicationRequest-14641.html)
  - [paracétamol, 1 g à 7h et 500 mg à 18h per os, pendant 5j](MedicationRequest-14642.html)
- les fréquences inférieures à la journée
  - [CLARADOL 500 mg, 1 cpr toutes les 6h per os, pendant 5j](MedicationRequest-14643.html)
  - [paracétamol, 500 mg toutes les 6 h per os, pendant 5j](MedicationRequest-14644.html)
- les fréquences calendaires
  - [CLARADOL 500 mg, 1 cpr à 18h tous les mardis et vendredis, per os, pendant 3 mois](MedicationRequest-14645.html)
  - Le type complexe *Timing* ne permet pas le codage des situations suivantes
    - *tous les 05 du mois*
    - *tous les derniers vendredis du mois*
  - Le type complexe *Timing* est normatif, il est en pratique impossible de le faire évoluer.
    - Il est nécessaire pour l'instant de "calculer" les dates correspondantes à la fréquence calendaire et de les indiquer dans autant de dosageInstruction.
    - Note: l'extension standard [dayOfMonth](https://hl7.org/fhir/R4/extension-timing-dayofmonth.html) existe en FHIR R4 (maturité 1), mais elle n'est pas reprise en FHIR R5. Son utilisation n'est donc pas conseillée.
- les prescriptions conditionnelles simples
  - [CLARADOL 500 mg, 1 cpr si douleur, 2 cpr max par prise, 6 cpr max par 24h, 4h délais min entre deux prises, pendant 5j](MedicationRequest-14639.html)
  - [paracétamol, 500 mg per os si douleur, 1 g max par prise, 3 g max par 24h, 4h délais min entre deux prises, pendant 5j](MedicationRequest-14640.html)
- les doses progessives ou dégressives par palier
  - [méthylpredinosolone, 6 mg pendant 2j, puis 4 mg pendant 2j, puis 2 mg pendant 2j](MedicationRequest-14647.html)
- l'expression de la quantité d'une dose se référant à l'un des médicaments composant du médicament composé prescrit
  - [céfotaxine dans G5 100 mL, 4g (céfotaxine) en 20 min toutes les 6h pendant 3j](MedicationRequest-14648.html)
  - Voir [Perfusions et seringues électriques](prescription-Exemples.html#perfusion-et-seringues-électriques) § concacré à l'extension *Basis of Dose Component*.
- l'expression d'une dose réelle pertinente à partir d'une dose théorique fonction de paramètres patient
  - [capécitabine 1800 mg (1000 mg/m²), 7h et 18h per os, pendant 14j](MedicationRequest-14652.html)

### Les modifcations de la ligne prescription initiale

Il n'y a pas d'exemple, pour l'instant.

## Médicament prescrit et dose(s)

### Ex: LASILIX 20 mg, sol inj amp 2 mL, XX à 7h et 18h IV, pendant 5j

- **unité de médicament prescrit** ➟ `MedicationRequest.medication`
  - `LASILIX` → marque ➟ `code.coding.dispaly` dans le libellé correspondant au code UCD provenant du [Référentiel Unique d'Interopérabilité du Médicament - RUIM](https://smt.esante.gouv.fr/terminologie-ref_interop_med/)
  - `furosémide` → principe actif ➟ `.ingredient().item\[x\]`
  - `20 mg` → dosage ➟ optionnellement dans `.ingredient().strength`
  - `sol inj` → forme ➟ `.form`
  - `amp` → présentation ➟ code EDQM dans le dénominateur du ratio du dosage et/ou du volume
  - `2 mL` → volume ➟ `.amount`
- dose prescrite → `MedicationRequest.dosageInstruction`
  - `XX` → quantité ➟ `.doseAndRate`
  - `à 7h et 18h` → horaire de prise ➟ `.timing.repeat.timeOfDay()`
  - `per os` → voie d'administration ➟ `.route`
  - `pendant 5j` → début (maintenant) et fin (début + 5j) ➟ `.timing.boundsPeriod`
- La quantité `XX` de la dose prescrite peut s'exprimer de 4 façons différentes, par exemple :
  - `1 Ampoule`(code EDQM `15002000`)
  - `1` (unité \[de présentation de l'unité de médicament prescrit\] = ampoule contenant 20 mg de furosémide)
  - `20 mg` (de principe actif = furosémide)
  - `2 mL` (de produit = solution injectable contenant 20 mg de furosémide)

Ces 4 expressions permettent de déterminer la quantité de(s) principe(s) actif(s) à partir de caratéristiques du médicament prescrit. Cependant, pour des raisons de simplicité de dispensation et d'administration, dans le cas des prescriptions en spécialité pour lesquelles la présentation est définie par le code UCD utilisé, la première expression en unité de présentation est préférée si possible.

### Ex: FUROSEMIDE XX à 7h et 18h IV, pendant 5j

- **unité de médicament prescrit** ➟ `MedicationRequest.medication`
  - `FUROSEMIDE` → médicament en DC ➟ `code.coding.dispaly` dans le libellé correspondant au code de substance (code SMS ou code technique ANSM) provenant du [Référentiel Unique d'Interopérabilité du Médicament - RUIM](https://smt.esante.gouv.fr/terminologie-ref_interop_med/)
  - `furosémide` → principe actif ➟ `.ingredient().item\[x\]` (optionnel dans le cas d'un médicament simple préscrit en DC dans la mesure où le le principe actif est identique au médicament)
  - les autres caractéristiques ne sont pas contraintes par le prescripteur
- **dose prescrite** → `MedicationRequest.dosageInstruction`
  - caractéristiques identiques à celles de l'exemple de ligne de prescription en spécialité
- La **quantité** `XX` de la dose prescrite ne peut plus s'exprimer que d'1 façon :
  - `20 mg` (de principe actif = furosémide)
- Les 3 autres ne permettent pas de déterminer la quantité de(s) prinicipe(s) actif(s)
  - `1 [unité de présentation]`(unité de présentation non définie dans `medication`ni dans le RIUM)
  - `1` (unité [de présentation de l'unité de médicament prescrit] = furosémide en quantité non définie)
  - `2 mL` (de produit = un produit qui contient du furosémide en concentration non définie)

### Contraintes

entre

- propriétés de l’**unité de médicament prescrit**
- expression de la **quantité de la dose prescrite**

#### Objectif

- La quantité de principes actifs de la dose doit être déterminée,
- Sauf pour les unités de prescription à volume indéterminé (ex : application), la concentration de principes actifs de la dose doit être déterminée.

#### Contrainte sur le Médicament prescrit (`MedicationRequest.medication`)

Le dosage (`.ingredient[].strength`) est exigé quand le médicament prescrit est un médicament composé:

- une association de principes actifs (ex : paracétamol + codéine)
- un médicament extemporané (ex : perfusion composée de plusieurs médicaments)

#### Contraintes sur l’Unité de la dose prescrite (`MedicationRequest.dosageInstruction.doseAndRate`)

L'unité est pertinente (donc autorisée), en fonction de son type,

- **unité de quantité** de principe actif, si le médicament prescrit n'est composé que d'**un seul principe actif** ;
- **unité de volume** du médicament prescrit, si le médicament prescrit a un **dosage en concentration** défini ;
- **unité de dénombrement** du médicament prescrit, si le médicament prescrit a un **dosage en quantité** défini.

On inclut dans définie, la possibilité de calcul à partir des propriétés connues.
Par exemple, quantité connue 20 mg et volume connu 2 ml, implique que la concentration est définie, 10 mg/mL et que l'unité mL pour exprimer la quantité de la dose, par exemple 3 mL, est pertinente parce qu'elle détermine sa quantité de principe actif, 30 mg.

## Durée d'administration

Quand elle n'est pas négligeable, sa valeur exprimée **DOIT** figurer au dénominateur de la dose prescrite.

Cf. [Requirements](https://hl7.org/fhir/R4/dosage-definitions.html#Dosage.doseAndRate.rate_x_) de l'élément `MedicationRequest.dosageInstruction.doseAndRate.rateRatio`

Si une durée d'administration n'est pas spécifiée par le prescripteur, cela siginifie qu'elle est négilgeable. Par exemple pour l'administration d'un comprimé ou l'injection direct d'une solution.

### Cas particuliers

#### IVL (intraveineuse lente) / IVD (intraveineuse directe)

Intraveineuse lente et intraveineuse directe ne sont pas des voies d'administration, quand bien même ces concepts s'y invitent régulièrement dans les listes locales des voies d'administration. Ce sont des méthodes, dont la principale différence porte sur la durée d'administration, qui n'est dans ce cas pas quantifée mais simplement qualifiée.

Si le prescripteur souhaite ne pas donner une durée d'administration explicite quantifiée, cette distinction qualitative DOIT être portée dans l'élément `method` de `dosageInstruction`de la ressource *MedicationRequest*. La voie d'administration, élément `route`, prend dans les deux cas la valeur voie intraveineuse.

Ni l'EDQM, ni SNOMED CT ne fournissent de codes pour nuancer la méthode d'administration *injection*. La distinction qualitative est donc à exprimer dans l'élément `.text`de `method`

#### Injection continue

Les injections continues sans mention de durée d'administration parce qu'elle est indéterminée au moment de la prescription sans pour autant être négligeable, se traduisent par une expression de la dose en débit, sans mention de quantité, ni de durée d'administration.

Elles se distinguent des expressions de doses à durée d'administration négligeable par l'absence de quantité.

exemple

```json
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
```

ou

```json
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
```

**Note**:
Il y deux façons d'exprimer un débit dans une dose FHIR :

- une unité UCUM de temps (ex: `min`) au dénominateur (`deniminator.code`) dans un type de donnée *ratio* (`rateRatio`)
- une unité UCUM de débit (ex: `ug/min`) dans un type de donnée *quantity* (`rateQuantity`)

La seconde implique une **interprétation du code UCUM par le logiciel** pour avoir connaissance de la notion de débit (savoir reconnaitre une unité de débit UCUM).

## Perfusions et seringues électriques

Elles présentent la particularité d'avoir un médicament prescrit composé de plusieurs médicaments simples, exprimés en spécialité et/ou en DC.

De ce fait, le rapport entre les caractéristiques du médicament prescrit composé et l'expression de la quantité des doses prescrites présente quelques particularités.

### BoDC (Basis of Dose Component)

Dans un médicament composé, permet d'exprimer à quel médicament composant, quelle ressource *Medication*, se réferre l'expression de la dose.

Ex: Permet de rapporter l'expression de la quantié 4g de la dose, au médicament céfotaxine du médicament composé céfotaxine dans 100 mL de glucose 5%.

Cette information est portée par l'extension [*FrBasisOfDoseComponent*](StructureDefinition-FrBasisOfDoseComponent.html) de l'élément `doseAndRate` du type complex *Dosage* qui s'applique à l'élément `dosageInstruction`* de la ressource *MedicationRequest*.

Voir exemple [céfotaxine dans G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](MedicationRequest-14648.html)

Note PN13:

- Dans PN13, c'est le *COMPOSANT PRESCRIT* qui est marqué comme *est_Référent_poso*, et non pas les *ELEMENT DE POSOLOGIE* qui doivent tenir compte de ce marquage d'un *COMPOSANT PRESCRIT*.
- Dans FHIR, c'est l'élément *dosageInstruction* qui est marqué par la référence à la ressources *Medication* sur laquelle se fonde l'expression de la quantité du dosage.

### IsVehicle

Dans un médicament composé, permet d'exprimer quel composant, quelle ressource *Medication*, est le soluté.

Ex: Permet de marquer le glucose 5% comme étant le soluté dans le médicament composé céfotaxine dans 100 mL de glucose 5%.

Cette information est portée par l'extension [*FrIsVehicle*](StructureDefinition-FrIsVehicle.html).

Cette extension est appliquée à l'élément `ingredient` de la ressource *Medication* composée.

Voir l'exemple [céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](MedicationRequest-14650.html)

Note PN13:

- Dans PN13, le marqueur *est_véhicule* est porté par le *COMPOSANT PRESCRIT*.
- Dans PN13, l'alernative proposée n'est pas possible parce que la collection de *COMPOSANT PRESCRIT* est directement portée par l'*ELEMENT DE PRESCRIPTION*, l'équivalent de la ressource *MedicationRequest*. Il n'y a pas d'élément XML container intermédiaire équivalent de la ressource *Medication* composé (profil *FrMedicationCompound*).

### Q.S.P. (quantité suffisante pour ...)

Cette expression est utilisée dans la prescription des injectables en seringue électrique pour déclarer le volume de soluté composant le médicament prescrit en *quantité suffisante pour* atteindre le volume du médicament composé, c'est-à-dire le volume final de la seringue.

L'application de la règle suivante répond à ce cas d'usage :

- repérer l'*ingredient* représentant le médicament composant qui joue le rôle de soluté avec l'extension *IsVehicule* ;
- ne pas mettre de volume à ce médicament composant jouant le rôle de soluté (absence d'élément amount dans la ressource *Medication* représentant le médicament soluté) ;
- mettre le volume cible dans l'élément amount de la ressource *Medication* représentant le médicament composé.

Cette règle impose l'utilisation de l'extension *IsVehicule*.
Voir exemple [dobutamine 200 mg dans soluté=G5 qsp 40 mL, 400 µg/min pendant 1j](MedicationRequest-14651.html)

En [R5](https://hl7.org/fhir/medication.html), la ressource *Medication* voit l'élément `ingredient.strength` passer de type exclusivement *Ratio* en type alternatif *Ratio*, *Quantity* ou *CodeableConcept* avec jeu de valeurs préferré contenant la valeur qs (quantité suffisante pour).

- En mettant dans
  - `.totalVolume` : le volume cible de la seringue,
  - `.ingredient\[soluté\].strengthCodeableConcept` : le code qs
  il est prescrit explicitement que le soluté est en Q.S.P. le volume cible de la seringue.

**Note**:
En R5 l'élément amount est renommé **totalVolume** pour lever toute ambiguité avec les volumes pouvant figurer dans les `ingredient.strength\[x\]`.

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

Elles s'expriment dans la ressource *Medication* référencée par l'élément medication qui décrit l'unité de médicament prescrit dans la ressource *MedicationRequest*.

### Propriété de la dose

La durée d'administration du patch est un choix du prescipteur.

Il **DOIT** être exprimé en tant que tel au dénominateur de la dose prescrite, même si elle est identique à la durée maximale garantie par le dispositif intégré.

Le guide d'implémentation n'assigne à la durée d'administration, aucune valeur par défaut qui serait particulière aux patches.

## Dose calculée / dose prescrite

Il arrive que la dose prescrite découle d'un dose de référence formulée en quantité de principe actif par unité de poids ou de surface corporelle. La dose effectivement prescrite est arrondie à une valeur réalisable.

Ex: capécitabime 1000 mg/m².

- Pour un patient de 1,85 m² (1,75 m et 70 kg), la dose calculée est 1850 mg.
- Les formes orales sèches disponibles ont un dosage de 150 mg ou 500 mg.
- Le médecin prescrit une dose effective de 1800 mg.

Ces deux valeurs de la dose prescrite sont transmises dans deux éléments doseAndRate distingués par leur type

```json
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
```

Voir exemple [capécitabine 1800 mg (1000 mg/m²), 7h et 18h per os, pendant 14j](MedicationRequest-14652.html)

**Note**:
Il est tout à fait possible de prescrire plus simplement capécitabine 1000 mg/m², accompagnée de la `surface corporelle` (1,85 m²), voire seulement de la `taille` (1,75 m) et du `poids` (70 kg) du patient dans des ressources *Observation* référencées par `MedicationRequest.supportingInfoormation`.
Mais c'est un autre cas d'usage, qui, quand bien même il déboucherait sur la même délivrance, *capécitabine 1800 mg*, laisserait au pharmacien l'arbitrage de l'arrondi par rapport à la dose prescrite. C'est un cas d'usage différent parce que l'acteur et le temps où se fait l'arrondi ne sont pas les mêmes.
