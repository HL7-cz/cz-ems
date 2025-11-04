Logical: LogCzDispatchTimelineCz
Id: LogDispatchTimelineCz
Title: "A.2.2 - Časová osa výjezdu"
Description: """Záznam o výjezdu ZZS - Časová osa výjezdu"""

* casOznameniUdalosti 0..1 dateTime "A.2.2.1 - Čas oznámení události" """Přijetí oznámení na operačním středisku"""
* casVyzvy 1..1 dateTime "A.2.2.2 - Čas výzvy" """Předání pokynu k výjezdu výjezdové skupině"""
* casVyjezdu 1..1 dateTime "A.2.2.3 - Čas výjezdu" """Čas, kdy výjezdová skupina zahájila výjezd"""
* casPrijezduNaMistoUdalosti 1..1 dateTime "A.2.2.4 - Čas příjezdu na místo události" """Čas, kdy výjezdová skupina dosáhla místa události"""
* casOdjezduZMistaUdalosti 1..1 dateTime "A.2.2.5 - Čas odjezdu z místa události" """Čas, kdy výjezdová skupina odjela z místa události"""
* casPrijezduDoMistaPredani 0..1 dateTime "A.2.2.6 - Čas příjezdu do místa předání" """Čas, kdy výjezdová skupina přijela do místa předání"""
* casPredaniPacienta 1..1 dateTime "A.2.2.7 - Čas předání pacienta" """Čas, kdy výjezdová skupina předala pacienta CPALP nebo ukončila péči o pacienta"""
* casUkonceniVyjezdu 0..1 dateTime "A.2.2.8 - Čas ukončení výjezdu" """Čas, kdy výjezdová skupina formálně ukončila výjezd"""