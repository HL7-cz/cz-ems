CodeSystem:   UrgencyLevelEmsCS
Id:         cz-urgency-level-cs
Title:      "Urgency level Code System"
Description:  """Urgency level codesystem defines the urgency levels of the EMS dispatch (A.2.1.7.1)."""
* ^language = #cs-CZ
* ^identifier.system = "urn:ietf:rfc:3986"
* ^version = "1.0.0"
* ^date = "2026-10-30"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false

* insert SetFmmandStatusRule (1, draft)

* #1 "Naléhavost 1. stupně" "Nejvyšší naléhavost výjezdu."
* #2 "Naléhavost 2. stupně" "Vysoká naléhavost výjezdu."
* #3 "Naléhavost 3. stupně" "Střední naléhavost výjezdu."
* #4 "Naléhavost 4. stupně" "Nejnižší naléhavost výjezdu."

ValueSet:   UrgencyLevelEmsVS
Id:         cz-urgency-level-vs
Title:      "Urgency level Value Set"
Description:  """Urgency level value set includes all codes from Urgency level Code System."""
* insert SetFmmandStatusRule (1, draft)
* ^experimental = false
* codes from system UrgencyLevelEmsCS
