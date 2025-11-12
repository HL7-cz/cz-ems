CodeSystem:   CallClassificationEmsCS
Id:         cz-call-lassification-cs
Title:      "Call classification Code Code System"
Description:  """Call classification Code codesystem includes special codes."""
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

* #JI "Jiné"
* #GS "Gynekologické stavy"
* #MU "Mimořádná událost"


ValueSet:   CallClassificationEmsVS
Id:         cz-call-classification-vs
Title:      "Call classification Code Value Set"
Description:  """Call classification Code value set includes selected codes from recommended SNOMED CT and other special codes."""

* insert SetFmmandStatusRule (1, draft)

* ^experimental = false

* insert SNOMEDCopyrightForVS

* $sct#13791008 "Asthenia"
* $sct#118940003 "Disorder of nervous system"
* $sct#3006004 "Disturbance of consciousness"
* $sct#267036007 "Dyspnea"
* $sct#56265001 "Heart disease"
* $sct#131148009 "Bleeding"
* $sct#74732009 "Mental disorder"
* $sct#22253000 "Pain"
* $sct#107724000 "Patient transfer"
* $sct#75478009 "Poisoning"
* $sct#713346006 "Thermal injury"
* $sct#417746004 "Traumatic injury"
* $sct#36198007 "Victim of vehicular AND/OR traffic accident"

* codes from system CallClassificationEmsCS