Profile: CZ_ObservationGCSEms
Parent: Observation
Id: cz-observation-gcs-ems
Title: "Observation - Glasgow Coma Scale (GCS/Adelaide): EMS Report (CZ)"
Description: "Glasgow Coma Scale represented as a single Observation with total score and three required subscores (eye, verbal, motor) as components."
* ^experimental = false

// --- subject & timing like Vital Signs
* subject 1..1
* subject only Reference(CZ_PatientCore)

* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the coma score was assessed."

// --- categorize similarly to vital signs (you can switch to #survey if you prefer)
* category 1..1
* category.coding 1..1
* category.coding from $hl7-observation-category (extensible)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #vital-signs (exactly)

// --- the scale (adult vs pediatric) is expressed in Observation.code
* code 1..1
* code from CZ_ObservationComaScoreTypeEmsVs (required)

// --- total score
* value[x] 1..1
* value[x] only integer
* valueInteger ^short = "Total coma score (sum of subscores)"

// =======================================================
// Components (required 3 subscores)
// =======================================================

* component 3..3

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Subscores eye/verbal/motor as components."

* component contains
    eyeOpening 1..1 and
    verbalResponse 1..1 and
    motorResponse 1..1

* component[eyeOpening].code 1..1
* component[eyeOpening].code = $sct#281395000 "Glasgow Coma Score eye opening subscore" (exactly)
* component[eyeOpening].value[x] 1..1
* component[eyeOpening].value[x] only integer

* component[verbalResponse].code 1..1
* component[verbalResponse].code = $sct#281397008 "Glasgow Coma Scale verbal response subscore" (exactly)
* component[verbalResponse].value[x] 1..1
* component[verbalResponse].value[x] only integer

* component[motorResponse].code 1..1
* component[motorResponse].code = $sct#281396004 "Glasgow Coma Scale motor response subscore" (exactly)
* component[motorResponse].value[x] 1..1
* component[motorResponse].value[x] only integer





// =======================================================
// ValueSets
// =======================================================

ValueSet: CZ_ObservationComaScoreTypeEmsVs
Id: cz-observation-comaScore-type-ems-vs
Title: "Observation Coma Score Type (CZ EMS)"
Description: "Allowed coma score scales: adult GCS and pediatric Adelaide."
* $sct#248241002 "Glasgow coma score"
* $sct#443881004 "Adelaide pediatric coma score"

ValueSet: CZ_ObservationComaScoreComponentTypeEmsVs
Id: cz-observation-comaScore-component-type-ems-vs
Title: "Observation Coma Score Component Type (CZ EMS)"
Description: "Subscores for coma score."
* $sct#281396004 "Glasgow Coma Scale motor response subscore"
* $sct#281397008 "Glasgow Coma Scale verbal response subscore"
* $sct#281395000 "Glasgow Coma Score eye opening subscore"