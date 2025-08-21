Instance: InLine-patient-group-01
InstanceOf: Group
Usage: #example
Description: "Groupe de patient pour exemple de délivrance reglobalisée"
* type = #person
* actual = true
* member[0].entity = Reference(Patient/14602)
* member[+].entity = Reference(Patient/14603)
* member[+].entity = Reference(Patient/14604)