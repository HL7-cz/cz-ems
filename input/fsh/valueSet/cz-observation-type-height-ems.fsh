ValueSet: CZ_ObservationHeightTypeEmsVs
Id: cz-observationHeightType-ems-vs
Title: "ObservationsEmsHeightType"
Description: "This value set includes all Height types for observations of EMS report."

* insert SNOMEDCopyrightForVS
* ^experimental = false

* include codes from system $sct where concept is-a #1153637007 //Body height (observable entity)
