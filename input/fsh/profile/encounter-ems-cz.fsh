Profile: CZEncounterEMS
Parent: Encounter
Id: cz-encounter-ems
Title: "Encounter EMS (CZ)"
Description: "This profile defines how to represent Encounter resource in HL7 FHIR for the scope of this guide."

// A2.2.3 Čas výjezdu 1..1 Povinné Encounter.period.start
* period.start 1..1 MS

// -------------------------------------------------------------
// S L I C I N G  pro Encounter.location  (musí být před použitím slice)
// -------------------------------------------------------------
* location ^slicing.discriminator.type = #value
* location ^slicing.discriminator.path = "physicalType"
* location ^slicing.rules = #open
* location ^slicing.description = "Slicing of Encounter.location for scene and destination."
* location contains
    scene 1..1 and             // CZ: místo zásahu (scéna)
    destination 0..1           // CZ: místo předání (cílové pracoviště)

* location[scene] ^short = "Incident scene"
* location[scene] ^definition = "The incident scene location for the EMS run."
* location[destination] ^short = "Destination facility"
* location[destination] ^definition = "The receiving/destination location for the EMS run."

// -------------------------------------------------------------
// Č A S Y  N A  M Í S T Ě  U D Á L O S T I  (SCÉNA)
// -------------------------------------------------------------
* location[scene].period 1..1
// A2.2.4 Čas příjezdu na místo události 1..1 Povinné Encounter.location[scene].period.start
* location[scene].period.start 1..1 MS
// A2.2.5 Čas odjezdu z místa události 1..1 Povinné Encounter.location[scene].period.end
* location[scene].period.end 1..1 MS

// -------------------------------------------------------------
// Č A S Y  V  M Í S T Ě  P Ř E D Á N Í  (DESTINATION)
// -------------------------------------------------------------
* location[destination].period 0..1
// A2.2.6 Čas příjezdu do místa předání 0..1 Požadované Encounter.location[destination].period.start
* location[destination].period.start 0..1
// A2.2.7 Čas předání pacienta 1..1 Povinné Encounter.location[destination].period.end
* location[destination].period.end 1..1 MS

// A2.2.8 Čas ukončení výjezdu 0..1 Volitelné Encounter.period.end
* period.end 0..1

