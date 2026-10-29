Profile: CZ_PatientObligationsEms
Parent: CZ_PatientCore
Id: cz-patient-obl-ems
Title:    "Patient: Obligations"
Description: "This profile defines obligations for an human Patient in FHIR for the purpose of this guide."

// Consumer obligations L1
* identifier insert OblConsumer(#SHALL:display,L1)
* name.given insert OblConsumer(#SHALL:display,L1)
* name.family insert OblConsumer(#SHALL:display,L1)
* name.text insert OblConsumer(#SHOULD:display,L1)
* telecom insert OblConsumer(#SHALL:display,L1)
* gender insert OblConsumer(#SHALL:display,L1)
* birthDate insert OblConsumer(#SHALL:display,L1)
* generalPractitioner insert OblConsumer(#SHOULD:display,L1)
* address insert OblConsumer(#SHALL:display,L1)

// Creator Obligations L3 ============>
* identifier insert OblCreator(#SHALL:populate,L3)
* name.given insert OblCreator(#SHALL:populate,L3)
* name.family insert OblCreator(#SHALL:populate,L3)
* name.text insert OblCreator(#SHOULD:populate-if-known,L3) //can-send
* telecom insert OblCreator(#SHALL:populate-if-known,L3) //can-send
* gender insert OblCreator(#SHALL:populate,L3)
* birthDate insert OblCreator(#SHALL:populate,L3)
* generalPractitioner insert OblCreator(#SHALL:populate-if-known,L3) //can-send
* address insert OblCreator(#SHALL:populate-if-known,L3) //can-send
* communication.language insert OblCreator(#SHALL:populate-if-known,L3)   // A.1.1.7 Komunikační jazyk 0..1
* contact insert OblCreator(#SHALL:populate-if-known,L3)                  // A.1.2.4 Zákonní zástupci a kontaktní osoby 0..*
* extension[patient-citizenship] insert OblCreator(#SHALL:populate-if-known,L3) // A.1.1.5 Státní občanství 0..*

// Consumer obligations L3
* identifier insert OblConsumer(#SHALL:display,L3)
* name.given insert OblConsumer(#SHALL:display,L3)
* name.family insert OblConsumer(#SHALL:display,L3)
* name.text insert OblConsumer(#SHOULD:display,L3)
* telecom insert OblConsumer(#SHALL:display,L3)
* gender insert OblConsumer(#SHALL:display,L3)
* birthDate insert OblConsumer(#SHALL:display,L3)
* generalPractitioner insert OblConsumer(#SHALL:display,L3)
* address insert OblConsumer(#SHALL:display,L3)
* communication.language insert OblConsumer(#SHALL:display,L3)
* contact insert OblConsumer(#SHALL:display,L3)
* extension[patient-citizenship] insert OblConsumer(#SHALL:display,L3)

