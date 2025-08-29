Profile: CZ_ObservationVitalSignsEms
Parent: Observation
Id: cz-observation-vitalSigns-ems
Title: "Observation: Vital Signs (EMS CZ)"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch Vital signs."

* ^experimental = false

* subject 1..1
* subject only Reference(CZ_PatientCore)
* category.coding from $hl7-observation-category
* category.coding.code = #vital-signs
* code from CZ_ObservationVSTypeEmsVs
* value[x] only Quantity or string
* valueQuantity.system = $UCUM
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the observation was made."
