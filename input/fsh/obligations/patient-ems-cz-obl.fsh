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
* identifier insert OblCreator(#SHALL:able-to-populate,L3)
* name.given insert OblCreator(#SHALL:able-to-populate,L3)
* name.family insert OblCreator(#SHALL:able-to-populate,L3)
* name.text insert OblCreator(#SHALL:able-to-populate,L3) //can-send
* telecom insert OblCreator(#SHOULD:able-to-populate,L3) //can-send
* gender insert OblCreator(#SHALL:able-to-populate,L3)
* birthDate insert OblCreator(#SHALL:able-to-populate,L3)
* generalPractitioner insert OblCreator(#SHOULD:able-to-populate,L3) //can-send
* address insert OblCreator(#SHALL:able-to-populate,L3) //can-send

// Consumer obligations L3
* identifier insert OblConsumer(#SHALL:display,L3)
* name.given insert OblConsumer(#SHALL:display,L3)
* name.family insert OblConsumer(#SHALL:display,L3)
* name.text insert OblConsumer(#SHOULD:display,L3)
* telecom insert OblConsumer(#SHALL:display,L3)
* gender insert OblConsumer(#SHALL:display,L3)
* birthDate insert OblConsumer(#SHALL:display,L3)
* generalPractitioner insert OblConsumer(#SHOULD:display,L3)
* address insert OblConsumer(#SHALL:display,L3)

