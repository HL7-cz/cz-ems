Profile: CZ_ProcedureObligationsEms
Parent: CZ_ProcedureEms
Id: cz-procedure-obl-ems
Title:    "Procedure: Obligations"
Description: "This profile defines obligations for a procedure in FHIR for the purpose of this guide."

// TEST OBLIGATIONS  ====>
// Creator Obligations L3 ============>
* code insert OblCreator(#SHALL:populate-if-known,L3)
* text insert OblCreator(#SHALL:able-to-populate,L3)
* performedDateTime insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
* code insert OblConsumer(#SHALL:display,L3)
* text insert OblConsumer(#SHALL:display,L3)
* performedDateTime insert OblConsumer(#SHALL:display,L3)