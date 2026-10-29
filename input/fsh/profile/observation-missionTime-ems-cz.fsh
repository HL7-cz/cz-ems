Profile: CZ_ObservationMissionTimeEms
Parent: Observation
Id: cz-observation-mission-time-ems
Title: "Observation: Mission time point (CZ EMS)"
Description: "Observation profile for recording one time point of the EMS mission timeline (A.2.2), e.g. dispatch notification, arrival at scene or patient handover."

* . ^short = "EMS mission: time point"

* status = #final

// A.2.2 Časový bod výjezdu
* code 1..1 MS
* code from MissionTimePointEmsVS (required)
* code ^short = "Mission time point"
* code ^definition = "Identifies which time point of the EMS mission timeline is recorded (A.2.2.1 - A.2.2.8)."

* subject 1..1 MS
* subject only Reference(CZ_PatientCore)

* encounter 1..1 MS
* encounter only Reference(CZ_EncounterEms)
* encounter ^short = "EMS mission the time point belongs to"

* focus 0..1 MS
* focus only Reference(CZ_VehicleLocationEms)
* focus ^short = "EMS vehicle the time point belongs to"
* focus ^definition = "Identifies the EMS vehicle (crew) the time point relates to, e.g. when more units take part in one mission."

* value[x] 1..1 MS
* value[x] only dateTime
* valueDateTime ^short = "Timestamp of the mission time point"
* valueDateTime ^definition = "Exact timestamp of the recorded mission time point."
