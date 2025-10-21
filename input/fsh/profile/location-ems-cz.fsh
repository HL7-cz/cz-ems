Profile: CZ_LocationEms
Parent: Location
Id: cz-location-ems
Title: "Location: (EMS CZ)"
Description: "Location profile for Emergency Medical Service"

* position 0..1                    
* address 0..1 
* address only CZ_Address                     

Invariant: startloc-1
Description: "A location must have either an address or a position (coordinates) specified."
Severity: #error
Expression: "address.exists() or position.exists()"