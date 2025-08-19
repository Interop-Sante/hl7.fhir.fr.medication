### Exemples

Pour des raisons de lisibilité, les exemples présentés en FHIR sont considérés comme le résultat d'une recherche de prescription par identifiant (i.e. élément `groupIdentifier`) sous forme de *Bundle* de type `searchset`.
Ce formalisme n'est pas obligatoire, la manière dont les ressources FHIR constituant une prescription sont mises à disposition dépend du serveur FHIR (ex. operation spécifique pour la recherche de prescription par identifiant, mise en oeuvre de `_include` et de `_revInclude`)

Les travaux de la HAS sur la structuration de la posologie des prescriptions de médecine de ville (lien à venir lorsque ces travaux seront publiés) ont été intégrés aux exemples. Ils sont identifiées par le prefixe HAS et le suffixe entre parenthèses id_poso indiqué dans le document de la HAS.
Dans le cas où ils représentent des spécificités opur les prescriptions de médecine de ville (qui valent également pour les prescriptions hospitalières à exécution en ville), il sont précédés par la mention ***spécificité ville***

#### Exemples généraux

##### La ligne de prescription initiale, complexité du médicament prescrit

###### Médicament simple en spécialité

- [EFFERALGAN® 1 000 mg, cpr, 1 à 7h, 12h et 18h per os, pendant 5j](Bundle-Presc-EFFERALGAN.html)
- [CODOLIPRANE® 500 mg/30 mg, cpr, 1 à 7h et 18h per os, pendant 5j](Bundle-Presc-CODOLIPRANE-MedCodeableConcept.html)
- [DOLIPRANE® 2.4% ss sucre, 20 dose-kg à 7h et 18h per os, pendant 5j](Bundle-Presc-DOLIPRANE-20DoseParKG.html)
- [DIPROSONE® 0.05%, 1 application cutanée à 8h, pendant 5j](Bundle-Presc-DIPROSONE-AppCut.html)
- [NICOREETESKIN® 15 mg/16h, patch, 1 à 7h, pendant 2 semaines](Bundle-Presc-NICOREETESKIN-patch.html)
- [MATRIFEN® 75 ug/h, patch, 1 à 7h, toutes les 72h, pendant 8j](Bundle-Presc-MATRIFEN-patch-TL72h.html)
- [BIONOLYTE® G5, sol pr perf,poche 500 mL, 1 à 10h et 22h sur 12h, pendant 5j](Bundle-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h.html)
- [HAS - ACTISKENAN® 10 mg gélule : dix milligrammes par jour pendant sept jours (id_poso=5)](Bundle-HAS-05-2-Presc-ACTISKENAN.html)

###### Médicament simple en DC

- [paracétamol, 1 g à 7h, 12h et 18h per os, pendant 5j](Bundle-Presc-Paracetamol.html)
- [bêtaméthasone 0.05%, 1 application cutanée à 8h, pendant 5j](Bundle-Presc-Betamethasone-ApplCut.html)
- [nicotine 15 mg/16h, patch, 1 à 7h, pendant 2 semaines](Bundle-Presc-Nicotine-15mgPar16h.html)
- [fentanyl 75 ug/h, patch 72h, 1 à 7h, tous les 3j, pendant 8j](Bundle-Presc-Fentanyl-patch72h-TL3j.html)
- [HAS - pantoprazole 40 mg comprimé: 40 mg le soir en DC (id_poso=1)](Bundle-HAS-01-Presc-Pantoprazole-DC.html)

###### Médicament composé

