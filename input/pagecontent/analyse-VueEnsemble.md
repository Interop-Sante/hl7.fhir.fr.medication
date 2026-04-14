<div style="width: 65%">
    <blockquote class="stu-note">
    <p>
    <b>Attention !</b> la partie analyse pharmaceutique est en cours d'élaboration et n'a pas été éprouvée.
    </p>
    </blockquote>
</div>

## Vue d’ensemble

Le résultat d'une analyse pharmaceutique, que ce soit une validation pharmaceutique ou une intervention pharmaceutique, est toujours représenté par une ressource *Task* suivant le profil [FrPharmaceuticalAnalysisResultProfile](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.html) avec les attributs suivants:

- `Task.groupIdentifier`renseigné avec le `groupIdentifier`de la/des ressource(s) `MedicationRequest` représentant la/les ligne(s) de prescription analysée(s)
- `Task.status` = `completed`
- `Task.intent` = `proposal`
- `Task.authoredOn`renseigné avec la date et l'heure d'analyse
- `Task.performerType` renseigné avec la profession de l'utilisateur ayant réalisé l'analyse
- `Task.owner`renseigné avec la référence de l'utilisateur ayant réalisé l'analyse (référence à une ressource FHIR ou référence par identifier)
- `Task.input.valueReference`renseigné avec la/les référence(s) de la/des ligne(s) de prescription analysée(s)
- `Task.ouput.valueCode`renseigné avec un code représentant le résultat de l'analyse pharmaceutique: validation ou intervention pharmaceutique

*Note 1:* L'analyse pharmaceutique est réalisée sur une prescription représentée par le `groupIdentifier`. Cependant, si nécessaire, elle peut s'appuyer sur des lignes de prescription provenant d'autres prescrptions. Les cas échéant, ces lignes sont listées dans `Task.input.valueReference`.

*Note 2:* Certaines implémentations rendent nécessaire la réalisation d'une analyse pharmaceutique avant de permettre la dispensation. Cet usage est hors périmètre de cet IG. Il peut cependant être outiller en utilisant une ressource *Task* suivant le profil *FrPharmaceuticalAnalysisResultProfile* avec `Task.status` à `requested` pour représenter la demande d'analyse pharmaceutique. Afin de permettre cet usage, le profil *FrPharmaceuticalAnalysisResultProfile* ne fixe pas `Task.status`à `completed`.

### Validation pharmaceutique

En plus des éléments communs à tous les résultats d'analyse pharmaceutique présentés dans la section **Vue d'ensemble**, une ressource *Task* représentant une validation pharmaceutique peut inclure:

- une éventuelle instance de `Task.output.valueString`pour un éventuel commentaire de validation
- une ou plusieurs eventuelle(s) instance(s) de `Task.output.valueReference`pour d'éventuelle(s) suggestion(s) complémentaire(s) à la validation

### Intervention pharmaceutique

Une ressource *Task* représentant une intervention pharmaceutique inclut ,en plus des éléments communs à tous les résultats d'analyse pharmaceutique présentés dans la section **Vue d'ensemble**:

- une instance de `Task.output.codeableConcept` renseignée avec le code représentant le type d'intervention pharmaceutique
- une instance de `Task.output.codeableConcept` renseignée avec le code représentant le problème détecté
- une éventuelle instance de `Task.ouput.valueString`pour un éventuel commentaire complémentaire au type d'intervention pharmaceutique 
- une ou plusieurs instance(s) de `Task.output.valueReference`pour les suggestions de l'intervention pharmaceutique

### Propositions suite à une analyse pharmaceutique

Que ce soit dans le cadre d'une intervention pharmaceutique ou dans le cadre d'une validation pharmaceutique, une proposition est représentée par une ressource *MedicationRequest*suivant le profil [FrInpatientPharmaceuticalInterventionSuggestionProfile](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.html) qui hérite du profil *FRMedicationRequest* avec les attributs suivants:

- `MedicationRequest.status` = `active`
- `MedicationRequest.intent` = `proposal`
- `MedicationRequest.requester` renseigné avec la référence de l'utilisateur ayant réalisé l'intervention pharmaceutique (référence à une ressource FHIR ou référence par identifier)
- `MedicationRequest.supportingInformation`renseigné avec la référence de la ressource *Task* représentant le résultat de l'analyse pharmaceutique
- Eventuellement un ou plusieurs autre(s) `MedicationRequest.supportingInformation` renseigné(s) avec la/les référence(s) de la/des ligne(s) de prescription que la suggestion propose de modifier/supprimer
- `MedicationRequest.groupIdentifier`renseigné avec le même `groupIdentifier`que la/les ligne(s) de prescription sur laquel/lesquelles porte l'intervention pharmaceutique
- Tous les attributs nécessaires. En particulier, si la proposition est une modification/suppression, reprise de tous les attributs de la ligne de prescription référencée même s'ils ne sont pas modifiés.

