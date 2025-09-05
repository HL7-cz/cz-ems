Logical: LogCzObjectiveFindingsEmsCz
Id: LogObjectiveFindingsEmsCz
Title: "A.2.6 - Objektivní nález"
Description: "Zpráva o výjezdu ZZS - Objektivní nález."

* antropometrickeUdaje 0..* Base "A.2.6.1 - Antropometrické údaje" """Výsledky antropometrických měření pacienta: výška, hmotnost, BMI (automatický výpočet z uvedených hodnot). Volitelné: obvod hlavy, hrudníku, břicha."""
  * textovyVysledek 0..1 string "A.2.6.1.1 - Výsledek vyšetření textem" """Textový popis výsledku vyšetření."""
  * parametrickyZaznam 0..1 Base "A.2.6.1.2 - Parametrický záznam vyšetření" """Parametrický zápis výsledku vyšetření."""
    * popis 1..1 CodeableConcept "A.2.6.1.2.1 - Popis vyšetření" """Popis vyšetření včetně kódu vyšetření, vyšetřované oblasti či vzorku, datum a čas odběru vzorku."""
    * vysledek 1..1 Quantity "A.2.6.1.2.2 - Výsledek vyšetření formalizovaný" """Výsledek vyšetření textem a/nebo ve formě číselných a kódovaných výsledků měření. Obsah výsledku vyšetření se bude lišit podle typu vyšetření.."""

* zivotniFunkce 0..* Base "A.2.6.2 - Základní životní funkce" """Výsledky měření základních životních funkcí pacienta včetně časového razítka měření. (Měření životních funkcí se může opakovat v různých časech výjezdu)."""
  * typVysetreni 1..1 CodeableConcept "A.2.6.2.1 - Typ vyšetření" """Klasifikace typu vyšetření. Zde fixní hodnota ''vital-signs''"""
  * textovyVysledek 0..1 Base "A.2.6.2.2 - Výsledek vyšetření textem" """Textový popis výsledku nebo komentář ke strukturovanému výsledku vyšetření."""
    * popis 1..1 CodeableConcept "A.2.6.2.2.1 - Výsledek vyšetření textem" """Textový popis výsledku nebo komentář ke strukturovanému výsledku vyšetření."""
    * datum 1..1 dateTime "A.2.6.2.2.2 - Datum a čas měření" """Datum a čas vztažený ke konkrétnímu měření."""
  * parametrickyZaznam 0..* Base "A.2.6.2.3 - Parametrický záznam výsledku vyšetření" """Parametrický zápis výsledku vyšetření."""
    * popis 1..1 CodeableConcept "A.2.6.2.3.1 - Popis vyšetření" """Popis vyšetření včetně kódu vyšetření,  datum a čas vyšetření."""
    * podaniKysliku 0..1 boolean "A.2.6.2.3.2 - Podání kyslíku" """Informace o podávání kyslíku při měření hodnoty SpO2."""
    * prutokKysliku 0..1 Quantity "A.2.6.2.3.3 - Průtok kyslíku" """Informace o průtoku kyslíku při měření hodnoty SpO2."""
    * vysledek 1..1 Quantity "A.2.6.2.3.4 - Výsledek vyšetření formalizovaný" """Výsledek vyšetření textem a/nebo ve formě číselných a kódovaných výsledků měření. Dále podrobnosti o tom, jak byly testy provedeny k získání výsledných hodnot, informace o referenčních rozmezích a interpretaci výsledku. Obsah výsledku vyšetření se bude lišit podle typu vyšetření."""
    * datum 1..1 dateTime "A.2.6.2.3.5 - Datum a čas měření" """Datum a čas vztažený ke konkrétnímu měření."""
  
* dalsiParametry 0..1 Base "A.2.6.3 - Další měřené parametry" """- glykemie (mmol/l)
- vědomí - Glasgow Coma Scale (GCS, 3-15)
- vědomí - AVPU (A/V/P/U)
- EtCO2"""
  * textovyVysledek 0..1 string "A.2.6.3.1 - Výsledek vyšetření textem" """Textový popis výsledku vyšetření."""
  * parametrickyZaznam 0..1 Base "A.2.6.3.2 - Parametrický záznam výsledku vyšetření" """Parametrický zápis výsledku vyšetření."""
    * popis 1..1 CodeableConcept "A.2.6.3.2.1 - Popis vyšetření" """Popis vyšetření včetně kódu vyšetření, datum a čas vyšetření."""
    * vysledek 1..1 Quantity "A.2.6.3.2.2 - Výsledek vyšetření formalizovaný" """Výsledek vyšetření textem a/nebo ve formě číselných a kódovaných výsledků měření. Dále podrobnosti o tom, jak byly testy provedeny k získání výsledných hodnot, informace o referenčních rozmezích a interpretaci výsledku. Obsah výsledku vyšetření se bude lišit podle typu vyšetření."""
    * datum 1..1 dateTime "A.2.6.3.2.3 - Datum a čas měření" """Datum a čas vztažený ke konkrétnímu měření."""

* somatickeVysetreni 1..* Base "A.2.6.4 - Somatické vyšetření" """Vyšetření pomocí smyslů vyšetřujícího (pohledem, poslechem, pohmatem a poklepem) a posuzování, zda se takto zjištěné nálezy odchylují od normy. Pokud ano, označujeme tyto odchylky jako objektivní příznaky (angl. signs)."""
  * popis 1..1 string "A.2.6.4.1 - Výsledek vyšetření textem" """Textový popis výsledku nebo komentář ke strukturovanému výsledku vyšetření."""
  * datum 1..1 dateTime "A.2.6.4.2 - Datum a čas vyšetření" """Datum a čas kdy bylo vyšetření provedeno."""

* jineVysetreni 0..* Base "A.2.6.5 - Jiná vyšetření" """Další vyšetření (Například EKG, ultrazvuk, apod)."""
  * nazevVykonu 0..* CodeableConcept "A.2.6.5.1 - Název výkonu" """Dle číselníku ZZS."""
  * datum 1..1 dateTime "A.2.6.5.2 - Datum a čas provedení" """Datum a čas provedení výkonu."""
  * popis 1..1 string "A.2.6.5.3 - Popis vyšetření" """Textový popis vyšetření"""


