Logical: LogCzRecommendationsCz
Id: LogRecommendationsCz
Title: "A.2.9 - Průběh ošetření a doporučení"
Description: """Záznam o výjezdu ZZS - Průběh ošetření a doporučení"""

* prubehOsetreni 0..* Base "A.2.9.1 - Průběh ošetření" """Shrnutí průběhu ošetření, vývoje stavu"""
  * popis 1..1 string "A.2.9.1.1 - Popis průběhu ošetření" """Textový popis průběhu ošetření. Zadává lékař volným textem."""
  * casoveRazitko 1..1 dateTime "A.2.9.1.2 - Časové razítko" """Datum a čas zápisu. Doplní systém."""

* doporuceni 0..1 Base "A.2.9.2 - Doporučení" """Doporučení pro pacienta po ukončení ošetření"""
  * popis 1..1 string "A.2.9.2.1 - Popis doporučení" """Doporučení pro další postup – např. doporučená medikace, dietní a režimová opatření, kontrola lékařem, pokyny pro postup při zhoršení stavu, kontakt na tísňovou linku apod. Zadává lékař volným textem."""