*Note:* Etant donné qu'il est possible d'avoir des cas de suggestion de remplacement de plusieurs lignes par une ligne et même si le cas est rare, il a été choisi d'utiliser `MedicationRequest.supportingInformation` plutôt que `MedicationRequest.priorPrescription`pour indiquer la/les ligne(s) de prescription sur laquel/lesquelles porte l'intervention pharmaceutique.

#### Cas particulier de la proposition de suppression d'une ligne de prescription

Lorsque l'intervention pharmaceutique consiste en une suggestion de suppression d'une ligne de prescription, l'attribut `MedicationRequest.doNotPerform` avec une valeur à `1` (true) est utilisé pour représenter la suggestion de suppression.

#### Cas particulier de la proposition d'ajout d'une ligne de prescription

Lorsque l'intervention pharmaceutique consiste en une suggestion d'ajout de ligne de prescritpion sans modification d'autre ligne, l'attribut `MedicationRequest.supportingInformation` n'est utilisé que pour référencer la ressource *Task* représentant le résultat de l'analyse pharmaceutique, il n'y a pas de `MedicationRequest.supportingInformation` référençant de ligne de prescription.

#### Cas particulier de la proposition de remplacement

Lorsque l'intervention pharmaceutique consiste en une suggestion de remplacement de ligne(s) de prescription:
- chaque ligne remplacée est fournie sous forme de `MedicationRequest` avec :
  - `MedicationRequest.doNotPerform` avec la valeur `1`
  - `MedicationRequest.supportingInformation` avec la référence de la `MedicationRequest` initiale et la référence à la ressource *Task* représentant le resultat de l'analyse pharmaceutique
  - les autres attributs de la ressource *MedicationRequest* initiale
- chaque ligne remplaçante est fournie sous forme de ressource *MedicationRequest* avec:
  - `MedicationRequest.supportingInformation`avec la/les référence(s) de la / des ressource(s) *MedicationRequest* initiale(s) et la référence à la ressource *Task* représentant le resultat de l'analyse pharmaceutique

### Prise en compte du résultat d'une analyse pharmaceutique

La prise en compte du résultat d'une analyse pharmaceutique est codée via l'attribut `Task.businessStatus`.
Elle repose sur le jeu de valeurs [FrPharmaceuticalInterventionDevenirCodeValueSet](ValueSet-fr-pharmaceutical-intervention-devenir-code-value-set.html) qui reprend les valeurs du formulaire d'intervention pharmaceutique de la SFPC en ajoutant une valeur pour "Acceptée avec modification de proposition" dans le cas où la/les proposition(s) associée(s) est/sont modifiée(s) lors de la prise en compte.

Le système utilisé par le prescripteur pour traiter le résultat d'une analyse pharmaceutique met à jour l'attribut `Task.businessStatus` de la ressource *Task* correspondante selon les cas présentés dans la section suivante. 

#### Valeur de `Task.businessStatus` en fonction des cas

- Validation pharmaceutique sans commentaire => `Task.businessStatus` n'est pas utilisé
- Validation pharmaceutique avec commentaire => En fonction du choix d'implémentation
  - de manière générale, `Task.businessStatus` n'est pas utilisée
  - si l'implémentation veut permettre le suivie de la consultation des commentaires de valitation pharmaceutique par le prescripteur, possibilité d'utiliser `Task.businessStatus`avec la valeur `1` "Acceptée" pour indiquer que le commentaire a été consulté
- Validation pharmaceutique avec proposition => En fonction de l'acceptation de la proposition
  - si la proposition n'est pas acceptée, `Task.businessStatus` avec la valeur `2` "Non acceptée"
  - si la proposition est acceptée sans modification, `Task.businessStatus` avec la valeur `1` "Acceptée"
  - si la proposition est modifiée, `Task.businessStatus` avec la valeur `4` "Acceptée avec modification de proposition(s)"
- Intervention pharmaceutique sans proposition => En fonction de l'acceptation de l'intervention
  - si l'intervention n'est pas acceptée, `Task.businessStatus` avec la valeur `2` "Non acceptée"
  - si l'intervention est acceptée, `Task.businessStatus` avec la valeur `1` "Acceptée"
- Intervention pharmaceutique avec proposition => En fonction de l'acceptation de l'intervention
  - si l'intervention n'est pas acceptée, `Task.businessStatus` avec la valeur `2` "Non acceptée"
  - si l'intervention est acceptée sans modification de proposition(s), `Task.businessStatus` avec la valeur `1` "Acceptée"
  - si l'intervention est acceptée avec modification de proposition(s), `Task.businessStatus` avec la valeur `4` "Acceptée avec modification de proposition(s)"

Que les propositions soient acceptées avec ou sans modification, elles font l'objet de nouvelles ressources `MedicationRequest` avec:
- le même `MedicationRequest.groupIdentifier`que la prescription initiale
- la référence à la ressource *Task* représentant le resultat de l'analyse pharmaceutique dans `MedicationRequest.supportingInformation`
 