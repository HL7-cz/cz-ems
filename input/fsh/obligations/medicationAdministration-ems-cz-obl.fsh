Profile: CZ_MedicationAdministrationObligationsEms
Parent: CZ_MedicationAdministrationCore
Id: cz-medication-administration-obl-ems
Title:    "Medication Administration: Obligations"
Description: "This profile defines obligations for a medication administration in FHIR for the purpose of this guide."
// A.2.7.3 Medikace
// Creator Obligations L3 ============>
* medication[x] insert OblCreator(#SHALL:populate,L3)          // A.2.7.3.1 Kód SUKL 1..1
* dosage.dose insert OblCreator(#SHALL:populate-if-known,L3)   // A.2.7.3.7 Dávkování 0..1
* dosage.route insert OblCreator(#SHALL:populate-if-known,L3)  // A.2.7.3.8 Cesta podání 0..1
* effective[x] insert OblCreator(#SHALL:populate-if-known,L3)  // A.2.7.3.9 Datum a čas podání 0..1

// Consumer Obligations L3 ===========>
* medication[x] insert OblConsumer(#SHALL:display,L3)
* dosage.dose insert OblConsumer(#SHALL:display,L3)
* dosage.route insert OblConsumer(#SHALL:display,L3)
* effective[x] insert OblConsumer(#SHALL:display,L3)
