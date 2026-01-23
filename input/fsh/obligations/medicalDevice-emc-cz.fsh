Profile: CZ_MedicalDeviceObligationsEms
Parent: CZ_MedicalDevice
Id: cz-medicaldevice-obl-ems
Title:    "Medical Device: Obligations"
Description: "This profile defines obligations for a medical device in FHIR for the purpose of this guide."

// Creator Obligations L3 ============>
* identifier insert OblCreator(#SHALL:able-to-populate,L3)
* deviceName.name insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer Obligations L3 ===========>
* identifier insert OblConsumer(#SHALL:display,L3)
* deviceName.name insert OblConsumer(#SHALL:display,L3)
