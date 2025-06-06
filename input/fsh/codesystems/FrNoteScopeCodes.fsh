CodeSystem: FrNoteScopeCodes
Id: fr-note-scope-codes
Title: "code system Interop'Santé - Codes pour le périmètre des notes"
Description: "Le système de codage pour la qualification du périmètre des notes en FHIR."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^status = #draft
* ^experimental = false
* ^content = #complete
* ^count = 10
* #PRESCCOM "Commentaire au niveau de la prescription"
* #LIPRESCTXT "Formulation textuelle d'une ligne de prescription par le prescripteur (vs élément .text généré automatiquement)"
* #LIPRESCIND "Indication textuelle au niveau de la ligne de prescription"
* #LIPRESCCOMM "Commentaire au niveau de la ligne de prescription"
* #LIPRESCRENSCOMP "Renseignement complémentaire textuel"
* #MEDIND "Indication au niveau du médicament prescrit"
* #MEDCOM "Commentaire au niveau du médicament prescrit"
* #LIPRESCCONDAPPL "Conditions d’application de la ligne de prescription"
* #LIPRESCLIBMED "Libellé textuel du médicament prescrit"
* #LIPRESCPOS "Libellé textuel de la posologie"
