Instance: 14664
InstanceOf: FrInpatientMedicationDispense
Usage: #example
* contained[0] = med-411
* contained[+] = group-01
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/event-basedOn"
* extension[=].valueReference.reference = "MedicationDispense/14661"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/event-basedOn"
* extension[=].valueReference.reference = "MedicationDispense/14662"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/event-basedOn"
* extension[=].valueReference.reference = "MedicationDispense/14663"
* status = #completed
* medicationReference.reference = "#med-411"
* subject.reference = "#group-01"
* performer.actor.reference = "Practitioner/smart-Practitioner-7148xxxx"
* authorizingPrescription[0].reference = "MedicationRequest/14654"
* authorizingPrescription[+].reference = "MedicationRequest/14659"
* authorizingPrescription[+].reference = "MedicationRequest/14660"
* type = $v3-ActCode#RFP "Refill - Part"
* quantity = 14 '1'
* daysSupply = 2 'd' "jours"
* whenPrepared = "2021-07-16T10:10:00Z"
* whenHandedOver = "2021-07-16T10:24:00Z"