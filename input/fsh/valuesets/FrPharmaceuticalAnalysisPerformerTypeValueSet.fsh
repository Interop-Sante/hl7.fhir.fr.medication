ValueSet: FrPharmaceuticalAnalysisPerformerTypeValueSet
Id: fr-pharmaceutical-analysis-perfomer-type-value-set
Title: "Jeu de valeurs Interop'Santé - Codes de résultat d'analyse pharmaceutique"
Description: "Codes représentant le type de résultat de l'analyse pharmaceutique"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include $TRE-G15-ProfessionSante#21 "Pharmacien"
* include $TRE-G16-ProfessionFormation#21 "Pharmacien en formation"
* include $TRE-R85-RolePriseCharge#316 "Préparateur en pharmacie hospitalière"