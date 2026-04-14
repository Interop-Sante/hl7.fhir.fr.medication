<div style="width: 65%">
    <blockquote class="stu-note">
    <p>
    <b>Attention !</b> la partie analyse pharmaceutique est en cours d'élaboration et n'a pas été éprouvée.
    </p>
    </blockquote>
</div>

## L'analyse pharamaceutique

Le processus d'analyse pharmaceutique d'une presctipion comporte

- Une analyse règlementaire selon article R5194 du CSP vérifiant que la prescription comporte: le nom, la qualité du prescripteur, son identifiant, …, les nom et prénoms, le sexe et l'âge du malade et, si nécessaire, sa taille et son poids, la dénomination du médicament ou du produit prescrit, ou le principe actif du médicament désigné par sa dénomination commune, la posologie et …, la durée de traitement ou .., le nombre de renouvellements de la prescription
- Une analyse pharmaco-thérapeutique de l’ordonnance : la pertinence de la prescription en lien avec les objectifs thérapeutiques. Il est sur les posologies, les contre-indications physiopathologiques, les interactions médicamenteuses, l’adaptation à la fonction rénale, etc.

Le pharmacien ayant réalisé l'analyse peut ensuite réaliser une optimisation pharmaceutique de la prise en charge médicamenteuse et formuler un avis pharmaceutique.

Dans le contexte hospitalier, le pharmacien peut rédiger une intervention pharmaceutique (IP) afin de transmettre au prescripteur un problème détecté lors de l’analyse. L’analyse peut se faire de manière centralisée à la PUI ou décentralisée directement dans le service de soin.   

### Périmètre couvert

Cette spécification couvre le partage de données entre système d'informations au sein d'une structure de soin à l'issue d'une analyse pharmaceutique.
L'analyse pharmaceutique réalisée en officine est principalement au niveau du LGO sans besoin identifié d'échange interopérable avec d'autres systèmes. Elle est hors périmètre de cette version de la spécification.

### L'analyse pharmaceutique dans le contexte hospitalier

Dans le contexte hospitalier, pour des raisons opérationnel, l'analyse pharmacieutique peut être réalisée en amont de la dispensation/administration du traitement ou lorsque le traitement a déjà débuté.

L'analyse pharmaceutique peut avoir différents niveaux de profondeur:

- **Niveau 1** Analyse d'une ligne de prescription prioritaire (médicaments soumis à validation pharmaceutique ex. anticoagulants, inhibiteurs ou inducteurs enzymatiques puissants, antiinfectieux, médicaments remboursés en sus du GHS, chimiothérapies orales…) même si elle prend globalement le contexte de l’ensemble de la prescription.
- **Niveau 2** Analyse de la prescription dans son ensemble mais pas forcément de manière exhaustive sur l’ensemble du contexte patient (en fonction des critères d’analyse mis en œuvre)
- **Niveau 3** L’ensemble des éléments disponibles sur le patient: ensemble des traitements (y compris historique et conciliation médicamenteuse), pathologies, antécédents, objectifs thérapeutiques

Quel que soit le niveau de l'analyse pharmaceutique elle se traduit par un avis sur les lignes de prescription analysées. L'avis peut être:

- une validation
  - valisation simple (avec ou sans commentaire)
  - validation (avec ou sans commentaire) associée à une ou plusieurs proposition(s)
- une intervention pharmaceutique

#### Intervention pharmaceutique

Une intervention pharmaceutique dans le contexte hospitalier comporte selon la SFPC:

- la codification du problème détecté: non conformités aux référentiels ou contre-indication, indication non traitée, sous-dosage, surdosage, médicament non indiqué, interaction, effet indésirable, voie ou administration non appropriée, traitement non reçu ou monitorage à suivre.
- la codification du type d'intervention: ajout, arrêt, substitution ou échange, choix de la voie d’administration, suivi thérapeutique, optimisation des modalités d’administration ou adaptation posologique.
- éventuellement une proposition de modification de la/des ligne(s) de prescription sur laquelle elle porte

Une intervention pharmaceutique peut être revue par le prescripteur de la/des ligne(s) de prescription concernée(s) et être:

- acceptée (avec les propositions ou avec d'autres modifications jugée adequates par le prescripteur)
- refusée

Elle peut également être acceptée par défaut dans le cas d'une délégation formelle. 


### Origine et alignements

Les spécifications sont issues des travaux du groupe de travail Interop'Santé et s'appuient sur:

- les listes des codes qualifiant l'intervention pharmaceutique (problème et type d'intervention) définies par la SFPC pour l'intervention pharmaceutique telles que représentées sur la [fiche d'intervention pharmaceutique hôpital](https://sfpc.eu/wp-content/uploads/2025/10/ActIP-Fiche-intervention-pharmaceutique.pdf)

### Guide de lecture

/!\ A rédiger une fois l'ensemble des parties stabilisées /!\

### Exemple d'informations portées par le résultat de l'analyse pharmaceutique

#### Exemple d'informations portées par la validation pharmaceutique

La validation est rarement matérialisée. On pourrait cependant imaginer ce genre de visa pharmacien sur une prescription papier

<div class="figure" style="width:100%;">
    <img style="height: auto; width: 100%;" src="ValidationAnnotee.jpg" alt="Exemple validation pharmaceutique" title="Exemple de validation pharmaceutique">
</div>

#### Exemple d'informations portées par l'intervention pharmaceutique

L'intervention pharmaceutique dans le contexte hospitalier est outillé par un formulaire de la SFPC

<div class="figure" style="width:100%;">
    <img style="height: auto; width: 100%;" src="InterventionAnnotee.jpg" alt="Exemple intervention pharmaceutique" title="Exemple d'intervention pharmaceutique">
</div>

### Modélisation du résultat de l'analyse pharmaceutique
Pour faciliter la compréhension par les professionnels de santé, des **modèles métier** ont été élaborés pour décrire les données qui constituent le résultat d'une analyse pharmaceutique.

Ces modèles utilisent le formalisme des **"modèles logiques"** d'HL7, qui permettent de représenter les concepts métier de façon indépendante des contraintes techniques de FHIR. Contrairement aux profils FHIR techniques destinés aux développeurs, ces modèles logiques offrent une vision métier claire et accessible, facilitant le dialogue entre professionnels de santé, éditeurs de logiciels et experts FHIR.

**Avantages pour les professionnels de santé :**
- Vue d'ensemble complète des informations du résultat d'une analyse pharmaceutique
- Langage commun entre les professionnels réalisant les analyses pharmaceutiques et les équipes informatiques
- Référentiel métier pour valider que tous les besoins sont bien couverts

**Modèles disponibles :**
- [Modélisation du résultat d'une analyse pharmaceutique](StructureDefinition-fr-analyse-pharmaceutique-logical.html)

### Sommaire de la spécification technique

- [Vue d'ensemble](analyse-VueEnsemble.html): modélisation FHIR du résultat de l'analyse pharmaceutique (ressources, profils, structuration de l'intervention pharmaceutique).
- [Cas d'usage](analyse-CasUsage.html): scénarios de validation et d'intervention pharmaceutique couverts.
- [Exemples](analyse-Exemples.html): instances FHIR concrètes illustrant les différents cas d'usage.
