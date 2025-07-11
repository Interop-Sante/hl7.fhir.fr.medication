### Usage

Ce profil est utilisé pour les ressources *MedicationStatement* figurant dans le traitement médicamenteux courant. 

Chaque ressource *MedicationStatement* y représente une ligne de médicament du traitement médicamenteux courant.

Les règles natives HL7-FHIR sont applicables et à respecter.

When interpreting a medicationStatement, the value of the status and NotTaken needed to be considered:

* \r1. MedicationStatement.status + MedicationStatement.wasNotTaken
* \r2. Status=Active + NotTaken=T = Not currently taking
* \r3. Status=Completed + NotTaken=T = Not taken in the past
* \r4. Status=Intended + NotTaken=T = No intention of taking
* \r5. Status=Active + NotTaken=F = Taking, but not as prescribed
* \r6. Status=Active + NotTaken=F = Taking
* \r7. Status=Intended +NotTaken= F = Will be taking (not started)
* \r8. Status=Completed + NotTaken=F = Taken in past
* \r9. Status=In Error + NotTaken=N/A = In Error.
