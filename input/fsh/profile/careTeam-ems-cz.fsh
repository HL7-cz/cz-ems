Profile: CZ_CareTeamEms
Parent: CareTeam
Id: cz-careteam-ems
Title: "CareTeam: (EMS CZ)"
Description: "Profile of the emergency medical service team within Czech EMS."

* status 1..1 MS             // A.2.1 (stav týmu v rámci výjezdu)
* encounter 0..1 MS          // A.2.1 (napojení na EMS Encounter)

// A.2.1.3 Identifikace členů výjezdové skupiny
* participant 1..* MS        // A.2.1.3
* participant.member 1..1 MS // A.2.1.3
* participant.member only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore) // A.2.1.3
* participant.member.identifier 1..1 MS          // A.2.1.3.1 Identifikátor člena posádky
* participant.role 1..1 MS
* participant.role from https://ncez.mzcr.cz/fhir/CodeSystem/nrzp-povolani (extensible) // A.2.1.3.4 Role (NRZP)
