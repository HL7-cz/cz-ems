Profile: CZ_EncounterMissionEms
Parent: Encounter
Id: cz-encounter-mission-ems
Title: "Encounter Mission: EMS Report (CZ)"
Description: "This profile defines how to represent Encounter Mission resource in HL7 FHIR for the scope of this guide."

// A2.2.3 Čas výjezdu 1..1 Povinné Encounter.period.start
* period.start 1..1 MS
* period.start ^short = "Time the EMS unit departed for the incident"
* period.start ^definition = "Specifies the time when the emergency medical service (EMS) unit began its departure from the base or station to respond to the incident."

// * location.physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#si "Site"
// * location.location only Reference(CZ_LocationEms)

// A2.2.4 Čas příjezdu na místo události 1..1 Povinné Encounter.location[scene].period.start
* location.period.start ^short = "Arrival at incident scene time"
* location.period.start ^definition = "Specifies the time when the EMS unit arrived at the scene of the incident."
// A2.2.5 Čas odjezdu z místa události 1..1 Povinné Encounter.location[scene].period.end
* location.period.end ^short = "Time the EMS unit departed from the incident scene"
* location.period.end ^definition = "Specifies the time when the emergency medical service (EMS) unit left the scene of the incident to transport the patient or return to base."

// -------------------------------------------------------------
// Č A S Y  N A  M Í S T Ě  U D Á L O S T I  (SCÉNA)
// -------------------------------------------------------------
* location.period 1..1
// A2.2.4 Čas příjezdu na místo události 1..1 Povinné Encounter.location.period.start
* location.period.start 1..1 MS
// A2.2.5 Čas odjezdu z místa události 1..1 Povinné Encounter.location.period.end
* location.period.end 1..1 MS

// A2.2.7 Čas předání pacienta 1..1 Povinné Encounter.period.end
* period.end 1..1 MS
* period.end ^short = "Patient handover time"
* period.end ^definition = "Specifies the time when the EMS unit handed over the patient to the receiving facility or otherwise completed patient care at the destination."


