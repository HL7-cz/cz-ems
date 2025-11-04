Profile: CZ_ObservationHeightEms
Parent: Observation
Id: cz-observation-height-ems
Title: "Observation - Anthropometric Data - Height: EMS Report (CZ)"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch anthropometric data - height."

* ^experimental = false

* subject 1..1
* subject only Reference(CZ_PatientCore)
* code from CZ_ObservationHeightTypeEmsVs
* value[x] only Quantity
* valueQuantity.code from CZ_ObservationUnitsHeightEmsVs
* valueQuantity ^short = "Height in cm"
* valueQuantity ^definition = "The height of the patient in centimeters."

/* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the observation was made."*/