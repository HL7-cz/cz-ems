Instance: ExampleBMIEms
InstanceOf: CZ_ObservationBMIEms
Usage: #example
Title: "Observation: BMI"
Description: "Example instance for BMI observation using the CZ_ObservationBMIEms profile."
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding = $sct#60621009
* code.coding[+] = $loinc#39156-5
* subject = Reference(cz-examplebase-patient)
* performer = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)
* valueQuantity.value = 22.5
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg/m2
* effectiveDateTime = 2020-06-01


Instance: ExampleBodyWeightEms
InstanceOf: CZ_ObservationWeightEms
Usage: #example
Title: "Observation: Body weight"
Description: "Example of body weight of Patient Mracena"
* subject = Reference(cz-examplebase-patient)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding = $sct#424927000
* code.coding[+] = $loinc#29463-7
* valueQuantity.value = 66
* valueQuantity.unit = "kg"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg
* status = #final
* effectiveDateTime = 2020-06-01
* performer = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)


Instance: ExampleBodyHeightEms
InstanceOf: CZ_ObservationHeightEms
Usage: #example
Title: "Observation: Body height"
Description: "Example of body height of Patient Mracena"
* subject = Reference(cz-examplebase-patient)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding = $sct#1162418000
* code.coding[+] = $loinc#8302-2
* valueQuantity.value = 165
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2020-06-01
* performer = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)