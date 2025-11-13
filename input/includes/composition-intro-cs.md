### Sekce a obsah

Kompozice obsahuje základní komponenty a sekce. V rámci sekcí je rozdělena do sady povinných a nepovinných sekcí. V případě, že nejsou pro povinnou sekci k dispozici žádná data, lze odůvodnění vyjádřit v `composition.section.emptyReason`.

### Struktura kompozice

Záznam o výjezdu ZZS obsahuje základní elementy a následující sekce v pořadí v němž jsou popsány:

#### Základní elementy

Obecné informace o záznamu. Většina informačních prvků v této části kompozice je vyplněna podobně jako v ostatních typech zpráv. Obsahuje informace o pacientovi, zdrojové organizaci a autorovi.

**Klinická událost (Encounter)**

Tento profil umožňuje propojení zprávy s jednou konkrétní misí, ke které se zpráva vztahuje.

#### Sekce kompozice

**Údaje o výjezdu (Dispatch)**
Tato sekce je povinná a obsahuje veškeré údaje o výjezdu jako je identifikace výjezdu, vozidla, členů posádky, operátorů ZOS, místa začátku výjezdu a události.

**Časová osa výjezdu (Timeline)**
Tato sekce je povinná a obsahuje časovou osu výjezdu - čas oznámení události, výzvy, výjezdu, příjezdu na místo události, času odjezdu z místa události a čas případného příjezdu na místo předání včetně samotného předání. Závěrem obsahuje i čas ukončení výjezdu.

**Osobní anamnéza (PatientHx)**
Tato sekce je povinná a obsahuje historii zdravotních problémů, jež je součástí osobní anamnézy pacienta.

**Historie zdravotních pomůcek a implantátů (medicalDevices)**
Tato sekce je povinná a obsahuje historii implantátů a zdravotních pomůcek. Pokud je sekce prázdná, musí být explicitně uveden důvod pomocí kódového systému IPS Absent and Unknown Data.

**Významné výkony (significantProcedures)**
Tato sekce obsahuje významné výkony, jejichž výsledek ovlivňuje možnosti a způsoby poskytování zdravotní péče nebo může ovlivnit diagnostické metody (jejich proveditelnost a hodnocení).

**Očkování (immunizations)**
Tato sekce obsahuje historii očkování.

**Cestovatelská anamnéza (travelHx)**
Tato sekce obsahuje cestovatelskou anamnézu.

**Infekční kontakty (infectiousContacts)**
Tato sekce obsahuje infekční kontakty tedy informace o infekcích, kterým byl pacient vystaven.

**Rodinná anamnéza (familyHistory)**
Sekce obsahující rodinnou anamnézu.Jedná se o informace o závažných onemocněních u blízkých pokrevně příbuzných se známým nebo předpokládaným genetickým potenciálem nebo s možným vlivem na péči o pacienta.

**Sociální anamnéza (socialHistory)**
Tato sekce obsahuje sociální anamnézu pacienta (společenské uplatnění, pracovní zapojení, koníčky, sociální síť, vzdělání či bydlení).

**Užívání alkoholu (alcoholUse)**
Tato sekce obsahuje informace o pravidelném užívání alkoholu.

**Užívání tabáku (tobaccoUse)**
Tato sekce obsahuje informace o pravidelném užívání tabáku.

**Užívání drog (drugUse)**
Tato sekce obsahuje informace o pravidelném užívání drog.

**Alergie (allergies)**
Tato sekce obsahuje informace o alergiích a intolerancích. Záznam alergie a intolerance je povinný. U pacientů, bez alergie či intolerance je nutné tento fakt explicitně vyjádřit příslušným kódem

**Varování (alert)**
Tato sekce obsahuje veškeré další varování.

**Nálezy (findings)**
¨Tato sekce obsahuje veškeré nálezy pořízené během výjezdu. Obsahuje informace z antropometrických měření, výsledky měření základních životních funkcí i dalších jiných měřených parametrů (jako například glykémie). Může obsahovat i vyšetření somatické a veškerá další vyšetření.

**Terapie (procedure)**
Tato sekce obsahuje informace o veškerých zdravotnických výkonech a použitých zdravotnických prostředků i medikací během výjezdu.

**Diagnostický souhrn (diagnosticSummary)**
Tato sekce obsahuje diagnostický souhrn. Jsou zde popsány diagnózy řešení výjezdem a to jak v kódované tak textové formě.

**Průběh ošetření (courseOfTreatment)**
Tato sekce obsahuje záznam o průběhu ošetření a vývoji stavů pacienta během výjezdu.

**Doporučení (recommendations)**
Tato sekce obsahuje veškerá doporučení pro pacienta po ukončení ošetření.

**Pojištění (payers)**
Tato sekce obsahuje informace o pojištění pacienta.

**Přílohy (attachments)**
Tato sekce obsahuje veškeré přílohy výjezdu. Může obsahovat záznamy z přístrojů nebo fotografie pořízené na místě události.
