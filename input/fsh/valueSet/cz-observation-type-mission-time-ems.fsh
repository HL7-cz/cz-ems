CodeSystem: ObservationTypeMissionTimeEmsCS
Id: cz-observation-type-mission-time-cs
Title: "ObservationTypeMissionTime"
Description: "List of defined status times."

* insert SetFmmandStatusRule (1, draft)

* #01 "Čas oznámení události"
* #02 "Čas výzvy"
* #03 "Čas výjezdu"
* #04 "Čas příjezdu na místo události"
* #05 "Čas odjezdu z místa události"
* #06 "Čas příjezdu do místa předání"
* #07 "Čas předání pacienta"
* #08 "Čas ukončení výjezdu"

ValueSet: ObservationTypeMissionTimeEmsVS
Id: cz-observation-type-mission-time-vs
Title: "ObservationTypeMissionTime"
Description: """List of defined status times."""
* insert SetFmmandStatusRule (1, draft)
* ^experimental = false
* codes from system ObservationTypeMissionTimeEmsCS




