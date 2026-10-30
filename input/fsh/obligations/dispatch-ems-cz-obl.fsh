// A.2.1 Údaje o výjezdu - vozidlo, operátor ZOS a volající (posádka je v Encounter.participant)

Profile: CZ_VehicleLocationObligationsEms
Parent: CZ_VehicleLocationEms
Id: cz-vehicle-location-obl-ems
Title:    "Location - Vehicle: Obligations"
Description: "This profile defines obligations for an EMS vehicle in FHIR for the purpose of this guide."
// Creator Obligations L3 ============>
* identifier[licensePlate] insert OblCreator(#SHALL:populate,L3)       // A.2.1.2.1 Registrační značka 1..1
* identifier[callSign] insert OblCreator(#SHOULD:populate-if-known,L3)
* identifier[VIN] insert OblCreator(#SHOULD:populate-if-known,L3)
* identifier[helicopterId] insert OblCreator(#SHOULD:populate-if-known,L3)

// Consumer Obligations L3 ===========>
* identifier[licensePlate] insert OblConsumer(#SHALL:display,L3)
* identifier[callSign] insert OblConsumer(#SHOULD:display,L3)
* identifier[helicopterId] insert OblConsumer(#SHOULD:display,L3)



Profile: CZ_CommunicationObligationsEms
Parent: CZ_CommunicationEms
Id: cz-communication-obl-ems
Title:    "Communication: Obligations"
Description: "This profile defines obligations for an emergency call communication in FHIR for the purpose of this guide."
// Creator Obligations L3 ============>
* recipient insert OblCreator(#SHALL:populate,L3)                       // A.2.1.4 1..1
* sender insert OblCreator(#SHALL:populate-if-known,L3)                 // A.2.1.8 0..1

// Consumer Obligations L3 ===========>
* recipient insert OblConsumer(#SHALL:display,L3)
* sender insert OblConsumer(#SHALL:display,L3)
