// FSH Example for CZ Vehicle Location EMS Profile
// Interni identifikator vozidla ZZS
Instance: cz-vehicle-location-example
InstanceOf: CZ_VehicleLocationEms
Description: "Example of vehicle"
Usage: #example
Title: "Vehicle: Dispatch"
* id = "54d8ee67-8706-46a8-899e-12a54761d9d9"
// Povinné z profilu
* mode = #instance 
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#ve "Vehicle"

// --- Identifiers (slices) ---
// SPZ (registracni znacka)
* identifier[licensePlate][+].system = "https://ncez.mzcr.cz/fhir/sid/licensePlate"
* identifier[licensePlate][=].value = "8AB 1234"

// Lokace místa události/zásahu
Instance: cz-location-scene-example
InstanceOf: CZ_LocationEms
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
  * extension[addressPoint].valueIdentifier.value = "48.9661892N, 14.4702203E"