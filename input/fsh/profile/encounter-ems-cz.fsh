Profile: CZ_EncounterEms
Parent: Encounter
Id: cz-encounter-ems
Title: "Encounter: EMS Report (CZ)"
Description: "This profile defines how to represent Encounter resource in HL7 FHIR for the scope of this guide."
* class = $v3-ActCode#EMER "emergency"

// A.2.1.1 Identifikace výjezdu
* identifier 1..* MS    // A.2.1.1
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "use"
* identifier ^slicing.rules = #open
* identifier contains dispatchNumber 1..1 MS and otherId 0..* MS
* identifier ^short = "Dispatch number"   
* identifier ^definition = "Unique number identifying the emergency response. May include the main dispatch number and any additional identifiers assigned by the EMS system." 

// A.2.1.1.1 Číslo výjezdu
* identifier[dispatchNumber].use = #official // A.2.1.1.1
* identifier[dispatchNumber].value 1..1      // A.2.1.1.1

// A.2.1.1.2 Další identifikátor výjezdu
* identifier[otherId].use = #secondary       // A.2.1.1.2
* identifier[otherId].value 1..1             // A.2.1.1.2

// A.2.1.7 Klasifikace výjezdu
* type 0..1 // A.2.1.7.2 Klasifikace výzvy (ZOS)
* type from CallClassificationEmsVS (required)
* type ^short = "Call classification (dispatch center classification)"
* type ^definition = "Preliminary information about the patient’s condition – “working diagnosis” – reason for dispatch"

// A.2.1.7.1 Urgentnost výjezdu
* priority 0..1
* priority ^short = "Urgency level of the dispatch"
* priority ^definition = "Indicates the urgency level assigned by the dispatch center."

// A.2.2 Časová osa výjezdu - jednotlivé časy jsou zaznamenány jako CZ_ObservationMissionTimeEms,
// period je pouze souhrnný interval výjezdu
* period 0..1
* period ^short = "Overall period of the EMS mission"
* period ^definition = "Summary period of the EMS mission. Individual time points of the mission timeline (A.2.2) are recorded as CZ_ObservationMissionTimeEms resources referencing this encounter."
// A.2.2.1 Čas oznámení události
* period.start 0..1
* period.start ^short = "Acceptance of the incident notification at the dispatch center (A.2.2.1)"
* period.start ^definition = "Same value as the mission time point 01 (A.2.2.1)."
// A.2.2.8 Čas ukončení výjezdu
* period.end 0..1
* period.end ^short = "Response end time (A.2.2.8)"
* period.end ^definition = "Same value as the mission time point 08 (A.2.2.8)."

// -------------------------------------------------------------
// S L I C I N G  pro Encounter.location  (musí být před použitím slice)
// -------------------------------------------------------------
* location ^slicing.discriminator.type = #value
* location ^slicing.discriminator.path = "physicalType"
* location ^slicing.rules = #open
* location ^slicing.description = "Slicing of Encounter.location for scene and destination."
* location contains
    scene 0..1 and             // CZ: místo zásahu (scéna)
    destination 0..1           // CZ: místo předání (cílové pracoviště)

* location[scene].physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#si "Site"
* location[scene].location only Reference(CZ_LocationEms)

* location[destination].physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"
* location[destination].location only Reference(CZ_LocationEms)

// Časy příjezdu a odjezdu (A.2.2.4 - A.2.2.7) se nezapisují do location.period, ale jako CZ_ObservationMissionTimeEms
* location.period ^short = "Not used for mission times - see CZ_ObservationMissionTimeEms"

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
    handingOverStaff 0..1 and
    receivingStaffId 0..1 and
    receivingStaffText 0..1
* extension[code] ^short = "Method of termination"
* extension[code].url only uri
* extension[code].valueCoding 1..
* extension[code].valueCoding only Coding
* extension[code].valueCoding from TerminationMethodEmsVS (required)
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