- [paracétamol+codéine 500 mg+30 mg, 1 à 7h et 18h per os, pendant 5j](Bundle-Presc-ParacetamolCodeine-500mg30mg.html)
- [Perfusion Glucose 5% 500 mL avec Sodium chlorure 2g et Potassium chlorure 1g, à 10h et 22h sur 12h, pendant 5j](Bundle-Presc-PerfGl-NaCl-KCl-500ml.html)
- [Perfusion Glucose 5% 1L avec Sodium chlorure 3g et Potassium chlorure 2g, à 10h et 22h sur 12h, pendant 5j](Bundle-Presc-PerfGl-NaCl-KCl-1l.html)
- marquer l'un des médicaments composant comme étant le soluté du médicament composé: [céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.html) Voir [Perfusions et seringues électriques](prescription-Exemples.html#perfusion-et-seringues-électriques), § concacré à l'extension *IsVehicle*
- [dobutamine 200 mg dans soluté=G5 qsp 40 mL, 400 µg/min pendant 1j](Bundle-Presc-PerfDobutamine-Qsp40mL.html)

###### Médicament virtuel

- [HAS - pantoprazole 40 mg comprimé: 40 mg le soir en MV (id_poso=1)](Bundle-HAS-01-Presc-Pantoprazole-MV.html)
- [HAS - fluindione 20 mg comprimé : 0,5 comprimé par jour (id_poso=2)](Bundle-HAS-02-Presc-Fluindione.html)
- [HAS - Ropinirole comprimé 1mg : 1 comprimé à 7h, 12h 18h (id_poso=9)](Bundle-HAS-09-Presc-Ropinirole.html)
- [HAS - Préparation pour nébuliseur ultrasonique: 1 récipient unidose (soit 2 mL de budesonide  1mg/2mL) suspension pour inhalation par nébuliseur à compléter par de l’eau pour préparation injectable si nécessaire en fonction du modèle de nébuliseur. A administrer en 20 min à 8h, 14h, 18h, et 22h à partir du 16/03/2023 (id_poso=17)](Bundle-HAS-17-Presc-Budesonide.html)
- [HAS - Préparation pour nébuliseur ultrasonique: 1 récipient unidose (soit 2 mL de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur à compléter par de l’eau pour préparation injectable si nécessaire en fonction du modèle de nébuliseur. A administrer en 20 min à 8h, 14h, 18h, et 22h jusqu'au 16/03/2023 (id_poso=18)](Bundle-HAS-18-Presc-Budesonide-MV.html)
- [HAS - morphine sulfate LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h) pendant huit jours (id_poso=15)](Bundle-HAS-15-Presc-Morphine.html)
- [HAS - topiramate 15 mg gélule: 1 gélule par jour. Si difficulté à prendre la gélule, l'ouvrir et en administrer le contenu avec un peu de compote (id_poso=24)](Bundle-HAS-24-Topiramate.html)
- [glucose 5%+sodium chlorure 2g+potassium chlorure 1g x 500mL, 1 à 10h et 22h sur 12h, pendant 5j](Bundle-Presc-MV-PerfGl-NaCl-KCl.html)
  - Note : Il s'agit de la prescription d'une perfusion préfabriquée, prête à l'emploi, d'un médicament associant deux électrolytes à du glucose 5%. C'est une association de substances. À la différence du médicament composé qui est un assemblage extemporané de médicaments simples.

##### La prescription initiale, complexité de la posologie

Un premier niveau de complexité est adressé par les cas d'usage précédents.
Les niveaux de complexité supplémentaires adressent

- les doses rationnelles
  - [BISOPROLOL® 7.5 mg SANDOZ, 1/3cpr à 7h et 2/3 à 18h per os, pendant 1 semaine](Bundle-Presc-BISOPROLOL-SANDOZ-DosesRationnelles.html)
  - Dans FHIR, les nombres rationnels sont traduits en type decimal, avec des règles concernant la gestion de la *précision*
  - En pratique, pour l'expression de la dose, les nombres rationnels impliqués se limitent à 1/4, 1/3, 1/2, 2/3 et 3/4
  - Ce guide recommande de représenter les rationnels à la 6ème décimal. Ainsi
    - 1/4 : 0.25
    - 1/3 : 0.333333
    - 1/2 : 0.5
    - 2/3 : 0.666667
    - 3/4 : 0.75
  - ***spécificité ville*** les doses rationelles doivent pouvoir être exprimées en toutes lettres dans une partie textuelle (i.e. dans `MedicationRequest.dosageInstruction.additionalInstruction.text`)
    - [HAS - fluindione 20 mg comprimé quadrisécable : 3/4 cpr par jour (trois-quart de comprimé) (id_poso=5)](Bundle-HAS-05-1-Presc-Fluindione.html)
- les doses différentes entre horaires
  - [CLARADOL® 500 mg, 2 cpr à 7h et 1 cpr à 18h per os, pendant 5j](Bundle-Presc-CLARADOL-DoseDiffParHoraire.html)
  - [paracétamol, 1 g à 7h et 500 mg à 18h per os, pendant 5j](Bundle-Presc-Paracetamol-DoseEvolutive.html)
  - [HAS - hydrocortisone 10 mg comprimé: 20 mg à 8h et 10 mg à 12h (id_poso=20)](Bundle-HAS-20-Presc-Hydrocortisone.html)
- les moments de prise en fonction du rythme nycthéméral et/ou des activités de la vie quotidienne et/ou d'événements externes
  - [HAS - metformine 700 mg comprimé: 1 comprimé le matin et 1 comprimé soir, au cours ou à la fin des repas (id_poso=27)](Bundle-HAS-27-1-Metformine.html)
  - [HAS - rifampicine 300 mg en gélule 2 gélules le matin 30 minutes avant le petit-déjeuner (id_poso=27)](Bundle-HAS-27-2-Rifampicine.html)
  - Note: l'élément utilisé en FHIR (`when`) est associé à un vocabulaire limité et obligatoire. L'extension *FrAdditionalWhenValues* a été créée pour référencer les moments de prises les plus usuels qui ne sont pas dans le vocabulaire FHIR. Cependant, tous les moments de prise n'ont pas pu être listé. Dans le cas d'un moment de prise non présent dans le vocabulaire FHIR ni dans le vocabulaire associé à l'extension *FrAdditionalWhenValues*, le moment de prise est à exprimer en toutes lettres dans une partie textuelle (i.e. dans `MedicationRequest.dosageInstruction.additionalInstruction.text`)
    - [HAS - enoxaparine sodique 4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention. (id_poso=28)](Bundle-HAS-28-Presc-Enoxaparine)
- les arrêts de prise en fonction d'un événement
  - [HAS - enoxaparine sodique 6000 UI, solution injectable en seringue préremplie : 1 injection en SC par jour jusqu’à ce que l’INR soit dans la zone thérapeutique cible (id_poso=29)](Bundle-HAS-29-Presc-Enoxaparine.html)
- les fourchettes de doses
  - [HAS - DAFALGAN CODEINE®, comprimé un à deux comprimés toutes les 12 h pendant 10 jours, selon l’intensité de la douleur, avec un maximum à 2 comprimés par prise et de 4 comprimés par jour. STOP SI NAUSEES (id_poso=4)](Bundle-HAS-04-2-Presc-DAFALGANCODEINE.html)
  - [HAS - cetirizine 10 mg : 1 à 4 comprimés par jour selon les symptômes (urticaire) (id_poso=30)](Bundle-HAS-30-2-Presc-Cetirizine.html)
- les maximales autorisées par prise, par période et en durée
  - [HAS - CODOLIPRANE®: 1 comprimé si douleur, avec un maximum de 2 cp/prise, avec un maximum de 8 cp/jour, en respectant 4 heures minimales entre 2 prises (id_poso=14)](Bundle-HAS-14-1-Presc-CODOLIPRANE.html)
  - [HAS - bethamethasone 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter. Ne pas dépasser 2 applications par jour (id_poso=14)](Bundle-HAS-14-2-Presc-Betamethasone.html)
  - [HAS - racecadotril 100 mg gélule: 1 gélule 3 fois par jour au début de chaque repas. A poursuivre tant que la diarrhée persiste avec un maximum de 7 jours (id_poso=16)](Bundle-HAS-16-Presc-Racecadotril.html)
- les fourchettes de fréquences
  - [HAS - desloratadine 5 mg comprimé 1 comprimé « 1 à  2 fois par jour » en fonction de la gêne allergique (id_poso=13)](Bundle-HAS-13-Presc-Desloratadine.html)
- la fréquence minimale entre deux prises
  - [HAS - paracetamol 1000 mg comprimé: 1 comprimé,  3 prises par jour, espacés d’au moins 4 heures (id_poso=19)](Bundle-HAS-19-Presc-Paracetamol.html)
- les fréquences inférieures à la journée
  - [CLARADOL® 500 mg, 1 cpr toutes les 6h per os, pendant 5j](Bundle-Presc-CLARADOL-TL6h-MedCodeableConcept.html)
  - [paracétamol, 500 mg toutes les 6 h per os, pendant 5j](Bundle-Presc-Paracetamol-TL6h.html)
  - [HAS - paracetamol 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs (id_poso=4)](Bundle-HAS-04-1-Presc-Paracetamol.html)
  - [HAS - enoxoparine  4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie : 1 seringue, 1 fois toutes les 12 heures - voie sous-cutanée (id_poso=12)](Bundle-HAS-12-3-Presc-Enoxaparine.html)
- les fréquences calendaires
  - [CLARADOL® 500 mg, 1 cpr à 18h tous les mardis et vendredis, per os, pendant 3 mois](Bundle-Presc-CLARADOL-TLMardisVendredis.html)
  - [HAS - methotrexate 10 mg comprimé (sécable) : 2 comprimés, 1 fois par semaine, le mardi (id_poso=6)](Bundle-HAS-06-1-Presc-Methotrexate.html)
  - [HAS - methotrexate 10 mg comprimé (sécable) : 20 mg, 1 fois par semaine, le mardi (id_poso=6)](Bundle-HAS-06-2-Presc-Methotrexate.html)
  - [HAS - methotrexate 10 mg comprimé : 1 comprimé 1 fois par semaine, le mardi (id_poso=10)](Bundle-HAS-10-Presc-Methotrexate.html)
  - [HAS - methotrexate cp 10 mg :  20 mg, 1 fois par semaine, le mardi (id_poso=12)](Bundle-HAS-12-2-Presc-Methotrexate.html)
  - Le type complexe *Timing* ne permet pas le codage des situations suivantes
    - *tous les 05 du mois*
    - *tous les derniers vendredis du mois*
  - Le type complexe *Timing* est normatif, il est en pratique impossible de le faire évoluer.
    - Il est nécessaire pour l'instant de "calculer" les dates correspondantes à la fréquence calendaire et de les indiquer dans autant de dosageInstruction.
    - ***specificité ville*** dans le cas de contraintes calendaires ne pouvant pas être exprimées en FHIR, celles-ci doivent être indiquées en toutes lettres dans une partie textuelle (i.e. dans `MedicationRequest.dosageInstruction.additionalInstruction.text`)
      - [HAS - vitamine D 100 000 UI solution buvable : 1 ampoule, le premier jour de chaque mois (id_poso=11)](Bundle-HAS-11-1-Presc-VitamineD.html)
      - [HAS - EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique (id_poso=11)](Bundle-HAS-11-2-Presc-EVRA.html)
    - Note: l'extension standard [dayOfMonth](https://hl7.org/fhir/R4/extension-timing-dayofmonth.html) existe en FHIR R4 (maturité 1), mais elle n'est pas reprise en FHIR R5. Son utilisation n'est donc pas conseillée.
- les prescriptions conditionnelles simples
  - [CLARADOL® 500 mg, 1 cpr si douleur, 2 cpr max par prise, 6 cpr max par 24h, 4h délais min entre deux prises, pendant 5j](Bundle-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin.html)
  - [paracétamol, 500 mg per os si douleur, 1 g max par prise, 3 g max par 24h, 4h délais min entre deux prises, pendant 5j](Bundle-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin.html)
  - [HAS - paracetamol 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs (id_poso=4)](Bundle-HAS-04-1-Presc-Paracetamol.html)
  - [HAS - DAFALGAN CODEINE®, comprimé un à deux comprimés toutes les 12 h pendant 10 jours, selon l’intensité de la douleur, avec un maximum à 2 comprimés par prise et de 4 comprimés par jour. STOP SI NAUSEES (id_poso=4)](Bundle-HAS-04-2-Presc-DAFALGANCODEINE.html)
  - [HAS - paracetamol 500 mg gélule : Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)(id_poso=7)](Bundle-HAS-07-Presc-Paracetamol.html)
  - [HAS - diazepam 10 mg comprimé bisécable (VALIUM®): 1 comprimé toutes les 6 heures - si agitation (id_poso=26)](Bundle-HAS-26-Diazepam.html)
- les doses progessives ou dégressives par palier
  - [méthylpredinosolone, 6 mg pendant 2j, puis 4 mg pendant 2j, puis 2 mg pendant 2j](Bundle-Presc-Methylpredinosolone-DosesEvolutives.html)
  - [HAS - prednisolone 20 mg comprimé (sécable) : 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution (id_poso=21)](Bundle-HAS-21-Presc-Prednisolone.html)
  - [HAS - prednisolone 20 mg comprimé (sécable) : 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution (id_poso=22)](Bundle-HAS-22-Presc-Prednisolone.html)
- les alternances de doses
  - [HAS - fluindione 20 mg comprimé quadrisécable: 0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours, à répéter sur le mois (id_poso=23)](Bundle-HAS-23-1-Presc-Fluindione)
  - [HAS - amiodarone 200 mg comprimé: 1 comprimé pendant 5 jours (du lundi au vendredi), et puis arrêt 2 jours (samedi, dimanche). Recommencer le cycle de 7 jours, à répéter sur le mois (id_poso=23)](Bundle-HAS-23-2-Presc-Amiodarone)
- l'expression de la quantité d'une dose se référant à l'un des médicaments composant du médicament composé prescrit
  - [céfotaxine dans G5 100 mL, 4g (céfotaxine) en 20 min toutes les 6h pendant 4j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt4j.html)
  - Voir [Perfusions et seringues électriques](prescription-Exemples.html#perfusion-et-seringues-électriques) § concacré à l'extension *Basis of Dose Component*.
- l'expression d'une dose réelle pertinente à partir d'une dose théorique fonction de paramètres patient
  - [capécitabine 1800 mg (1000 mg/m²), 7h et 18h per os, pendant 14j](Bundle-Presc-Capecitabine-Dose-Calculee.html)
  - ***spécifité ville*** La dose réélle pertinente (valeur aboslue) doit être la seule indiquée dans la partie structurée de la posologie. La dose théorique en fonction de paramètres patient (valeur relative) peut être exprimée dans une partie textuelle (i.e. dans `MedicationRequest.dosageInstruction.additionalInstruction.text`)
    - [HAS - Tinzaparine sodique 10 000 UI anti-Xa/0,5 ml solution injectable : 12 000UI anti-Xa (soit 170UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée (id_poso=3)](Bundle-HAS-03-Presc-Tinzaparine.html)
- les modulation de doses
  - [HAS - NOVORAPID Flexpen® 100 UI / mL : A administrer avant chaque repas en fonction de la glycémie 6 U si glycémie entre 1,5 et 2 g/L​ 8 U si glycémie entre 2 et 2,5 g/L 10 U si glycémie supérieure à 2,5 g/L (id_poso=25)](Bundle-HAS-25-NOVORAPID.html)
  - [HAS - hydrocortisone 10 mg : 1 comprimé matin et 1 comprimé midi. En cas de fièvre, de forte chaleur, d'infection, de diarrhée, de stress important, augmenter la quantité pour passer à  : 2 comprimés matin et 2 comprimés le midi ou 2 comprimés matin, 2 comprimés le midi et 2 comprimés à 16h. Avec un maximum de 6 comprimés par jour. (id_poso=30)](Bundle-HAS-30-1-Presc-Hydrocortisone.html)
- les unités de prescription non référencées dans le Référentiel Unique d'Interopérabilité du Médicament
  - ces unités sont à exprimer en FHIR uniquement avec l'élément `unit`, les éléments `code`et `system`ne sont pas utilisés
  - [HAS - bethamethasone 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter (id_poso=8=)](Bundle-HAS-08-1-Presc-Betamethasone.html)
  - [HAS - paracetamol 24 mg/mL (DOLIPRANE 2.4%), susp buv, flac 100 mL : 1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C.(id_poso=8)](Bundle-HAS-08-2-Presc-Paracetamol.html)
  - [HAS - BEPANTHEN®5% crème : 1 application, 2 fois par jour, en couche mince (id_poso=12)](Bundle-HAS-12-1-Presc-BEPANTHEN.html)

##### Les modifcations de la ligne prescription initiale

Il n'y a pas d'exemple, pour l'instant.

#### Médicament prescrit et dose(s)

##### Ex: LASILIX® 20 mg, sol inj amp 2 mL, XX à 7h et 18h IV, pendant 5j

- **unité de médicament prescrit** ➟ `MedicationRequest.medication`
  - `LASILIX®` → marque ➟ `code.coding.display` dans le libellé correspondant au code UCD provenant du [Référentiel Unique d'Interopérabilité du Médicament - RUIM](https://smt.esante.gouv.fr/terminologie-ref_interop_med/)
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

##### Ex: Furosemide XX à 7h et 18h IV, pendant 5j

- **unité de médicament prescrit** ➟ `MedicationRequest.medication`
  - `Furosemide` → médicament en DC ➟ `code.coding.display` dans le libellé correspondant au code de substance (code SMS ou code technique ANSM) provenant du [Référentiel Unique d'Interopérabilité du Médicament - RUIM](https://smt.esante.gouv.fr/terminologie-ref_interop_med/)
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

##### Contraintes

entre

- propriétés de l’**unité de médicament prescrit**
- expression de la **quantité de la dose prescrite**

###### Objectif

- La quantité de principes actifs de la dose doit être déterminée,
- Sauf pour les unités de prescription à volume indéterminé (ex : application), la concentration de principes actifs de la dose doit être déterminée.

###### Contrainte sur le Médicament prescrit (`MedicationRequest.medication`)

Le dosage (`.ingredient[].strength`) est exigé quand le médicament prescrit est un médicament composé:

- une association de principes actifs (ex : paracétamol + codéine)
- un médicament extemporané (ex : perfusion composée de plusieurs médicaments)

###### Contraintes sur l’Unité de la dose prescrite (`MedicationRequest.dosageInstruction.doseAndRate`)

L'unité est pertinente (donc autorisée), en fonction de son type,

- **unité de quantité** de principe actif, si le médicament prescrit n'est composé que d'**un seul principe actif** ;
- **unité de volume** du médicament prescrit, si le médicament prescrit a un **dosage en concentration** défini ;
- **unité de dénombrement** du médicament prescrit, si le médicament prescrit a un **dosage en quantité** défini.

On inclut dans définie, la possibilité de calcul à partir des propriétés connues.
Par exemple, quantité connue 20 mg et volume connu 2 ml, implique que la concentration est définie, 10 mg/mL et que l'unité mL pour exprimer la quantité de la dose, par exemple 3 mL, est pertinente parce qu'elle détermine sa quantité de principe actif, 30 mg.

#### Durée d'administration

Quand elle n'est pas négligeable, sa valeur exprimée **DOIT** figurer au dénominateur de la dose prescrite.

Cf. [Requirements](https://hl7.org/fhir/R4/dosage-definitions.html#Dosage.doseAndRate.rate_x_) de l'élément `MedicationRequest.dosageInstruction.doseAndRate.rateRatio`

Si une durée d'administration n'est pas spécifiée par le prescripteur, cela siginifie qu'elle est négilgeable. Par exemple pour l'administration d'un comprimé ou l'injection direct d'une solution.

##### Cas particuliers

###### IVL (intraveineuse lente) / IVD (intraveineuse directe)

Intraveineuse lente et intraveineuse directe ne sont pas des voies d'administration, quand bien même ces concepts s'y invitent régulièrement dans les listes locales des voies d'administration. Ce sont des méthodes, dont la principale différence porte sur la durée d'administration, qui n'est dans ce cas pas quantifée mais simplement qualifiée.

Si le prescripteur souhaite ne pas donner une durée d'administration explicite quantifiée, cette distinction qualitative DOIT être portée dans l'élément `method` de `dosageInstruction`de la ressource *MedicationRequest*. La voie d'administration, élément `route`, prend dans les deux cas la valeur voie intraveineuse.

Ni l'EDQM, ni SNOMED CT ne fournissent de codes pour nuancer la méthode d'administration *injection*. La distinction qualitative est donc à exprimer dans l'élément `.text`de `method`

###### Injection continue

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

#### Perfusions et seringues électriques

Elles présentent la particularité d'avoir un médicament prescrit composé de plusieurs médicaments simples, exprimés en spécialité et/ou en DC.

De ce fait, le rapport entre les caractéristiques du médicament prescrit composé et l'expression de la quantité des doses prescrites présente quelques particularités.

##### BoDC (Basis of Dose Component)

Dans un médicament composé, permet d'exprimer à quel médicament composant, quelle ressource *Medication*, se réferre l'expression de la dose.

Ex: Permet de rapporter l'expression de la quantié 4g de la dose, au médicament céfotaxine du médicament composé céfotaxine dans 100 mL de glucose 5%.

Cette information est portée par l'extension [*FrBasisOfDoseComponent*](Bundle-FrBasisOfDoseComponent.html) de l'élément `doseAndRate` du type complex *Dosage* qui s'applique à l'élément `dosageInstruction`* de la ressource *MedicationRequest*.

Voir exemple [céfotaxine dans G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 4j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt4j.html)

Note PN13:

- Dans PN13, c'est le *COMPOSANT PRESCRIT* qui est marqué comme *est_Référent_poso*, et non pas les *ELEMENT DE POSOLOGIE* qui doivent tenir compte de ce marquage d'un *COMPOSANT PRESCRIT*.
- Dans FHIR, c'est l'élément *dosageInstruction* qui est marqué par la référence à la ressources *Medication* sur laquelle se fonde l'expression de la quantité du dosage.

##### IsVehicle

Dans un médicament composé, permet d'exprimer quel composant, quelle ressource *Medication*, est le soluté.

Ex: Permet de marquer le glucose 5% comme étant le soluté dans le médicament composé céfotaxine dans 100 mL de glucose 5%.

Cette information est portée par l'extension [*FrIsVehicle*](StructureDefinition-FrIsVehicle.html).

Cette extension est appliquée à l'élément `ingredient` de la ressource *Medication* composée.

Voir l'exemple [céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.html)

Note PN13:

- Dans PN13, le marqueur *est_véhicule* est porté par le *COMPOSANT PRESCRIT*.
- Dans PN13, l'alernative proposée n'est pas possible parce que la collection de *COMPOSANT PRESCRIT* est directement portée par l'*ELEMENT DE PRESCRIPTION*, l'équivalent de la ressource *MedicationRequest*. Il n'y a pas d'élément XML container intermédiaire équivalent de la ressource *Medication* composé (profil *FrMedicationCompound*).

##### Q.S.P. (quantité suffisante pour ...)

Cette expression est utilisée dans la prescription des injectables en seringue électrique pour déclarer le volume de soluté composant le médicament prescrit en *quantité suffisante pour* atteindre le volume du médicament composé, c'est-à-dire le volume final de la seringue.

L'application de la règle suivante répond à ce cas d'usage :

- repérer l'*ingredient* représentant le médicament composant qui joue le rôle de soluté avec l'extension *IsVehicule* ;
- ne pas mettre de volume à ce médicament composant jouant le rôle de soluté (absence d'élément amount dans la ressource *Medication* représentant le médicament soluté) ;
- mettre le volume cible dans l'élément amount de la ressource *Medication* représentant le médicament composé.

Cette règle impose l'utilisation de l'extension *IsVehicule*.
Voir exemple [dobutamine 200 mg dans soluté=G5 qsp 40 mL, 400 µg/min pendant 1j](Bundle-Presc-PerfDobutamine-Qsp40mL.html)

En [R5](https://hl7.org/fhir/medication.html), la ressource *Medication* voit l'élément `ingredient.strength` passer de type exclusivement *Ratio* en type alternatif *Ratio*, *Quantity* ou *CodeableConcept* avec jeu de valeurs préferré contenant la valeur qs (quantité suffisante pour).

- En mettant dans
  - `.totalVolume` : le volume cible de la seringue,
  - `.ingredient\[soluté\].strengthCodeableConcept` : le code qs
  il est prescrit explicitement que le soluté est en Q.S.P. le volume cible de la seringue.

**Note**:
En R5 l'élément amount est renommé **totalVolume** pour lever toute ambiguité avec les volumes pouvant figurer dans les `ingredient.strength\[x\]`.

#### Patches

##### Propriétés du patch

Un patch est un médicament incluant un dispositif intégré garantissant

- une durée maximale de diffusion (ex: 16h, 72h)
- et
  - une quantité (15 mg)
   ou
  - un débit (75 ug/h)
  délivré de principe(s) actif(s).

Ces informations sont des propriétés du médicament prescrit.

Elles s'expriment dans la ressource *Medication* référencée par l'élément medication qui décrit l'unité de médicament prescrit dans la ressource *MedicationRequest*.

##### Propriété de la dose

La durée d'administration du patch est un choix du prescipteur.

Il **DOIT** être exprimé en tant que tel au dénominateur de la dose prescrite, même si elle est identique à la durée maximale garantie par le dispositif intégré.

Le guide d'implémentation n'assigne à la durée d'administration, aucune valeur par défaut qui serait particulière aux patches.

#### Dose calculée / dose prescrite

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

Voir exemple [capécitabine 1800 mg (1000 mg/m²), 7h et 18h per os, pendant 14j](Bundle-Presc-Capecitabine-Dose-Calculee.html)

***spécifité ville*** La dose réélle pertinente (valeur absolue) doit être la seule indiquée dans la partie structurée de la posologie. La dose théorique en fonction de paramètres patient (valeur relative) peut être exprimée dans la partie textuelle (i.e. dans `MedicationRequest.dosageInstruction.additionalInstruction.text`). Voir exemple [HAS - Tinzaparine sodique 10 000 UI anti-Xa/0,5 ml solution injectable : 12 000UI anti-Xa (soit 170UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée (id_poso=3)](Bundle-HAS-03-Presc-Tinzaparine.html)

**Note**:
Il est tout à fait possible de prescrire plus simplement capécitabine 1000 mg/m², accompagnée de la `surface corporelle` (1,85 m²), voire seulement de la `taille` (1,75 m) et du `poids` (70 kg) du patient dans des ressources *Observation* référencées par `MedicationRequest.supportingInfoormation`.
Mais c'est un autre cas d'usage, qui, quand bien même il déboucherait sur la même délivrance, *capécitabine 1800 mg*, laisserait au pharmacien l'arbitrage de l'arrondi par rapport à la dose prescrite. C'est un cas d'usage différent parce que l'acteur et le temps où se fait l'arrondi ne sont pas les mêmes.
