ValueSet: CZ_ObservationOFTypeEmsVs
Id: cz-observationOFType-ems-vs
Title: "ObservationsEmsOFType"
Description: "This value set includes other Objective findings observations of EMS report."

* insert SNOMEDCopyrightForVS
* ^experimental = false

//Základní životní funkce
* $sct#364075005 //Heart rate (observable entity)
* $sct#86290005 //Respiratory rate (observable entity)
* $sct#271649006 //Systolic blood pressure (observable entity)
* $sct#271650006 //Diastolic blood pressure (observable entity)
* $sct#386725007 //Body temperature (observable entity)
* $sct#103228002 //Hemoglobin saturation with oxygen (observable entity)
//Další měřené parametry
* $sct#449159002 //AVPU - alert voice pain unresponsive scale
* $sct#386554004 //Glasgow coma scale
* $sct#250790007 //End tidal carbon dioxide partial pressure 
* $sct#365812005 //Blood glucose level
//TODO - doplnit hodnoty dle ZZS

