Profile: CZ_CompositionObligationsEms
Parent: CZ_CompositionEms
Id: cz-composition-obl-ems
Title:    "Composition: Obligations"
Description: "This profile defines obligations for a composition in FHIR for the purpose of this guide."
// Creator Obligations L3 ============>
* encounter insert OblCreator(#SHALL:populate,L3)
// A.1.6 Metadata dokumentu (A.1.6.1 ID dokumentu je na Bundle.identifier), A.1.4 Příjemce, A.1.5 Autor, A.3 Zobrazitelná forma
* type insert OblCreator(#SHALL:populate,L3)                                // A.1.6.2 1..1
* category insert OblCreator(#SHALL:populate,L3)                            // A.1.6.3 1..1
* status insert OblCreator(#SHALL:populate,L3)                              // A.1.6.4 1..1
* date insert OblCreator(#SHALL:populate,L3)                                // A.1.6.5 1..1
* title insert OblCreator(#SHALL:populate,L3)                               // A.1.6.6 1..1
* custodian insert OblCreator(#SHALL:populate-if-known,L3)                          // A.1.6.7 0..1
* confidentiality insert OblCreator(#SHALL:populate,L3)                     // A.1.6.8 1..1
* language insert OblCreator(#SHALL:populate,L3)                            // A.1.6.9 1..1
* extension[version] insert OblCreator(#SHALL:populate-if-known,L3)            // A.1.6.10 Verze 0..1
* author insert OblCreator(#SHALL:populate,L3)                              // A.1.5 1..*
* extension[informationRecipient] insert OblCreator(#SHALL:populate-if-known,L3) // A.1.4 0..*
* extension[presentedForm] insert OblCreator(#SHALL:populate,L3)            // A.3 1..*
// A.2 Sekce těla zprávy
* section[mission] insert OblCreator(#SHALL:populate,L3)                    // A.2.1.2 Identifikace vozidla 1..1
* section[dispatch] insert OblCreator(#SHALL:populate,L3)                   // A.2.1 1..1
* section[timeline] insert OblCreator(#SHALL:populate,L3)                   // A.2.2 1..1
* section[patientHx] insert OblCreator(#SHALL:populate-if-known,L3)         // A.2.3 0..1
* section[medicalDevices] insert OblCreator(#SHALL:populate-if-known,L3)    // A.2.3.1.2
* section[significantProcedures] insert OblCreator(#SHALL:populate-if-known,L3) // A.2.3.1.3 0..*
* section[allergies] insert OblCreator(#SHALL:populate,L3)                  // A.2.4 / A.2.4.1 1..*
* section[alert] insert OblCreator(#SHALL:populate-if-known,L3)             // A.2.4.2 0..*
* section[findings] insert OblCreator(#SHALL:populate-if-known,L3)          // A.2.6 0..1
* section[procedure] insert OblCreator(#SHALL:populate-if-known,L3)         // A.2.7 0..1
* section[diagnosticSummary] insert OblCreator(#SHALL:populate-if-known,L3) // A.2.8 0..1
* section[courseOfTreatment] insert OblCreator(#SHALL:populate-if-known,L3) // A.2.9.1 0..*
* section[recommendations] insert OblCreator(#SHALL:populate-if-known,L3)   // A.2.9.2 0..1
* section[payers] insert OblCreator(#SHALL:populate-if-known,L3)            // A.1.3 0..1
* section[attachments] insert OblCreator(#SHALL:populate-if-known,L3)       // A.4 0..*

// Consumer Obligations L3 ===========>
* encounter insert OblConsumer(#SHALL:display,L3)
* type insert OblConsumer(#SHALL:display,L3)
* category insert OblConsumer(#SHALL:display,L3)
* status insert OblConsumer(#SHALL:display,L3)
* date insert OblConsumer(#SHALL:display,L3)
* title insert OblConsumer(#SHALL:display,L3)
* custodian insert OblConsumer(#SHALL:display,L3)
* confidentiality insert OblConsumer(#SHALL:display,L3)
* language insert OblConsumer(#SHALL:display,L3)
* extension[version] insert OblConsumer(#SHALL:display,L3)
* author insert OblConsumer(#SHALL:display,L3)
* extension[informationRecipient] insert OblConsumer(#SHALL:display,L3)
* extension[presentedForm] insert OblConsumer(#SHALL:display,L3)
* section[mission] insert OblConsumer(#SHALL:display,L3)
* section[dispatch] insert OblConsumer(#SHALL:display,L3)
* section[timeline] insert OblConsumer(#SHALL:display,L3)
* section[patientHx] insert OblConsumer(#SHALL:display,L3)
* section[medicalDevices] insert OblConsumer(#SHALL:display,L3)
* section[significantProcedures] insert OblConsumer(#SHALL:display,L3)
* section[allergies] insert OblConsumer(#SHALL:display,L3)
* section[alert] insert OblConsumer(#SHALL:display,L3)
* section[findings] insert OblConsumer(#SHALL:display,L3)
* section[procedure] insert OblConsumer(#SHALL:display,L3)
* section[diagnosticSummary] insert OblConsumer(#SHALL:display,L3)
* section[courseOfTreatment] insert OblConsumer(#SHALL:display,L3)
* section[recommendations] insert OblConsumer(#SHALL:display,L3)
* section[payers] insert OblConsumer(#SHALL:display,L3)
* section[attachments] insert OblConsumer(#SHALL:display,L3)