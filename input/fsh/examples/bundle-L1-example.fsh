Instance: cz-example-bundle-L1
InstanceOf: CZ_BundleEms
Title: "Bundle: EMS report L1"
Description: "Example of EMS report (Bundle) L1"
Usage: #example
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:89a06b89-b88a-4fa7-adaa-c7a8f8bed985"
* type = #document
* timestamp = "2022-10-07T08:15:00+01:00"

* entry[composition].fullUrl = "urn:uuid:0bb51b84-6b1e-456f-bdce-ddcfab64d712"
* entry[composition].resource = cz-example-composition-L1

* entry[encounter].fullUrl = "urn:uuid:abc47af0-bb9f-44ff-b9e8-4d2483a5d84c"
* entry[encounter].resource = cz-encounter-example-L1

* entry[patient].fullUrl = "urn:uuid:3b46c18c-7e07-4232-af3e-f710dec8e766"
* entry[patient].resource = cz-examplebase-patient

* entry[practitionerRole].fullUrl = "urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e"
* entry[practitionerRole].resource = cz-example-practitioner-role

Instance: cz-example-composition-L1
InstanceOf: CZ_CompositionEms
Title: "Composition: Novotný EMS - L1"
Description: "Example of composition for EMS document - L1"
Usage: #example
* id = "0bb51b84-6b1e-456f-bdce-ddcfab64d712"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Composition of EMS</div>"
* status = #final
* subject = Reference(urn:uuid:3b46c18c-7e07-4232-af3e-f710dec8e766)
* date = "2025-05-20T12:02:00+01:00"
* author = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)
* title = "EMS Pacienta Novotného"
* confidentiality = #N
* type = $loinc#67796-3 "EMS patient care report - version 3 Document NEMSIS"
* category = $loinc#18682-5 "Ambulance records"
* extension[presentedForm].valueAttachment = cz-pdf-example
* encounter = Reference(urn:uuid:abc47af0-bb9f-44ff-b9e8-4d2483a5d84c)

Instance: cz-encounter-example-L1
InstanceOf: CZ_EncounterEms
Usage: #example
Title: "Encounter: EMS Novotný"
Description: "Example of encounter for EMS document"
* id = "abc47af0-bb9f-44ff-b9e8-4d2483a5d84c"
* identifier[dispatchNumber].value = "852699001"
* identifier[dispatchNumber].use = #official
* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #EMER
