CodeSystem:   TerminationMethodEmsCS
Id:         cz-termination-method-cs
Title:      "Urgency level Code System"
Description:  """Urgency level codesystem defines the method of terminating patient care."""
* ^language = #cs-CZ
* ^identifier.system = "urn:ietf:rfc:3986"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-11-04"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false

* insert SetFmmandStatusRule (1, draft)

* #01 "negativní reverz - transport"
* #02 "negativní reverz - ošetření"
* #03 "ponechán na místě"
* #04 "předán jiné výjezdové skupině ZZS - identifikace"
* #05 "úmrtí před příjezdem"
* #06 "úmrtí během ošetření"
* #07 "předán CPALP"
* #08 "jiný způsob ukončení - upřesnění textem"
* #09 "ukončeno před dosažením pacienta"
* #10 "předán jiné složce IZS (PČR, MPO)"

ValueSet:   TerminationMethodEmsVS
Id:         cz-termination-method-vs
Title:      "Urgency level Value Set"
Description:  """Urgency level value set includes selected codes from Urgency level Code System."""
* insert SetFmmandStatusRule (1, draft)
* ^experimental = false
* codes from system TerminationMethodEmsCS
