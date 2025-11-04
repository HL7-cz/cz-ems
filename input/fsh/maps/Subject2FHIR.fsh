Instance: Subject2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "Subject2FHIR"
* title = "CZ Subject Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ EMS Report Subject Model to this guide mapping"""
* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogSubject"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* group[=].element[+].code = #Subject.identification					
* group[=].element[=].display = "A.1.1 Identification of the patient/subject"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #Subject.identification.givenName					
* group[=].element[=].display = "A.1.1.1 Given name"					
* group[=].element[=].target.code = #Patient.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent				
* group[=].element[+].code = #Subject.identification.familyName					
* group[=].element[=].display = "A.1.1.2 Familyname/surname"					
* group[=].element[=].target.code = #Patient.name.family					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Subject.identification.dateOfBirth					
* group[=].element[=].display = "A.1.1.3 Date of birth"					
* group[=].element[=].target.code = #Patient.birthDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent		
* group[=].element[+].code = #Subject.identification.dateOfDeath					
* group[=].element[=].display = "A.1.1.4 Date of death"					
* group[=].element[=].target.code = #Patient.deceased[x].deceasedDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent			
* group[=].element[+].code = #Subject.identification.identifier					
* group[=].element[=].display = "A.1.1.5 Patient identifier"					
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.identification.citizenship					
* group[=].element[=].display = "A.1.1.6 Citizenship"					
* group[=].element[=].target.code = #Patient.patient-citizenship					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.identification.gender					
* group[=].element[=].display = "A.1.1.7 Gender"					
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.identification.genderForClinicalUse					
* group[=].element[=].display = "A.1.1.8 Gender"					
* group[=].element[=].target.code = #Patient.extension:sex-for-clinical-use					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.identification.languageOfCommunication					
* group[=].element[=].display = "A.1.1.9 Language of communication"					
* group[=].element[=].target.code = #Patient.communication.language					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.identification.handicap					
* group[=].element[=].display = "A.1.1.10 Handicap"					
* group[=].element[=].target.code = #Patient.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.contactInfo					
* group[=].element[=].display = "A.1.2 Patient/subject related contact information"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Subject.contactInfo.address					
* group[=].element[=].display = "A.1.2.1 Address"					
* group[=].element[=].target.code = #Patient.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Subject.contactInfo.telecom					
* group[=].element[=].display = "A.1.2.2 Telecom"					
* group[=].element[=].target.code = #Patient.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician					
* group[=].element[=].display = "A.1.2.3 Prefered physician"					
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.contactInfo.legalRepresent					
* group[=].element[=].display = "A.1.2.4 Legal representatives and other contact persons"					
* group[=].element[=].target.code = #Patient.contact				
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.type					
* group[=].element[=].display = "A.1.2.4.1 Contact type"					
* group[=].element[=].target.code = #Patient.contact.relationship					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.relationToSubject					
* group[=].element[=].display = "A.1.2.4.2 Relationship to the patient"					
* group[=].element[=].target.code = #Patient.contact.relationship					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.identifier					
* group[=].element[=].display = "A.1.2.4.3 Person identifier"					
* group[=].element[=].target.code = #Patient.contact				
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.givenName					
* group[=].element[=].display = "A.1.2.4.4 Given name"					
* group[=].element[=].target.code = #Patient.contact.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.familyName					
* group[=].element[=].display = "A.1.2.4.5 Family name/surname"					
* group[=].element[=].target.code = #Patient.contact.name.family					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.address					
* group[=].element[=].display = "A.1.2.4.6 Contact person address"					
* group[=].element[=].target.code = #Patient.contact.address				
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.telecom					
* group[=].element[=].display = "A.1.2.4.7 Telecom"					
* group[=].element[=].target.code = #Patient.contact.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent