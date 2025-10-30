Instance: cz-examplebase-patient
InstanceOf: CZ_PatientCore
Usage: #example
Title: "Patient: Novotny"
Description: "Patient Novotny with contact information and practitioner"
* id = "3b46c18c-7e07-4232-af3e-f710dec8e766"

* identifier[RC][+].system = "https://ncez.mzcr.cz/fhir/sid/rcis"
* identifier[RC][=].value = "7711260678"
* identifier[RC][=].use = #official
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "2066425387"
* identifier[CPOJ][+].system = "https://ncez.mzcr.cz/fhir/sid/cpoj"
* identifier[CPOJ][=].value = "7711260678"

//* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ
* name.use = #usual
* name.family = "Novotný"
* name.given = "Petr"
* telecom.system = #phone
* telecom.value = "+420601601601"
* telecom.use = #home
* gender = #female
* birthDate = "1977-11-26"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "Testovací 2517/87, 37005, České Budějovice"
* address[=].line[+] = "Testovací 2517/87"
* address[=].line[=].extension[streetName].valueString = "Testovací"
* address[=].line[=].extension[houseNumber].valueString = "2517/87"
* address[=].city = "České Budějovice"
* address[=].postalCode = "37005"
* address[=].country = "Česko"
  * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

* communication[+].language = urn:ietf:bcp:47#cs
* communication[=].preferred = true
* communication[+].language = urn:ietf:bcp:47#en
* communication[+].language = urn:ietf:bcp:47#de

* generalPractitioner.identifier.system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* generalPractitioner.identifier.value = "123456789"
* generalPractitioner.display = "MUDr. Josef Švejk"

* contact.relationship[+].coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#WIFE
* contact.name.family = "Novotná"
* contact.name.given = "Petra"
* contact.telecom.system = #phone
* contact.telecom.value = "+420602602602"

* maritalStatus.coding = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"


Instance: cz-examplebase-patient2
InstanceOf: CZ_PatientCore
Usage: #example
Title: "Patient: Otec"
Description: "Patient Otec"
* id = "d993c7bd-0420-403d-b5c2-de264a97994e"
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "2165425387"
* name.use = #usual
* name.family = "Novotný"
* name.given = "Karel"
* birthDate = "1951-10-23"