<div style="width: 65%">
    <blockquote class="stu-note">
    <p>
    <b>Attention !</b> la partie dispensation est en draft et n'a pas été éprouvé, un groupe de travail dédié doit être lancé afin de faire évoluer le besoin.
    </p>
    </blockquote>
</div>

### Discussion

#### Les médicaments délivrés qui n’ont pas de code UCD

Les médicaments qui n’ont pas de code UCD sont les médicaments composés préparés à la demande (ex : perfusions, chimiothérapie), les préparations magistrales et les préparations hospitalières.

Le médicament, prescrit comme dispensé, est représenté par une ressource Medication.

Les préparations magistrales et les préparations hospitalières ne sont pas explicitement couvertes par le guide d’implémentation en l’état. Ce qui renvoie chacun (chaque éditeur) à l’exploitation des spécifications de base de la ressource Medication pour implémenter ces deux types de médicament.

Pour les supporter explicitement, il nous faut des exemples caractéristiques de ces prescriptions et de leur délivrance.

*À suivre.*

#### La complexité de la prescription

Le cas des prescriptions conditionnelles et des prescriptions dont la dose est exprimée en quantité par unité de poids ou de surface corporelle du patient est évoqué. Le guide d’implémentation de la prescription aborde ces éléments de complexité au travers d’exemples de base.

La formalisation de leur délivrance fixera les bases à partir desquelles des variantes pourront être envisagées.

Il faudra distinguer

- les règles de dispensation, à charge du logiciel,
- les paramètres particuliers de délivrance qui découleraient de l’application de ces règles.

Les règles ne figureront pas dans les ressources décrivant ce qui est délivré.

- ex: pour tels médicaments dans tel type d'UF, délivrer les lundis, mercredis et vendredis.

Les paramètres particuliers appliqués à la délivrance figureront dans les ressources décrivant ce qui est délivré.

- ex: la délivrance de ce médicament, ce jour, à cette UF, couvre telle(s) prescription(s), pour une période de 2 jours

#### Les différents types de délivrance

- Délivrance nominative individualisée,
- Délivrance nominative reglobalisée,
- Délivrance globale : c’est un réapprovisionnement d’armoire.

Le réassortiment d’armoire peut être tout-simple ou sur présentation des ordonnances consommées (ex : stupéfiants, MDS en dotation d’urgence, MDS hors GHS).

Là encore, il faut bien faire la part de ce qui est fait par le logiciel (aide à la délivrance) et de ce qui se traduit dans la délivrance (le résultat).

#### Les paramètres de la délivrance

Il faut faire la part de ce que fait le logiciel et de qui décrit la délivrance proprement dite.

- La fonction du logiciel
  - Périodicité de la délivrance, en fonction
    - du médicament, ou de sa catégorie
    - de l’UF, ou de son type
    - de l’état du stock
  - Arrondis (aucun, au blister, à la boite, au carton, ...)
  - Restes (des délivrances antérieures)
  - Reliquats
  - Qualité du PS habilité à retirer la délivrance (ex : IDE ou cadre pour les stup)
- La délivrance proprement dite
  - Nombre d’unités de présentation
  - Période
  - La qualité du professionnel de santé qui vient retirer le médicament

Note : pour les prescriptions longues ou à durée indéterminée, la délivrance est toujours fractionnée par période.

#### Le traçage des flux matière

Il est important de pouvoir identifier les contenants (les caisses) dans lesquelles sont placés les médicaments délivrés et suivre leur acheminement jusqu’aux UF.

**Le transport fait partie de la délivrance**.

Aucun élément de la ressource *MedicationDispense* ne permet d'identifier la caisse dans laquelle le médicament délivré est acheminé, ni de tracer son acheminement (à minima quand est-ce qu'elle a quitté la pharmacie et par quel moyen)

Le ressource *MedicationDispense* n'est probablement pas la ressource consacrée pour descrire un flux matière. La ressource *SupplyDelivery* semble mieux destinée.

Mais nous ne trouvons pas le moyen de la relier explicitement aux dispensations nominatives qui en seraient l'origine, à moins de forger une extension idoine.

Notons que les ressources *SupplyRequest* et *SupplyDelivery* n'ont fait l'objet d'aucune évolution entre la version normative R4 et la version courante R5. Le sujet des flux matière médicament ne semble pas très actif dans la communauté internationale FHIR.
