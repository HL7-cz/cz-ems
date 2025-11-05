Logical: LogCzEmsReportCz
Id: LogEmsReportCz
Title: "A - Záznam o výjezdu ZZS"
Description: """Záznam o výjezdu ZZS"""


* hlavicka 1..1 LogHeaderEmsCz "A.1 - Hlavička dokumentu" """Hlavička zprávy o výjezdu – podle české specifikace"""
* telo 1..1 Base "A.2 - Tělo zprávy o výjezdu" """Hlavní klinické části zprávy o výjezdu"""
  * udajeOVyjezdu 1..1 LogDispatchDataCz "A.2.1 - Údaje o výjezdu" """Údaje o výjezdu."""
  * casovaOsaVyjezdu 1..1 LogDispatchTimelineCz "A.2.2 - Časová osa výjezdu" """Časová osa výjezdu"""
  * anamneza 0..1 LogCzPatientHistoryCz "A.2.3 - Anamnéza pacienta" """Stručná anamnéza, včetně původu informací."""
  * urgentniInformace 1..1 LogAlertsCz "A.2.4 Urgentní informace" """Závažné alergie, interakce nebo jiná rizika."""
  * nynejsiOnemocneni 0..1 LogPresentIllnessEmsCz "A.2.5 Nynější onemocnění" """Nynější onemocnění"""
  * objektivniNalez 0..1 LogObjectiveFindingsEmsCz "A.2.6 Objektivní nález" """Objektivní nález"""
  * terapie 0..1 LogTherapyEmsCz "A.2.7 Terapie" """Terapie"""
  * diagnostickySouhrn 0..1 LogDiagnostickySouhrnCz "A.2.8 Diagnostický souhrn" """Diagnostický souhrn"""
  * prubehDoporuceni 0..1 LogRecommendationsCz "A.2.9 Průběh, Doporučení" """Průběh, Doporučení"""
  * ukonceni 1..1 LogEndOfCareCz "A.2.10 Ukončení" """Ukončení"""

* zobrazitelnaForma 1..1 LogPresentedFormCz "A.3 - Zobrazitelná forma dokumentu" """Zobrazená verze dokumentu, doporučeno PDF."""
* prilohy 0..* LogAttachmentsCz "A.4 - Přílohy" """Přiložené obrázky, dokumenty nebo jiná média."""

