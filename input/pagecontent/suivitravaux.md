# Suivi des versions

## Version 1.0 - Version Initiale publiée en janvier 2022

### La conciliation v1.0

Les travaux ont été initiés au sein de la communauté SIPh le 13 septembre 2018. Ils ont produit la version initiale des ressources dédiées à la conciliation. Le détail du suivi des travaux est consultable sur le [site de la communauté SIPh](https://siph.phast.fr/gt-fhir-prise-en-charge-medicamenteuse-du-patient/). Fin 2020, le fruit de ces travaux a été dévolu à l’association InterOp'Santé pour qu’elle en assure la promotion, le développement et la maintenance.
Les ressources publiées sont au statut draft, en attente de retours des premières implémentations.

### La prescription v1.0

Les travaux ont été initiés également au sein de la communauté SIPh en 2019. Mais ils n'ont pas abouti à un premier niveau de ressources FHIR livrables.
En 2021 le groupe Pharmacie d'InterOp'Santé a repris le projet pour aboutir à un profilage de la ressource MedicationRequest et de la ressource Medication adpaté à la prescription en DC et en spécialité identifiée par le code UCD.
Cette première version, en date du 31 janvier 2022, voit ses ressources publiées au statut draft, en attente de retours des premières implémentations.
Toute remarque, commentaire ou suggestion est bienvenu sur la [mailing list PN13-FHIR](https://groups.google.com/g/pn13-is---interopsante) animée par InterOp'Santé.

#### Déroulé des travaux

- Le 16 août 2021, une version préliminaire est mise en concertation.
- Le 15 septembre 2021, s'est tenue la première réunion.
- Le 21 octobre 2021, un draft est soumis à validation (réunion distancielle).
  - Deux critiques majeures ont été formulées
    - Le binding 'exclusive' à SNOMED CT
    - L'usage de profils multiples de la ressource Medication plutôt qu'un seul profil avec des slice par type de médicament (spécialité, DC, coumpound)
  - Conséquences
    - Le binding à SNOMED CT est relaché : 'extensible'
    - Une étude est réalisée pour remplacer les 3 profils de la ressource Medication par un seul profil slicé
  - Le 31 janvier 2022, la version draft finalel est publiée.
    - L'étude d'un seul profil slicé de la ressource Medication n'a pas abouti à une solution valide. **Lien à fournir**

### La dispensation v1.0

La communauté SIPh met à disposition les travaux préliminaires qu'elle entreprend sur la dispensation dans le cadre de la prise en charge médicamenteuse en DC.

## Version 1.1 - Version en cours

### La prescription v1.1

Les travaux du GT PN13 - FHIR sur la prescription se sont déroulés de janvier 2024 à XXX
La concertation publique a eu lieu du XXX au XXX
Ils ont portés sur:
Le mapping des données PN13 - FHIR
L’intégration des extensions FrIsVehicle et  FrBasisOfDoseComponent dans les profils
Prise en compte du [Référentiel Unique d’Interopérabilité du Médicament](https://smt.esante.gouv.fr/explorer-les-concepts/terminologie-ref_interop_med)

## Version 1.2 - Prochaine version prévue

### La conciliation v1.2

Les prochains travaux prévus sur l’IG portent sur la mapping des données PN13 - FHIR et la prise en compte du  [Référentiel Unique d’Interopérabilité du Médicament](https://smt.esante.gouv.fr/explorer-les-concepts/terminologie-ref_interop_med) pour la conciliation.

## Liste des contributeurs

### Version 1.0

- Alicia Bel-Létoile - Synapse Médecine
- Clément Berard - OpenXtrem
- Thomas Blanchard - Malta Informatique
- Raphaël Boeve - Evolucare
- Olivier Boux - PHAST
- Jean-Christophe Cauvin - Dedalus
- Frédéric Dechanet - Maincare
- David Delforge-Trollet - Malta Informatique
- David Deslauriers - SIB
- Baptiste Durand-Bret - Snapse Médecine
- Jérôme Duvernois - eSanté Solution
- Olivier Gescuena - Computer Engineering
- Isabelle Gibaud - PHAST
- Mathieu Grivois - Dedalus
- Eric Guessant - SIB
- Gwenaël Guiriec - SIB
- Cassandre Huc - MIPIH
- François Macary - PHAST
- Nicolas Maschpy - Computer Engineering
- Thierry Mitouard - Vidal
- Julien Olivier - Evolucare
- Zoé Phalippou - MaPUI
- Victor Pigeon - MaPUI
- Pierre Pilven - Keen Turtle
- Yohann Poiron - OpenXtrem
- Pierre Renaudin - Bimedoc
- Clara Subts - Dedalus
- Clotaire Thocquenne - Evolucare

### Version 1.1

- Pascal André - Cegisanté
- Guillaume Arras - PHAST
- Michel Blondel - PHAST
- Aymeric Boffa - Bimedoc
- Abdellali Boussadi - ANS
- Yann Briand - ANS
- Loïc Brotons - Galeon
- Christophe Brucker - Nammu Lab
- Mathilde Carca - Pharmia
- Georges-Alexandre Chastin - Enovacom
- Jean-Christophe Cauvin - Dedalus
- Frédéric Dechanet Maincare
- Denis Delamarre - CHU Rennes
- Emmanuel Delvas - Maincaire
- Cloé Demars - Vidal
- Catherine Duclos - APHP
- Eric Dufour - Selic
- Jean-Michel Estrade - Evolucare
- Alexandre Frerot - Vidal
- Nawra Georgi - MaPUI
- Isabelle Gibaud - ANS
- Mathieu Grivois - Dedalus
- Alexandre Grosbois - Xperis
- Maxime Guerreiro - Ordoclic
- Baptiste Guilbert - CHU Rennes
- Thomas Haquet - Normand’e-Santé
- Lucy Laporte - Collective Thinking
- Frédéric Laurent - CHU Rennes
- Nolwenn Le Buhan - Kereval
- Sarah Leroy - Kereval
- Pierre Liot - HAS
- Pierre Luce - Posos
- François Macary - Use&Share
- Anne Maheust - Use&Share
- Patrick Mazaud - CNOP
- Manuel Metz - Lifen
- Thierry Mitouard - Vidal
- Mirojane Mohammad - HAS
- Malek Mouazer - APHP
- Julien Monteuil - PHAST
- Thierry Morvand - Santé Service Bayonne
- Alexandre Petit - Bowmedical
- Alain Perie - ANS
- Cassandre Piraud - Magellan Consulting
- Yohann Poiron - Xtrem Santé puis ANS
- Alain Ribault - Kereval
- Tristan Rieu - Kereval
- Nicolas Riss - ANS
- Fanny Serre Kereval
- Benoit Tissot - APHP
- Eliott Tourtois - Posos
