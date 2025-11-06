Profile: CZ_EncounterEms
Parent: Encounter
Id: cz-encounter-ems
Title: "Encounter: EMS Report (CZ)"
Description: "This profile defines how to represent Encounter resource in HL7 FHIR for the scope of this guide."

// A2.2.3 Čas výjezdu 1..1 Povinné Encounter.period.start
* period.start 1..1 MS
* period.start ^short = "Time the EMS unit departed for the incident"
* period.start ^definition = "Specifies the time when the emergency medical service (EMS) unit began its departure from the base or station to respond to the incident."
// A.2.2.8
* period ^short = "Response end time"
* period ^definition = "Specifies the time when the emergency medical service (EMS) unit formally completed the response, including all post-incident activities and documentation."

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

* location[scene].physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#si "Site"
* location[scene].location only Reference(CZ_LocationEms)
// A2.2.4 Čas příjezdu na místo události 1..1 Povinné Encounter.location[scene].period.start
* location[scene].period.start ^short = "Arrival at incident scene time"
* location[scene].period.start ^definition = "Specifies the time when the EMS unit arrived at the scene of the incident."
// A2.2.5 Čas odjezdu z místa události 1..1 Povinné Encounter.location[scene].period.end
* location[scene].period.end ^short = "Time the EMS unit departed from the incident scene"
* location[scene].period.end ^definition = "Specifies the time when the emergency medical service (EMS) unit left the scene of the incident to transport the patient or return to base."

* location[destination].physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"
* location[destination].location only Reference(CZ_LocationEms)
// A2.2.6 Čas příjezdu do místa předání 0..1 Požadované Encounter.location[destination].period.start
* location[destination].period.start ^short = "Arrival at destination time"
* location[destination].period.start ^definition = "Specifies the time when the EMS unit arrived at the destination facility or other location where the patient handover occurred."
// A2.2.7 Čas předání pacienta 1..1 Povinné Encounter.location[destination].period.end
* location[destination].period.end ^short = "Patient handover time"
* location[destination].period.end ^definition = "Specifies the time when the EMS unit handed over the patient to the receiving facility or otherwise completed patient care at the destination."


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

* hospitalization ^short = "Destination of the mission"
* hospitalization.extension contains
    TerminationMethod named terminationMethod 1..1 

Extension: TerminationMethod
Id: cz-ext-terminationMethod
Title: "Method of termination: EMS termination method for Encounter"
Description: "Termination method for Encounter"

* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"

* . ^definition = "Extension to define an encounter is caused by an accident and at which time the accident happened"
* extension contains
    code 1..1 and
    dateTime 0..1 and
    handingOverStaff 0..1 and
    receivingStaffId 0..1 and
    receivingStaffText 0..1
* extension[code] ^short = "Method of termination"
* extension[code].url only uri
* extension[code].valueCoding 1..
* extension[code].valueCoding only Coding
* extension[code].valueCoding from TerminationMethodEmsVS (required)
* extension[dateTime] ^short = "Timestamp of the termination"
* extension[dateTime].url only uri
* extension[dateTime].valueDateTime 1..
* extension[dateTime].valueDateTime only dateTime
* extension[dateTime].valueDateTime ^short = "date and time of accident"
* extension[handingOverStaff] ^short = "EMS handing-over staff identifier"
* extension[handingOverStaff].url only uri
* extension[handingOverStaff].valueIdentifier 1..
* extension[handingOverStaff].valueIdentifier only Identifier
* extension[handingOverStaff].valueIdentifier ^short = "identifier of EMS handing-over staff"
* extension[receivingStaffId] ^short = "Receiving CPALP healthcare professional identifier"
* extension[receivingStaffId].url only uri
* extension[receivingStaffId].valueIdentifier 1..
* extension[receivingStaffId].valueIdentifier only Identifier
* extension[receivingStaffId].valueIdentifier ^short = "identifier of receiving CPALP healthcare professional" 
* extension[receivingStaffText] ^short = "Receiving CPALP healthcare professional (text)"
* extension[receivingStaffText].url only uri
* extension[receivingStaffText].valueString 1..
* extension[receivingStaffText].valueString only string
* extension[receivingStaffText].valueString ^short = "text name of receiving CPALP healthcare professional"   
* url only uri
