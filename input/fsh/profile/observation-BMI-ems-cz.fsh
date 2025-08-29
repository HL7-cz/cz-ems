Profile: CZ_ObservationBMIEms
Parent: Observation
Id: cz-observation-BMI-ems
Title: "Observation: Anthropometric Data - BMI (EMS CZ)"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch anthropometric data - BMI."

* ^experimental = false

// Required: BMI
* code = $sct#60621009 // "Body mass index (BMI)"
* value[x] only Quantity or string
* valueQuantity ^short = "BMI"
* valueQuantity ^definition = "The body mass index calculated from height and weight."

* subject 1..1
* subject only Reference(CZ_PatientCore)
/* effective[x] 1..1
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the observation was made."*/