Logical: LogEnAttachmentsEMSCz
Id: AttachmentsEMSCz
Title: "A.2.11 - Attachments EMS"
Description: """Emergency medical service Record - Single attachment or collection of attachments"""

* attachment 1..* Base "A.2.11.1 - Attachment" """Any attachment selected by the user"""
* type 1..1 CodeableConcept "A.2.11.1.1 - Attachment type" """Defines the attachment type"""
* format 1..1 CodeableConcept "A.2.11.1.2 - Attachment format" """Defines the attachment format"""
* name 0..1 string "A.2.11.1.3 - Attachment name" """Name that describes the attachment in more detail"""
* description 0..1 string "A.2.11.1.4 - Attachment description" """Additional attachment description"""
* dateAndTimeOfAttachment 1..1 dateTime "A.2.11.1.5 - Attachment date and time" """Date and time of attachment creation"""
* document 1..1 base64Binary "A.2.11.1.6 - Document" """Photo, video, PDF from device"""