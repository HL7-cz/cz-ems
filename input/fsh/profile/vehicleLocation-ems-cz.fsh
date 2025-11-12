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
* identifier ^short = "Vehicle Identifier"
* identifier ^definition = "Unique identifier of the vehicle (e.g., license plate number, call sign)"

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

* identifier contains
    licensePlate 0..1 MS and
    callSign     0..1 MS and
    vin          0..1 MS and
    helicopterId 0..1 MS

// SPZ
* identifier[licensePlate].type 1..1
* identifier[licensePlate].type from CZVehicleIdentifierTypeVS (required)
* identifier[licensePlate].type = CZVehicleIdentifierTypeCS#license-plate "License plate (SPZ/RZ)"
* identifier[licensePlate].value 1..1
* identifier[licensePlate].assigner 0..1
* identifier[licensePlate] ^short = "License plate"
* identifier[licensePlate] ^definition = "State registration plate of the vehicle (license plate)."

// Call sign
* identifier[callSign].type 1..1
* identifier[callSign].type = CZVehicleIdentifierTypeCS#call-sign "Call sign"
* identifier[callSign].value 1..1
* identifier[callSign].assigner 0..1
* identifier[callSign] ^short = "Call sign"
* identifier[callSign] ^definition = "Radio call sign of the crew/vehicle used by dispatch."

// VIN
* identifier[vin].type 1..1
* identifier[vin].type = CZVehicleIdentifierTypeCS#vin "Vehicle Identification Number (VIN)"
* identifier[vin].value 1..1
* identifier[vin].assigner 0..1
* identifier[vin] ^short = "VIN"
* identifier[vin] ^definition = "International Vehicle Identification Number (17 characters)."
* identifier[vin].value obeys vin-17chars


// Letecká imatrikulace (např. OK-NIK).
* identifier[helicopterId].type 1..1
* identifier[helicopterId].type = CZVehicleIdentifierTypeCS#helicopter-id "Helicopter ID"
* identifier[helicopterId].value 1..1
* identifier[helicopterId].assigner 0..1
* identifier[helicopterId] ^short = "Helicopter ID"
* identifier[helicopterId] ^definition = "Aircraft Registration ID (e.g., OK-NIK)."


// ---- Invariant pro VIN ----
Invariant: vin-17chars
Description: "VIN must be exactly 17 alphanumeric characters (excluding I, O, Q)."
Severity: #warning
Expression: "value.matches('^[A-HJ-NPR-Z0-9]{17}$')"

