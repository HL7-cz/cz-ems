Logical: LogEnAttachmentsCz
Id: AttachmentsCz
Title: "A.4 - Additional attachments"
Description: """EMS Report - additional attachments"""

* insert SetFmmandStatusRule ( 1, draft )

* attachment 1..* Base "A.4 - Attachment" """Any attachment selected by the user"""
  * type 1..1 CodeableConcept "A.4.1 - Attachment type" """Defines the attachment type"""
  * format 1..1 CodeableConcept "A.4.2 - Attachment format" """Defines the attachment format"""
  * name 0..1 string "A.4.3 - Attachment name" """Name that describes the attachment in more detail"""
  * description 0..1 string "A.4.4 - Attachment description" """Additional attachment description"""
  * dateAndTimeOfAttachment 1..1 dateTime "A.4.5 - Attachment date and time" """Date and time of attachment creation"""
  * document 1..1 base64Binary "A.4.6 - Document" """Photo, video, PDF from device"""