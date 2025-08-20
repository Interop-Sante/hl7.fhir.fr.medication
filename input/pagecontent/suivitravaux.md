### Suivi des versions

#### Version 1.0 - Version Initiale publiée en janvier 2022

##### La conciliation v1.0

Les travaux ont été initiés au sein de la communauté SIPh le 13 septembre 2018. Ils ont produit la version initiale des ressources dédiées à la conciliation. Le détail du suivi des travaux est consultable sur le [site de la communauté SIPh](https://siph.phast.fr/gt-fhir-prise-en-charge-medicamenteuse-du-patient/). Fin 2020, le fruit de ces travaux a été dévolu à l’association InterOp'Santé pour qu’elle en assure la promotion, le développement et la maintenance.
Les ressources publiées sont au statut draft, en attente de retours des premières implémentations.

##### La prescription v1.0

Les travaux ont été initiés également au sein de la communauté SIPh en 2019. Mais ils n'ont pas abouti à un premier niveau de ressources FHIR livrables.
En 2021 le groupe Pharmacie d'InterOp'Santé a repris le projet pour aboutir à un profilage de la ressource MedicationRequest et de la ressource Medication adpaté à la prescription en DC et en spécialité identifiée par le code UCD.
Cette première version, en date du 31 janvier 2022, voit ses ressources publiées au statut draft, en attente de retours des premières implémentations.
Toute remarque, commentaire ou suggestion est bienvenu sur la [mailing list PN13-FHIR](https://groups.google.com/g/pn13-is---interopsante) animée par InterOp'Santé.

###### Déroulé des travaux

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
    - L'étude d'un seul profil slicé de la ressource Medication n'a pas abouti à une solution valide (voir la page [Etude complémentaire](prescription-EtudeComplementaire.html)).

##### La dispensation v1.0

La communauté SIPh met à disposition les travaux préliminaires qu'elle entreprend sur la dispensation dans le cadre de la prise en charge médicamenteuse en DC.

#### Version 1.1 - Version en cours

##### La prescription v1.1

Les travaux du GT PN13 - FHIR sur la prescription se sont déroulés de janvier 2024 à XXX
La concertation publique a eu lieu du XXX au XXX
Ils ont portés sur:
Le mapping des données PN13 - FHIR
L’intégration des extensions FrIsVehicle et  FrBasisOfDoseComponent dans les profils
Prise en compte du [Référentiel Unique d’Interopérabilité du Médicament](https://smt.esante.gouv.fr/explorer-les-concepts/terminologie-ref_interop_med)

#### Version 1.2 - Prochaine version prévue

##### La conciliation v1.2

Les prochains travaux prévus sur l’IG portent sur la mapping des données PN13 - FHIR et la prise en compte du  [Référentiel Unique d’Interopérabilité du Médicament](https://smt.esante.gouv.fr/explorer-les-concepts/terminologie-ref_interop_med) pour la conciliation.

#### Liste des contributeurs

##### Version 1.0

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

##### Version 1.1

- Lifen
  - Manuel Metz
- Phast
  - Guillame Arras
  - Julien Montreuil
  - Michel Blondel
- Posos
  - Eliott Toutois
  - Pierre Luce
  - Eric Ros
- UseShare
  - Anne Maheust
  - François Macary
- ANS
  - Nicolas Riss
  - Yann Briant
  - Isabelle Gibeau
  - Abdelali Boussaidi
  - Yohann Poiron
  - Alain Perié
  - Elisabeth Serrot-Damalte
- Enovacom
  - Georges-Alexandre Chastin
- Vidal
  - Alexandre Frérot
  - Cloé Demars
  - Marine Rodriguez
  - Frédéric Doc
  - Thierry Mitouard
- HAS
  - Mirojane Mohammad
  - Pierre Liot
  - Julie Marc
  - Philippe Zimmerman
- Kereval
  - Tristant Rieu
  - Sarah Leroy
  - Fanny Serre
  - Nolween Lebuhan
  - Alain Ribault
- APHP
  - David Ouagne
  - Malek Mouazier
  - Catherine Duclos
  - Benoit Tissot
- Dedalus
  - Mathieu Grivois
  - Vincent Gagnaire
  - Jean-Christophe Cauvin
- Bimedoc
  - Aymeric Boffa
- Incare
  - Samuel Simeon
- Cegisanté
  - Pascal André
- CHU de Rennes
  - Frédéric Laurent
  - Denis Delamarre
  - Baptiste Guilbert
  - Baptiste Houede
- CHU de Toulouse
  - Paul Ortéga
- CNOP
  - Patrick Mazaud
- Selic
  - Erci Dufour
- Ordoclic
  - Maxime Guerreiro
- Xperis
  - Alexandre Grosbois
  - Jean-Daniel Larcheveque
- Evolucare
  - Jean-Michel Estrade
- Magellan Consulting
  - Cassandre Piraud
- Maincare
  - Emmanuel Delvas
- APHM
  - Marjorie Roudot
- Normand'e-Santé
  - Thomas Hacquet
- Unicancer
  - Claire Fournier
  - Paloma Mouyade
- Bowmedical
  - Alexandre Petit
- Collective Thinking
  - Lucy Laporte
- Galeon
  - Loïc Brotons
- MaPUI
  - Nawra Georgi
- Nammu Lab
  - Christophe Brucker
- Pharmia
  - Mathilde Carca
- Santé Service Bayonne
  - Thierry Morvan
- Softway medical
  - William Degryse
- Urbansih
  - Damien Mazoyer
- Xtrem Santé
  - Yohann Poiron