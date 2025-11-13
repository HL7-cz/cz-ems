Profile: CZ_ObservationMissionTimeStatusEMS
Parent: Observation
Id: cz-observation-mission-time-status-ems
Title: "Observation: Mission Time Status (CZ)"
Description: "This profile constrains the Observation resource for representing the various mission times with their specific status, e.g. alarm, arrival at patient, handover patient."

* . ^short = "CZ EMS Observation: Mission Time Status"

//A2.2.6	Čas příjezdu do místa předání
* code 1..1 MS
* code = $loinc#69476-0
* code ^short = "Responding unit arrived with the patient at the destination or transfer point [Date and time] Vehicle"

// vlastní hodnota = čas
* value[x] only dateTime
* value[x] 1..1 MS
* valueDateTime ^short = "Timestamp of this mission time role"