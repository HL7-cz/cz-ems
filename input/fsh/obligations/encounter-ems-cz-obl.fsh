Profile: CZ_EncounterObligationsEms
Parent: CZ_EncounterEms
Id: cz-encounter-obl-ems

// Creator Obligations L3 ============>
* period insert OblCreator(#SHALL:able-to-populate,L3)
* reasonCode insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer Obligations L3 ===========>
* identifier[dispatchNumber] insert OblConsumer(#SHALL:display,L3)
* reasonCode insert OblConsumer(#SHALL:display,L3)
