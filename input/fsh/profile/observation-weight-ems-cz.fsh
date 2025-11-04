Profile: CZ_ObservationWeightEms
Parent: Observation
Id: cz-observation-weight-ems
Title: "Observation - Anthropometric Data: EMS Report (CZ)"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch anthropometric data - weight."

* ^experimental = false

* subject 1..1
* subject only Reference(CZ_PatientCore)
* code from CZ_ObservationWeightTypeEmsVs
* value[x] only Quantity
* valueQuantity.code from CZ_ObservationUnitsWeightEmsVs
* valueQuantity ^short = "Weight in kg"
* valueQuantity ^definition = "The weight of the patient in kilograms."
/* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the observation was made."*/
