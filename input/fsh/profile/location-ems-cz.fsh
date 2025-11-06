Profile: CZ_LocationEms
Parent: Location
Id: cz-location-ems
Title: "Location: EMS Report (CZ)"
Description: "Location profile for Emergency Medical Service"

* position 0..1     
* position ^short = "GPS coordinates of the location"
* position ^definition = "Specifies the geographic coordinates (latitude and longitude) of the location where the response was initiated or where the incident occurred."               
* address 0..1 
* address only CZ_Address 
* address ^short = "Address of the location"
* address ^definition = "Specifies the address of the relevant location related to the emergency response, either where the response was initiated or where the incident occurred. The address may be provided either as a structured postal address or as free text if structured data are not available."


Invariant: startloc-1
Description: "A location must have either an address or a position (coordinates) specified."
Severity: #error
Expression: "address.exists() or position.exists()"