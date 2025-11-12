Profile: CZ_ObservationMissionTimeStatusEMS
Parent: Observation
Id: cz-observation-mission-time-status-ems
Title: "Observation: Mission Time Status (CZ)"
Description: "This profile constrains the Observation resource for representing the various mission times with their specific status, e.g. alarm, arrival at patient, handover patient."

* . ^short = "CZ EMS Observation: Mission Time Status"

// typ časového údaje mise
* code 1..1 MS
* code only CodeableConcept
* code from ObservationTypeMissionTimeEmsVS (required)
* code ^short = "Mission time code"

// vlastní hodnota = čas
* value[x] only dateTime
* value[x] 1..1 MS
* valueDateTime ^short = "Timestamp of this mission time role"