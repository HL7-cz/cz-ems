Profile: CZ_LocationEms
Parent: Location
Id: cz-location-ems
Title: "Location for Emergency Medical Service"
Description: "Location profile for Emergency Medical Service"

* position 1..1 MS                    
* address 0..1 MS                     

Invariant: startloc-1
Description: "A location must have either an address or a position (coordinates) specified."
Severity: #error
Expression: "address.exists() or position.exists()"