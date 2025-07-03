Instance: HAS-30-Presc-Hydrocortisone
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-30-Presc-Hydrocortisone

Instance: medicationrequest-HAS-30-Presc-Hydrocortisone
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: HYDROCORTISONE 10 mg : 1 comprimé matin et 1 comprimé midi 
En cas de fièvre augmenter la quantité pour passer à  : 2 comprimés matin et 2 comprimés le midi.
En cas de forte chaleur, d'infection, de diarrhée, de stress important, augmenter la quantité pour passer à  : 2 comprimés matin, 2 comprimés le midi et 2 comprimés soir
Avec un maximum de 6 comprimés par jour.
QSP 6 mois"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00000089 "HYDROCORTISONE 10 mg comprimé"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction[0].timing.repeat.when[0] = #MORN
* dosageInstruction[=].timing.repeat.when[+] = #NOON
* dosageInstruction[=].doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"
* dosageInstruction[=].maxDosePerPeriod.numerator = 6 $EDQM#15054000 "Comprimé"
* dosageInstruction[=].maxDosePerPeriod.denominator = 1 'd' "jour"
* dosageInstruction[+].patientInstruction = "En cas de fièvre"
* dosageInstruction[=].timing.repeat.when[0] = #MORN
* dosageInstruction[=].timing.repeat.when[+] = #NOON
* dosageInstruction[=].doseAndRate.doseQuantity = 2 $EDQM#15054000 "Comprimé"
* dosageInstruction[=].maxDosePerPeriod.numerator = 6 $EDQM#15054000 "Comprimé"
* dosageInstruction[=].maxDosePerPeriod.denominator = 1 'd' "jour"
* dosageInstruction[+].patientInstruction = "En cas de forte chaleur, d'infection, de diarrhée, de stress important"
* dosageInstruction[=].timing.repeat.when[0] = #MORN
* dosageInstruction[=].timing.repeat.when[+] = #NOON
* dosageInstruction[=].timing.repeat.when[+] = #EVE
* dosageInstruction[=].doseAndRate.doseQuantity = 2 $EDQM#15054000 "Comprimé"
* dosageInstruction[=].maxDosePerPeriod.numerator = 6 $EDQM#15054000 "Comprimé"
* dosageInstruction[=].maxDosePerPeriod.denominator = 1 'd' "jour"
* dispenseRequest.initialFill.duration = 6 'mo' "mois"