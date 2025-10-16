Instance: AttachmentEMS2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "AttachmentEMS2FHIRcz"
* title = "CZ Attachment Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Emergency Medical Service Report Attachment Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/AttachmentsCz"
* group[=].target = "https://fhir.hl7cr.eu/core/StructureDefinition/cz-attachment"
* group[=].element[+].code = #AttachmentsCz
* group[=].element[=].display = "A.2.11.1 - Attachments EMS"
* group[=].element[=].target.code = #CZ_Attachment
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #AttachmentsCz.type
* group[=].element[=].display = "A.2.11.1.1 - Attachment type"
* group[=].element[=].target.code = #content.type					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttachmentsCz.format
* group[=].element[=].display = "A.2.11.1.2 - Attachment format"
* group[=].element[=].target.code = #content.attachment.contentType					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.name
* group[=].element[=].display = "A.2.11.1.3 - Attachment name"
* group[=].element[=].target.code = #content.attachment.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttachmentsCz.description
* group[=].element[=].display = "A.2.11.1.4 - Attachment description"
* group[=].element[=].target.code = #content.description				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttachmentsCz.dateAndTimeOfAttachment
* group[=].element[=].display = "A.2.11.1.5 - Attachment date and time"
* group[=].element[=].target.code = #content.attachment.creation					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.document
* group[=].element[=].display = "A.2.11.1.6 - Document"
* group[=].element[=].target.code = #content.attachment.data				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/PresentedFormCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-composition-ems"
* group[=].element[+].code = #PresentedForm
* group[=].element[=].display = "A.4 - Presented Form"
* group[=].element[=].target.code = #Composition.extension:relatedArtifact.document
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PresentedForm.contentType
* group[=].element[=].display = "A.4.1 - Content type of presented form"
* group[=].element[=].target.code = #document.contentType					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PresentedForm.language
* group[=].element[=].display = "A.4.2 - Language of presented form"
* group[=].element[=].target.code = #document.language					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent		
* group[=].element[+].code = #PresentedForm.data
* group[=].element[=].display = "A.4.3 - Data of presented form"
* group[=].element[=].target.code = #document.data					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent				
* group[=].element[+].code = #PresentedForm.url
* group[=].element[=].display = "A.4.4 - URL of presented form"
* group[=].element[=].target.code = #document.url					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PresentedForm.title
* group[=].element[=].display = "A.4.5 - Title of presented form"
* group[=].element[=].target.code = #document.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #PresentedForm.creation
* group[=].element[=].display = "A.4.6 - Date and time of creation"
* group[=].element[=].target.code = #document.creation				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/AttachmentsCz"
* group[=].target = "https://fhir.hl7cr.eu/core/StructureDefinition/cz-attachment"
* group[=].element[+].code = #AttachmentsCz
* group[=].element[=].display = "A.5 - Additional attachments"
* group[=].element[=].target.code = #CZ_Attachment.content
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttachmentsCz.contentType
* group[=].element[=].display = "A.5.1 - Content type of additional attachments"
* group[=].element[=].target.code = #content.attachment.contentType					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttachmentsCz.language
* group[=].element[=].display = "A.5.2 - Language of additional attachments"
* group[=].element[=].target.code = #content.attachment.language					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.data
* group[=].element[=].display = "A.5.3 - Data of additional attachments"
* group[=].element[=].target.code = #content.attachment.data					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttachmentsCz.url
* group[=].element[=].display = "A.5.4 - URL of additional attachments"
* group[=].element[=].target.code = #content.attachment.url					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttachmentsCz.title
* group[=].element[=].display = "A.5.5 - Title of additional attachments"
* group[=].element[=].target.code = #content.attachment.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.creation
* group[=].element[=].display = "A.5.6 - Date and time of creation"
* group[=].element[=].target.code = #content.attachment.creation				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	