Profile: CZ_ObservationMissionTimeObligationsEms
Parent: CZ_ObservationMissionTimeEms
Id: cz-observation-mission-time-obl-ems
Title:    "Observation Mission time point: Obligations"
Description: "This profile defines obligations for a mission time point observation in FHIR for the purpose of this guide."
// A.2.2 Časová osa výjezdu
// Creator Obligations L3 ============>
* code insert OblCreator(#SHALL:populate,L3)
* valueDateTime insert OblCreator(#SHALL:populate,L3)
* subject insert OblCreator(#SHALL:populate,L3)
* encounter insert OblCreator(#SHALL:populate,L3)
* focus insert OblCreator(#SHOULD:populate-if-known,L3)

// Consumer Obligations L3 ===========>
* code insert OblConsumer(#SHALL:display,L3)
* valueDateTime insert OblConsumer(#SHALL:display,L3)
* focus insert OblConsumer(#SHOULD:display,L3)
