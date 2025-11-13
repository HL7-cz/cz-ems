Profile: CZ_ObservationArrivalAtDestinationTimeEMS
Parent: Observation
Id: cz-observation-arrival-at-destination-time-ems
Title: "Observation: Arrival at destination time (CZ EMS)"
Description: "Observation profile for recording the EMS mission timestamp A2.2.6 - time when the EMS unit arrived at the destination facility or patient transfer point."

* . ^short = "EMS mission: arrival at destination time"


// A2.2.6 Čas příjezdu do místa předání
* code 1..1 MS
* code = $loinc#69476-0
* code ^short = "Arrival at destination/transfer point"
* code ^definition = "Time when the responding EMS unit arrived at the destination facility or patient transfer point."

* value[x] only dateTime
* value[x] 1..1 MS
* valueDateTime ^short = "Timestamp of arrival at destination"
* valueDateTime ^definition = "Exact timestamp representing the EMS unit's arrival at the destination or transfer point."
