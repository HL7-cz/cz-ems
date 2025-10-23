Instance: ExampleBMIEms
InstanceOf: CZ_ObservationBMIEms
Usage: #example
Title: "Observation: BMI"
Description: "Example instance for BMI observation using the CZ_ObservationBMIEms profile."
* id = "5792aae8-20ba-4baa-90b3-311988fa5434"
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding = $sct#60621009
* code.coding[+] = $loinc#39156-5
* subject = Reference(urn:uuid:3b46c18c-7e07-4232-af3e-f710dec8e766)
* performer = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)
* valueQuantity.value = 29.3
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg/m2
* effectiveDateTime = 2020-06-01


Instance: ExampleBodyWeightEms
InstanceOf: CZ_ObservationWeightEms
Usage: #example
Title: "Observation: Body weight"
Description: "Example of body weight"
* id = "272d3f43-e7fb-4759-9ade-b9cf530d07ab"
* subject = Reference(urn:uuid:3b46c18c-7e07-4232-af3e-f710dec8e766)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding = $sct#424927000
* code.coding[+] = $loinc#29463-7
* valueQuantity.value = 95
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
Description: "Example of body height"
* id = "5114880a-a222-40eb-b67e-2e0780027e7c"
* subject = Reference(urn:uuid:3b46c18c-7e07-4232-af3e-f710dec8e766)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding = $sct#1162418000
* code.coding[+] = $loinc#8302-2
* valueQuantity.value = 180
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2020-06-01
* performer = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)

Instance: ExampleHearthRatesEms1
InstanceOf: CZ_ObservationVitalSignsEms
Usage: #example
Title: "Observation: Vital Signs (EMS CZ) Example"
Description: "Example instance for Vital Signs observation using the CZ_ObservationVitalSignsEms profile."
* id = "ce370af7-3c13-4b19-8870-a8a4fa6fd898"
* subject = Reference(urn:uuid:3b46c18c-7e07-4232-af3e-f710dec8e766)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding = $sct#364075005
* valueQuantity.value = 143
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM  
* valueQuantity.code = #/min
* effectiveDateTime = "2020-09-03T10:45:03+01:00"
* status = #final
* performer = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)

Instance: ExampleHearthRatesEms2
InstanceOf: CZ_ObservationVitalSignsEms
Usage: #example
Title: "Observation: Vital Signs (EMS CZ) Example"
Description: "Example instance for Vital Signs observation using the CZ_ObservationVitalSignsEms profile."
* id = "53f76fa0-c675-44fa-a816-d9416683c201"
* subject = Reference(urn:uuid:3b46c18c-7e07-4232-af3e-f710dec8e766)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding = $sct#364075005
* valueQuantity.value = 125
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM  
* valueQuantity.code = #/min
* effectiveDateTime = 2020-09-03T10:55:03+01:00
* status = #final
* performer = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)

Instance: ExampleRespitoryRatesEms1
InstanceOf: CZ_ObservationVitalSignsEms
Usage: #example
Title: "Observation: Vital Signs (EMS CZ) Example"
Description: "Example instance for Vital Signs observation using the CZ_ObservationVitalSignsEms profile."
* id = "5be4cac5-103c-4b5d-bf66-453da09b35ac"
* subject = Reference(urn:uuid:3b46c18c-7e07-4232-af3e-f710dec8e766)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding = $sct#86290005
* code.coding[+] = $loinc#9279-1
* valueQuantity.value = 16
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM  
* valueQuantity.code = #/min
* effectiveDateTime = 2020-09-03T10:45:03+01:00
* status = #final
* performer = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)

Instance: ExampleRespitoryRatesEms2
InstanceOf: CZ_ObservationVitalSignsEms
Usage: #example
Title: "Observation: Vital Signs (EMS CZ) Example"
Description: "Example instance for Vital Signs observation using the CZ_ObservationVitalSignsEms profile."
* id = "99ae9ec2-ab21-4afc-8fba-503f5fb34871"
* subject = Reference(urn:uuid:3b46c18c-7e07-4232-af3e-f710dec8e766)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding = $sct#86290005
* code.coding[+] = $loinc#9279-1
* valueQuantity.value = 14
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM  
* valueQuantity.code = #/min
* effectiveDateTime = 2020-09-03T10:55:03+01:00
* status = #final
* performer = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)