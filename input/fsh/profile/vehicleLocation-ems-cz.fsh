Profile: CZ_VehicleLocationEms
Parent: Location
Id: cz-vehicle-location-ems
Title: "Location - Vehicle (EMS CZ)"
Description: "Location resource used to identify an emergency response vehicle or other means of transport of the Emergency Medical Service (EMS)."
// A.2.1.2 Identifikace vozidla
* mode 1..1 MS
* mode = #instance                                // A.2.1.2
//physicalType #ve odpovídá položce vehicle
* physicalType 1..1 MS
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#ve "Vehicle" // A.2.1.2
* identifier 1..* MS                               // A.2.1.2.1 (min. jeden identifikátor)
* identifier.type 1..1 MS                          // A.2.1.2.1
* identifier.system 1..1 MS                        // A.2.1.2.1
* identifier.value 1..1 MS                         // A.2.1.2.1
* name 0..1 MS                                     // A.2.1.2.1 (pro zobrazení)
