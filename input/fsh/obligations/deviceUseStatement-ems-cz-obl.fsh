Profile: CZ_DeviceUseStatementObligationsEms
Parent: CZ_DeviceUseStatementHdr
Id: cz-deviceusestatement-obl-ems
Title:    "Device Use Statement: Obligations"
Description: "This profile defines obligations for the use of medical devices and implants in the patient history in FHIR for the purpose of this guide."
// A.2.3.1.2 Historie zdravotních pomůcek a implantátů
// Creator Obligations L3 ============>
* device insert OblCreator(#SHALL:populate,L3)                      // A.2.3.1.2 1..*
* timing[x] insert OblCreator(#SHALL:populate-if-known,L3)          // A.2.3.1.2.3 / A.2.3.1.2.4 Datum zavedení / odstranění
* reasonCode insert OblCreator(#SHALL:populate-if-known,L3)         // A.2.3.1.2.5 Důvod použití 0..*

// Consumer Obligations L3 ===========>
* device insert OblConsumer(#SHALL:display,L3)
* timing[x] insert OblConsumer(#SHALL:display,L3)
* reasonCode insert OblConsumer(#SHALL:display,L3)
