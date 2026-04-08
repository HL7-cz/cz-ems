Profile: CZ_AllergyIntoleranceEms
Parent: CZ_AllergyIntolerance
Id: cz-allergyIntolerance-ems
Title: "Allergy Intolerance: EMS Report (CZ)"
Description: """This profile constrains the AllergyIntolerance resource for the purpose of the EMS project."""

* extension contains $allergyintolerance-abatement named abatement 0..1
* extension[abatement].valueDateTime ^short = "End date"