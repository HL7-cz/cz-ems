Profile: CZ_PractitionerObligationsEms
Parent: CZ_PractitionerCore
Id: cz-practitioner-obl-ems
Title:    "Practitioner: Obligations"
Description: "This profile defines obligations for a practitioner in FHIR for the purpose of this guide."

// consumer obligations L1 ===========>
* identifier[KRZP] insert OblConsumer(#SHALL:process,L1)
* name insert OblConsumer(#SHALL:display,L1)
* telecom insert OblConsumer(#SHOULD:display,L1)
* address insert OblConsumer(#SHOULD:display,L1)

// creator obligations L3 ============>
* identifier[KRZP] insert OblCreator(#SHALL:populate-if-known,L3)
* name insert OblCreator(#SHALL:able-to-populate,L3)
* telecom insert OblCreator(#SHOULD:able-to-populate,L3)
* address insert OblCreator(#SHOULD:able-to-populate,L3)

// consumer obligations L3 ===========>
* identifier[KRZP] insert OblConsumer(#SHALL:process,L3)
* name insert OblConsumer(#SHALL:display,L3)
* telecom insert OblConsumer(#SHOULD:display,L3)
* address insert OblConsumer(#SHOULD:display,L3)