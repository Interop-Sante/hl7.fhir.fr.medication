### Tranformation d'un message PN13 compte-rendu d'analyse pharmaceutique en FHIR

La transformation d'un message PN13 compte-rendu d'analyse pharmaceutique en ressources FHIR se fait à partir de *ConceptMap* indiquant la correspondance entre les éléments XML des messages PN13 et les attributs des ressources FHIR.

Elle résulte en:
- une ressource *Task* suivant le profil [FrInpatientPharmaceuticalAnalysisResultProfile](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.html)
- éventuellement une ou plusieurs ressource(s) *MedicationRequest* suivant le profil [FrInpatientPharmaceuticalInterventionSuggestionProfile](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.html) si une ou plusieurs propositions est/sont associée(s) au résultat de l'analyse pharmaceutique (que le resulta soit une validation pharmaceutique ou une intervention pharmaceutique).

La manière dont les ressources FHIR résultantes sont mises à disposition dépend du serveur FHIR (ex. operation spécifique pour la recherche d'analyse pharmaceutique par identifiant de prescription, mise en oeuvre de `_include` et de `_revInclude`). Pour des raisons de lisibilité, les exemples présentés en FHIR sont les ressources *Task* correspondant aux résultats d'analyse avec les ressources *MedicationRequest* associées en ligne.

#### Processus de traduction

##### Etape 1: Identifier la/les ligne(s) de prescription analysée(s)

La/les ligne(s) de prescription analysée(s) sont représentées par les éléments `Message/M_Compte_rendu_analyse_pharm/Compte_rendu_pharm/Elément_prescr_pharm` pour lesquels l'élément `Message/M_Compte_rendu_analyse_pharm/Compte_rendu_pharm/Elément_prescr_pharm/Cré_arr_mod_val` est absent ou vide.
Même si l'ensemble de la ligne de prescription est reprise dans l'élément `Message/M_Compte_rendu_analyse_pharm/Compte_rendu_pharm/Elément_prescr_pharm`, le seul élément à prendre en compte est `Message/M_Compte_rendu_analyse_pharm/Compte_rendu_pharm/Elément_prescr_pharm/Id_élement_prescr` afin de pouvoir retrouver la ressource *MedicationRequest* correspondante créée lors de la prescription initiale afin d'y faire référence dans la ressource *Task* créée pour représenter le resultat de l'analyse pharmaceutique.

##### Etape 2: créer la/les éventuelle(s) ressource(s) *MedicationRequest* correspondant à/aux éventuelle(s) proposition(s)

La/les éventuelle(s) proposition(s) sont représentées par les éléments `Message/M_Compte_rendu_analyse_pharm/Compte_rendu_pharm/Elément_prescr_pharm` pour lesquels l'élément `Message/M_Compte_rendu_analyse_pharm/Compte_rendu_pharm/Elément_prescr_pharm/Cré_arr_mod_val` a pour valeur `C`.

Pour chaque proposition, créer une ressource *MedicationRequest* suivant le profil [FrInpatientPharmaceuticalInterventionSuggestionProfile](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.html) en utilisant le même processus que pour la transformation PN13 en FHIR d'une ligne de prescription présentée dans l'IG ePrescription (**Lien à fournir lorsque l'IG sera publié**) avec les exceptions suivantes:
- le parsing sur l'élément `M_Prescription_médicaments` et ses éléments enfants dans le processus de l'IG ePrescription doit être appliqué sur l'élément `M_Compte_rendu_analyse_pharm` est ses éléments enfants
- le parsing sur l'élément `Prescription` et ses éléments enfants dans le processus de l'IG ePrescription doit être appliqué sur l'élément `Compte_rendu_pharm` est ses éléments enfants
- le parsing sur l'élément `Elément_prescr_médic` et ses éléments enfants dans le processus de l'IG ePrescription doit être appliqué sur l'élément `Elément_prescr_pharm` est ses éléments enfants
- la règle indiquant comment peupler l'attribut `MedicationRequest.intent`est à ignorer, cet attribut est toujours à renseigner avec `proposal`
- la règle indiquant comment peupler l'attribut `MedicationRequest.requester`est à appliquer sur l'élément `Message/M_Compte_rendu_analyse_pharm/Compte_rendu_pharm/Id_pharmacien` ou l'élément `Message/M_Compte_rendu_analyse_pharm/Compte_rendu_pharm/Identification_pharmacien` au lieu de l'élément `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Id_prescripteur` ou l'élément `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur`
- l'élément `MedicationRequest.groupIdentifier` est à renseigner avec le même identifiant que celui de la / des ligne(s) de prescription analysée(s)
- un élément `MedicationRequest.supportingInformation.reference` doit être créer pour chaque ligne de prescription analysée et porter la référence de la *MedicationRequest* représentant cette ligne
- un élément `MedicationRequest.supportingInformation.refence` doit être prévu pour référencer la ressource *Task* représentant le resultat de l'analyse pharmaceutique (cf. étape 4)

##### Etape 3: créer la ressource *Task* correspondant au résultat de l'analyse pharmaceutique

- Créer une ressource *Task* suivant le profil [FrInpatientPharmaceuticalAnalysisResultProfile](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.html) en utilisant la ressource *ConceptMap* [PN13-FHIR-analpharm-conceptmap]
- Pour chaque ligne de prescription analysée, renseigner un attribut `Task.input` avec
  - `Task.input.type.text` renseigné avec `ligne de prescription analysée`
  - `Task.input.reference` renseigné avec la référence de la ressource *MedicationRequest* correspondant à la ligne analysée (cf. étape 1)
- Pour chaque proposition, renseigner un attribut `Task.output`avec
  - `Task.output.type.text` renseigné avec `proposition`
  - `Task.output.reference` renseigné avec la référence de la ressource *MedicationRequest* correspondant à la proposition (cf. étape 2)

**Note 1**: A part pour les interventions de type 3 Substitution/Echange, les messages PN13 `M_Compte_rendu_analyse_pharm` ne spécifient pas le type d'intervention pharmaceutique
**Note 2**: Les messages PN13 `M_Compte_rendu_analyse_pharm` ne spécifient pas le type de problème

##### Etape 4: mettre à jour la/les éventuelle(s) ressource(s) *MedicationRequest* correspondant à/aux éventuelle(s) proposition(s)

Renseigner l'élément `MedicationRequest.supportingInformation.refence` prévu pour référencer la ressource *Task* représentant le resultat de l'analyse pharmaceutique (cf. étape 2) avec la référence vers la ressource *Task* créée à l'étape 3.
