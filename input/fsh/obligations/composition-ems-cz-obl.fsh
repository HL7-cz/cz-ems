Profile: CZ_CompositionEms
Parent: Composition
Id: cz-composition-obl-ems
Title: "Composition: Obligations"
Description: "This profile defines obligations for a composition in FHIR for the purpose of this guide."
// Creator Obligations L3 ============>
* type insert OblCreator(#SHALL:able-to-populate,L3)
* priority insert OblCreator(#SHALL:able-to-populate,L3)
* location[scene] insert OblCreator(#SHALL:able-to-populate,L3)
* location[destination] insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer Obligations L3 ===========>
* type insert OblConsumer(#SHALL:display,L3)
* priority insert OblConsumer(#SHALL:display,L3)
* location[scene] insert OblConsumer(#SHALL:display,L3)