Invariant: one-comp
Description: "A EMS report bundle SHALL include one and only one Composition"
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity:    #error

//==========================
// PROFILE
//==========================
Profile: CZ_BundleEms
Parent: Bundle
Id: cz-bundle-ems
Title: "Bundle: EMS Report (CZ)"
Description: "Clinical document used to represent a EMS Report for the scope of this guide."
* ^purpose = "EMS report bundle is an electronic health record."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "EMS Report Bundle"
* . ^definition = "Emergency medical service Report Bundle. \r\nA container for a collection of resources in the EMS report document."

* insert SetFmmandStatusRule ( 0, draft )

* obeys one-comp

* identifier ^short = "Business identifier for this Imaging Report"
* identifier 1..
* type = #document
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0

* signature ^short = "Digital Signature of this report"
* signature only CZ_Signature

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry.resource 1..
* entry contains composition 1..1
* entry[composition].resource only CZ_CompositionEms

* entry contains patient 1..*
* entry[patient].resource only CZ_PatientCore or CZ_PatientAnimal

* entry contains organization 0..*
* entry[organization].resource only CZ_OrganizationCore

* entry contains practitioner 0..*
* entry[practitioner].resource only CZ_PractitionerCore

* entry contains encounter 1..*
* entry[encounter].resource only CZ_Encounter

* entry contains attachment 0..*
* entry[attachment].resource only CZ_Logo or CZ_Attachment