CodeSystem:   EmsCallClassificationCS
Id:         ems-call-classification
Title:      "Call classification Code Code System"
Description:  """Call classification Code codesystem includes special codes."""
* ^language = #cs
* ^identifier.system = "urn:ietf:rfc:3986"
* ^version = "1.0.0"
* ^date = "2025-11-04"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* ^url = "https://ncez.mzcr.cz/terminology/CodeSystem/ems-call-classification"

* insert SetFmmandStatusRule (1, draft)

* #JI "Jiné"  // Je otázka, zda má být jiné v číselníku
//* #GS "Gynekologické stavy" - doplněn vhodný kód SCT
* #MU "Mimořádná událost" // je potřeba zpřesnit význam pojmu mimořádná událost, kandidát: 1399246009 | Mass casualty incident (event)


ValueSet:   EmsCallClassification
Id:         ems-call-classification
Title:      "Call classification Code Value Set"
Description:  """Call classification Code value set includes selected codes from recommended SNOMED CT and other special codes."""

* insert SetFmmandStatusRule (1, draft)

* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-01-01"
* ^publisher = "NCEZ"
* ^experimental = false
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/ems-call-classification"

* insert SNOMEDCopyrightForVS

* $sctCZ#289906003  // Gynekologický problém
* $sctCZ#13791008 //"Asthenia"
* $sctCZ#118940003 //"Disorder of nervous system"
* $sctCZ#3006004 //"Disturbance of consciousness"
* $sctCZ#267036007 //"Dyspnea"
* $sctCZ#56265001 //"Heart disease"
* $sctCZ#131148009 //"Bleeding"
* $sctCZ#74732009 //"Mental disorder"
* $sctCZ#22253000 //"Pain"
* $sctCZ#107724000 //"Patient transfer"
* $sctCZ#75478009 //"Poisoning"
* $sctCZ#713346006 //"Thermal injury"
* $sctCZ#417746004 //"Traumatic injury"
* $sctCZ#36198007 //"Victim of vehicular AND/OR traffic accident"

* codes from system EmsCallClassificationCS