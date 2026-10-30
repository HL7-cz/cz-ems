Profile: CZ_LocationObligationsEms
Parent: CZ_LocationCore
Id: cz-location-obl-ems
Title:    "Location: Obligations"
Description: "This profile defines obligations for the incident scene, the dispatch start location and the receiving department in FHIR for the purpose of this guide."
// Místo události (Encounter.location[scene]) vyžaduje GPS (A.2.1.6.1 1..1), místo začátku výjezdu (Encounter.location[start]) adresu (A.2.1.5.1 1..1).
// Jeden profil Location slouží všem místům, proto jsou obě položky populate-if-known.
// Creator Obligations L3 ============>
* position insert OblCreator(#SHALL:populate-if-known,L3)           // A.2.1.6.1 Adresa - GPS
* address insert OblCreator(#SHALL:populate-if-known,L3)            // A.2.1.5.1, A.2.1.6.2 Adresa
* managingOrganization insert OblCreator(#SHALL:populate-if-known,L3) // A.2.10.1.3 Identifikace CPALP (u oddělení)

// Consumer Obligations L3 ===========>
* position insert OblConsumer(#SHALL:display,L3)
* address insert OblConsumer(#SHALL:display,L3)
* managingOrganization insert OblConsumer(#SHALL:display,L3)
