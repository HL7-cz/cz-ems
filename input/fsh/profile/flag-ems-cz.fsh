Profile: CZ_FlagEMS
Parent: Flag
Id: cz-flag-ems
Title: "Flag: (EMS CZ)"
Description: """This profile constrains the Flag resource for the purpose of the EMS project."""

* insert SetFmmandStatusRule (1, draft)

* extension contains $flag-detail named flagDetailExt 0..*
* extension contains $flag-priority named flagPriorityExt 0..1
* extension[flagDetailExt]
* extension[flagPriorityExt]
* status ^short = "Alert status"
* code ^short = "Coded or textual message to display to user."
* subject only Reference(CZ_PatientCore)