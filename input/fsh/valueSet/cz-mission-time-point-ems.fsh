CodeSystem:   EmsMissionTimePointCS
Id:         ems-mission-time-point-cs
Title:      "Mission time point Code System"
Description:  """Mission time point codesystem defines the time points of the EMS mission timeline (A.2.2)."""
* ^language = #cs-CZ
* ^identifier.system = "urn:ietf:rfc:3986"
* ^version = "1.0.0"
* ^date = "2026-10-29"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* ^url = "https://ncez.mzcr.cz/terminology/CodeSystem/ems-mission-time-point-cs"

* insert SetFmmandStatusRule (1, draft)

* #01 "Oznámení události" "Přijetí oznámení na operačním středisku (A.2.2.1)."
* #02 "Výzva" "Předání pokynu k výjezdu výjezdové skupině (A.2.2.2)."
* #03 "Výjezd" "Výjezdová skupina zahájila výjezd (A.2.2.3)."
* #04 "Příjezd na místo události" "Výjezdová skupina dosáhla místa události (A.2.2.4)."
* #05 "Odjezd z místa události" "Výjezdová skupina odjela z místa události (A.2.2.5)."
* #06 "Příjezd do místa předání" "Výjezdová skupina přijela do místa předání (A.2.2.6)."
* #07 "Předání pacienta" "Výjezdová skupina předala pacienta CPALP nebo ukončila péči o pacienta (A.2.2.7)."
* #08 "Ukončení výjezdu" "Výjezdová skupina formálně ukončila výjezd (A.2.2.8)."

ValueSet:   EmsMissionTimePoint
Id:         mission-time-point
Title:      "Mission time point Value Set"
Description:  """Mission time point value set includes all codes from Mission time point Code System."""
* insert SetFmmandStatusRule (1, draft)
* ^experimental = false
* codes from system EmsMissionTimePointCS
