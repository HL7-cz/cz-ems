Profile: CZ_EncounterObligationsEms
Parent: CZ_EncounterEms
Id: cz-encounter-obl-ems
Title: "Encounter EMS: Obligations"
Description: "This profile defines obligations for an encounter in FHIR for the purpose of this guide."
// Creator Obligations L3 ============>
* period insert OblCreator(#SHOULD:populate-if-known,L3)
* reasonCode insert OblCreator(#SHALL:populate-if-known,L3)
* hospitalization insert OblCreator(#SHALL:populate,L3)
* priority insert OblCreator(#SHALL:populate,L3)
* location[scene] insert OblCreator(#SHALL:populate,L3)
* identifier[dispatchNumber] insert OblCreator(#SHALL:populate,L3)                  // A.2.1.1.1 Číslo výjezdu 1..1
* identifier[otherId] insert OblCreator(#SHALL:populate-if-known,L3)                // A.2.1.1.2 Další identifikátor 0..*
* type insert OblCreator(#SHALL:populate,L3)                                        // A.2.1.7.2 Klasifikace výzvy 1..1
* hospitalization.extension[terminationMethod] insert OblCreator(#SHALL:populate,L3) // A.2.10.1.1 Způsob ukončení 1..1
* hospitalization.destination insert OblCreator(#SHALL:populate-if-known,L3)        // A.2.10.1.3 Identifikace CPALP 0..1

// Consumer Obligations L3 ===========>
* identifier[dispatchNumber] insert OblConsumer(#SHALL:display,L3)
* reasonCode insert OblConsumer(#SHALL:display,L3)
* hospitalization insert OblConsumer(#SHALL:display,L3)
* priority insert OblConsumer(#SHALL:display,L3)
* location[scene] insert OblConsumer(#SHALL:display,L3)
* identifier[otherId] insert OblConsumer(#SHALL:display,L3)
* type insert OblConsumer(#SHALL:display,L3)
* hospitalization.extension[terminationMethod] insert OblConsumer(#SHALL:display,L3)
* hospitalization.destination insert OblConsumer(#SHALL:display,L3)


