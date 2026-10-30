// FSH Example for CZ Vehicle Location EMS Profile
// Interni identifikator vozidla ZZS
Instance: cz-vehicle-location-example
InstanceOf: CZ_VehicleLocationEms
Description: "Example of vehicle"
Usage: #inline
Title: "Vehicle: Dispatch"
* id = "54d8ee67-8706-46a8-899e-12a54761d9d9"
// Povinné z profilu
* mode = #instance 
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#ve "Vehicle"

// --- Identifiers (slices) ---
// SPZ (registracni znacka)
* identifier[licensePlate][+].system = "https://ncez.mzcr.cz/fhir/sid/licensePlate"
* identifier[licensePlate][=].value = "8AB 1234"

* identifier[VIN].system = "https://ncez.mzcr.cz/fhir/sid/vin"
* identifier[VIN].value = "1HGCR2487M1234567"

* identifier[callSign].system = "https://ncez.mzcr.cz/fhir/sid/call-sign"
* identifier[callSign].value = "KRYSTOF_06"

// Lokace místa události/zásahu
Instance: cz-location-scene-example
InstanceOf: CZ_LocationCore
Usage: #example
Description: "Example of scene location"
Title: "Location: Scene"
* id = "3f4f637d-f274-40c5-87da-9a9c1ade3ade"
* address
  * text = "5. května 1024, 373 84 Kamenný Újezd, Česká republika"
  * line[0] = "5. května 1024"
  * city = "Praha"
  * postalCode = "373 84"
  * country = "CZ"
* position.latitude = 48.9661892
* position.longitude = 14.4702203

// Oddělení přijímajícího poskytovatele (CPALP) - A.2.10.1.3 / A.2.10.1.4
Instance: cz-location-department-example
InstanceOf: CZ_LocationCore
Usage: #example
Description: "Example of the receiving department of the healthcare provider (CPALP)"
Title: "Location: Receiving department"
* id = "3936c640-8958-402f-b05e-c0aeab636927"
* status = #active
* name = "Interní klinika - urgentní příjem"
* managingOrganization = Reference(urn:uuid:821077d6-ce17-4602-b3ad-d4bef845a950)
