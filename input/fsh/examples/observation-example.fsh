Instance: ExampleBMIEms
InstanceOf: CZ_ObservationBMIEms
Usage: #example
Title: "BMI of patient"
Description: "Example instance for BMI observation using the CZ_ObservationBMIHdr profile."
* status = #final
* code.coding = $sct#60621009
* subject = Reference(cz-examplebase-patient)
* performer = Reference(practitionerEms)
* valueQuantity.value = 22.5
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg/m2


Instance: ExampleBodyWeightEms
InstanceOf: CZ_ObservationWeightEms
Usage: #example
Title: "Body weight of patient"
Description: "Example of body weight of Patient Mracena"
* subject = Reference(cz-examplebase-patient)
* category.coding = $sct#27113001
* code.coding = $sct#424927000
* valueQuantity.value = 66
* valueQuantity.unit = "kg"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg
* status = #final
* performer = Reference(practitionerEms)


Instance: ExampleBodyHeightEms
InstanceOf: CZ_ObservationHeightEms
Usage: #example
Title: "Body height of patient"
Description: "Example of body height of Patient Mracena"
* subject = Reference(cz-examplebase-patient)
* category.coding = $sct#1153637007
* code.coding = $sct#1162418000
* valueQuantity.value = 165
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* performer = Reference(practitionerEms)