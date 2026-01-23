Profile: CZ_VehicleLocationEms
Parent: Location
Id: cz-vehicle-location-ems
Title: "Location - Vehicle: EMS Report (CZ)"
Description: "Location resource used to identify an emergency response vehicle or other means of transport of the Emergency Medical Service (EMS)."
// A.2.1.2 Identifikace vozidla
* mode 1..1 MS
* mode = #instance                                // A.2.1.2
//physicalType #ve odpovídá položce vehicle
* physicalType 1..1 MS
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#ve "Vehicle" // A.2.1.2

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "Unique identifier of the vehicle (e.g., license plate number, call sign)"

* identifier contains licensePlate 0..1 MS
* identifier[licensePlate]
  * ^short = "License plate (SPZ/RZ)"
  * ^definition = "State registration plate of the vehicle (license plate)."
* identifier[licensePlate].system = "https://ncez.mzcr.cz/fhir/sid/licensePlate" (exactly)
* identifier[licensePlate].value 1..1

* identifier contains VIN 0..1 MS
* identifier[VIN]
  * ^short = "VIN"
  * ^definition = "International Vehicle Identification Number (17 characters)."
* identifier[VIN].system = "https://ncez.mzcr.cz/fhir/sid/vin" (exactly)
* identifier[VIN].value 1..1

* identifier contains callSign 0..1 MS
* identifier[callSign]
  * ^short = "Call sign"
  * ^definition = "Radio call sign of the crew/vehicle used by dispatch."
* identifier[callSign].system = "https://ncez.mzcr.cz/fhir/sid/call-sign" (exactly)
* identifier[callSign].value 1..1

* identifier contains helicopterId 0..1 MS
* identifier[helicopterId]
  * ^short = "Helicopter ID"
  * ^definition = "Aircraft Registration ID (e.g., OK-NIK)."
* identifier[helicopterId].system = "https://ncez.mzcr.cz/fhir/sid/helicopterId" (exactly)
* identifier[helicopterId].value 1..1

// ---- Invariant pro VIN ----
Invariant: vin-17chars
Description: "VIN must be exactly 17 alphanumeric characters (excluding I, O, Q)."
Severity: #warning
Expression: "value.matches('^[A-HJ-NPR-Z0-9]{17}$')"

Invariant: identifier-any
Description: "At least one vehicle identifier (license plate, VIN, call sign or helicopter ID) must be present."
Severity: #error
Expression: "identifier.where(system = 'https://ncez.mzcr.cz/fhir/sid/licensePlate' or
                           system = 'https://ncez.mzcr.cz/fhir/sid/vin' or
                           system = 'https://ncez.mzcr.cz/fhir/sid/call-sign' or
                           system = 'https://ncez.mzcr.cz/fhir/sid/helicopterId').exists()"

