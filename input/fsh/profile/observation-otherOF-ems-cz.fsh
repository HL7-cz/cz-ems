Profile: CZ_ObservationOtherOFEms
Parent: Observation
Id: cz-observation-OtherOF-ems
Title: "Observation - Other Objective Findings: EMS Report (CZ)"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch Objective Findings."

* ^experimental = false

* subject 1..1
* subject only Reference(CZ_PatientCore)
* code from CZ_ObservationOFTypeEmsVs

* value[x] only Quantity or string
* valueQuantity.system = $UCUM

* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the observation was made."
