Profile: CZ_CareTeamEms
Parent: CareTeam
Id: cz-careteam-ems
Title: "CareTeam: EMS Report (CZ)"
Description: "Profile of the emergency medical service team within Czech EMS."

* status 1..1 MS             // A.2.1 (stav týmu v rámci výjezdu)
* encounter 0..1 MS          // A.2.1 (napojení na EMS Encounter)

// A.2.1.3 Identifikace členů výjezdové skupiny
* participant 1..* MS        // A.2.1.3
* participant ^short = "Identification of emergency crew members"
* participant ^definition = "Specifies the identification and roles of the emergency crew members assigned to the response unit, such as physician, paramedic, or driver."

* participant.member 1..1 MS // A.2.1.3
* participant.member only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore) // A.2.1.3
* participant.member.identifier 1..1 MS          // A.2.1.3.1 Identifikátor člena posádky
* participant.member.identifier ^short = "Crew member identifier"
* participant.member.identifier ^definition = "Unique identifier of the emergency crew member. May represent an internal identifier assigned by the healthcare provider’s information system or, preferably, a national healthcare professional ID such as a license or registration number."
* participant.role 1..1 MS
* participant.role from https://ncez.mzcr.cz/fhir/ValueSet/nrzp-povolani-vs (extensible) // A.2.1.3.4 Role (NRZP)
* participant.role ^short = "Crew member role"
* participant.role ^definition = "Specifies the professional role or function of the emergency crew member within the response unit, such as physician, paramedic (NLZP), or driver. The value should be taken from the official NLZP role code system or an equivalent terminology."
