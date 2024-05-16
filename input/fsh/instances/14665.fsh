Instance: 14665
InstanceOf: FrInpatientMedicationDispense
Usage: #example
* contained[0] = med-421
* contained[+] = group-01
* status = #completed
* medicationReference.reference = "#med-421"
* subject.reference = "#group-01"
* supportingInformation[0].reference = "MedicationDispense/14661"
* supportingInformation[+].reference = "MedicationDispense/14662"
* supportingInformation[+].reference = "MedicationDispense/14663"
* performer.actor.reference = "Practitioner/smart-Practitioner-7148xxxx"
* authorizingPrescription[0].reference = "MedicationRequest/14654"
* authorizingPrescription[+].reference = "MedicationRequest/14659"
* authorizingPrescription[+].reference = "MedicationRequest/14660"
* type = $v3-ActCode#RFP "Refill - Part"
* quantity = 14 '1'
* daysSupply = 2 'd' "jours"
* whenPrepared = "2021-07-16T10:10:00Z"
* whenHandedOver = "2021-07-16T10:24:00Z"