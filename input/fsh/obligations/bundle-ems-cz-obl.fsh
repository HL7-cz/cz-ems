Profile: CZ_BundleObligationsEms
Parent: CZ_BundleEms
Id: cz-bundle-obl-ems
Title:    "Bundle: Obligations"
Description: "This profile defines obligations for the EMS report bundle in FHIR for the purpose of this guide."
// Creator Obligations L3 ============>
* identifier insert OblCreator(#SHALL:populate,L3)                       // A.1.6.1 ID dokumentu 1..1
* entry[provenance] insert OblCreator(#SHALL:populate-if-known,L3)       // A.1.7 Elektronické podpisy (podpis 0..*, časové razítko 0..1)

// Consumer Obligations L3 ===========>
* identifier insert OblConsumer(#SHALL:display,L3)
* entry[provenance] insert OblConsumer(#SHALL:display,L3)
