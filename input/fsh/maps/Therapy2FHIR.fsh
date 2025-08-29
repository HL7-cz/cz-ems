Instance: Therapy2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "Therapy2FHIRcz"
* title = "CZ Therapy Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ EMS Report Therapy Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/TherapyEmsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-procedure-ems"
* group[=].element[+].code = #TherapyEmsCz.Procedure
* group[=].element[=].display = "A.2.7.1 Procedures"
* group[=].element[=].target.comment = "Composition.section:procedure.entry.ofType(CZ_ProcedureEms)"				
* group[=].element[=].target.code = #Composition.section:procedure
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Procedure.name
* group[=].element[=].display = "A.2.7.1.1 Procedure name"
* group[=].element[=].target.code = #CZ_ProcedureEms.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.date
* group[=].element[=].display = "A.2.7.1.2 Date and time of performance"
* group[=].element[=].target.code = #CZ_ProcedureEms.performedDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.medicalDevices
* group[=].element[=].display = "A.2.7.2 Medical devices"
* group[=].element[=].target.code = #CZ_ProcedureEms.usedReference
* group[=].element[=].target.display = "CZ_ProcedureEms.usedReference.ofType(CZ_MedicalDevice)"
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.medication
* group[=].element[=].display = "A.2.7.3 Medication"
* group[=].element[=].target.code = #CZ_ProcedureEms.usedReference
* group[=].element[=].target.display = "CZ_ProcedureEms.usedReference.ofType(CZ_MedicationAdministration)"
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/TherapyEmsCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-medical-device"
* group[=].element[+].code = #TherapyEmsCz.MedicalDevices
* group[=].element[=].display = "A.2.7.2 Medical devices"
* group[=].element[=].target.code = #CZ_ProcedureEms.usedReference			
* group[=].element[=].target.comment = "CZ_ProcedureEms.usedReference.ofType(CZ_MedicationDevice)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #MedicalDevices.description
* group[=].element[=].display = "A.2.7.2.1 Description of the medical device"
* group[=].element[=].target.code = #Device.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #MedicalDevices.id
* group[=].element[=].display = "A.2.7.2.2 Device identifier"
* group[=].element[=].target.code = #Device.id
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-MedicationAdministration"
* group[=].element[+].code = #TherapyEmsCz.Medication
* group[=].element[=].display = "A.2.7.3 Medication"
* group[=].element[=].target.code = #CZ_ProcedureEms.usedReference			
* group[=].element[=].target.comment = "CZ_ProcedureEms.usedReference.ofType(CZ_MedicationAdministration)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Medication.codeSUKL
* group[=].element[=].display = "A.2.7.3.1 SUKL Code"
* group[=].element[=].target.code = #CZ_MedicationAdministration.medication.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Medication.medicinalProductName
* group[=].element[=].display = "AA.2.7.3.2 Name of the medicinal product"
* group[=].element[=].target.code = #CZ_MedicationAdministration.medication.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.groupATC
* group[=].element[=].display = "A.2.7.3.3 ATC group"
* group[=].element[=].target.code = #CZ_MedicationAdministration.Medication[x].code
* group[=].element[=].target.display = "Additional Bindings to DLP ATC"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.activeSubstances
* group[=].element[=].display = "A.2.7.3.4 Active substances"
* group[=].element[=].target.code = #CZ_MedicationAdministration.Medication[x].item[x]:itemCodeableConcept	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.strength
* group[=].element[=].display = "A.2.7.3.5 Strength"
* group[=].element[=].target.code = #CZ_MedicationAdministration.Medication[x].ingredient.strength
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.medicinalForm
* group[=].element[=].display = "A.2.7.3.6 Form of the medicinal product"
* group[=].element[=].target.code = #CZ_MedicationAdministration.Medication[x].form
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.administeredQuantity
* group[=].element[=].display = "A.2.7.3.7 Dosage"
* group[=].element[=].target.code = #CZ_MedicationAdministration.dosage.dose
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.routeOfAdministration
* group[=].element[=].display = "A.2.7.3.8 Route of administration"
* group[=].element[=].target.code = #CZ_MedicationAdministration.dosage.route
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.dateOfAdministration
* group[=].element[=].display = "A.2.4.7.6 - Start date and time"
* group[=].element[=].target.code = #CZ_MedicationAdministration.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent