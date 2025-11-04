Profile: CZ_ObservationOxygenEms
Parent: Observation
Id: cz-observation-oxygen-ems
Title: "Observation - Oxygen Therapy: EMS Report (CZ)"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch VitalSigns - Oxygen Therapy."
//* extension contains CZOxygenFlowRate named flowRate 0..1

* code = $sct#57485005 "Oxygen therapy"
* subject only  Reference(CZ_PatientCore)
* valueBoolean 1..1
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the observation was made."

* component 0..1
* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains OxygenFlowRate 0..1
* component[OxygenFlowRate].code = $sct#427081008 "Delivered oxygen flow rate"
* component[OxygenFlowRate].valueQuantity 1..1
* component[OxygenFlowRate].valueQuantity.value 1..1
* component[OxygenFlowRate].valueQuantity.unit = "L/min"
* component[OxygenFlowRate].valueQuantity.system = "http://unitsofmeasure.org"