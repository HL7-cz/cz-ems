### Oblasti řešení 

#### Zahrnuté oblasti 

Tento dokument se zabývá funkční specifikací Záznamu o výjezdu zdravotnické záchranné služby (ZOV ZZS), jeho strukturou a kódovými systémy, které mají být použity při jeho vytváření. 

Pojmem „Záznam o výjezdu ZZS“ se rozumí standardizovaný zdravotnický dokument, který zachycuje průběh přednemocniční neodkladné péče od přijetí tísňové výzvy až po předání pacienta do další péče nebo ukončení zásahu. Záznam musí reflektovat administrativní, časové, klinické a terapeutické údaje v rozsahu vymezeném příslušnými právními předpisy a specifikovanými datovými sadami. 

Na rozdíl od jiných typů zdravotnické dokumentace je záznam o výjezdu vytvářen v dynamickém a časově limitovaném prostředí, často přímo v terénu, a může zahrnovat více záznamů v případě, že při jednom výjezdu bylo ošetřeno více pacientů. Každý pacient však musí mít svůj samostatný záznam, provázaný na společný identifikátor výjezdu. 

#### Nezahrnuté oblasti 

Funkční specifikace neřeší celkový ekosystém zdravotnické dokumentace ani technické detaily přenosu a archivace ZOV ZZS. Nezahrnuje také pracovní postupy výjezdových skupin ani klinické rozhodovací algoritmy, které jsou předmětem interních metodických pokynů poskytovatelů ZZS. 

### Obsah

#### Informační modely

Základní oddíly zobrazovacího řádu

##### Koncepční pohled

Záznam o výjezdu ZZS lze rozdělit do několika částí: záhlaví a tělo dokumentu a volitelně může mít i různé přílohy, jako jsou média nebo prezentovaná forma.

###### Součásti obrazové žádanky

<figure>
  {% include ems-mindmap-cs.svg %}
</figure>

###### Hlavička obrazové žádanky

<figure>
  {% include header-mindmap-cs.svg %}
</figure>

###### Tělo obrazové žádanky

<figure>
  {% include body-mindmap-cs.svg %}
</figure>

#### Subjekty 

---

**Pacient**

Pacientem se rozumí osoba, které byla v rámci výjezdu ZZS poskytnuta přednemocniční neodkladná péče. Tento profil definuje základní identifikační a demografické údaje pacienta, včetně národních identifikátorů (RID/DRID) a dalších podpůrných atributů (např. občanství, komunikační jazyk), lokalizovaných pro český kontext. 

**Zdravotnický pracovník** 

Zdravotnický pracovník je člen výjezdové skupiny ZZS, který poskytuje zdravotní péči a je odpovědný za vedení a vyplnění Záznamu o výjezdu ZZS. Tento profil umožňuje identifikaci jednotlivce prostřednictvím údajů vedených v Národním registru zdravotnických pracovníků (NR-ZP), případně s využitím mezinárodních terminologií (např. SNOMED CT). Každému zdravotnickému pracovníkovi je možné přiřadit roli (lékař, zdravotnický záchranář, operátor ZOS, NLZP), která odráží jeho úlohu v rámci zásahu. 

**Poskytovatel zdravotních služeb (PZS)** 

Poskytovatelem zdravotních služeb se rozumí organizace zajišťující činnost zdravotnické záchranné služby nebo cílový poskytovatel akutní lůžkové péče (CPALP), kterému je pacient předán. Tento profil specifikuje reprezentaci organizace podle registru poskytovatelů zdravotních služeb (NRPZS) a dalších identifikátorů (např. IČO). V rámci tohoto dokumentu je zkráceně označován jako zdravotnické zařízení (ZZ). 

#### Objekty 

**Zdravotnický přístroj** 

Tento profil specifikuje omezení aplikovaná na Device v rámci českého národního projektu interoperability ve vztahu k Záznamu o výjezdu ZZS. Popisuje přístroje a zařízení používané posádkou ZZS během zásahu v roli „observer“ (sledování, měření vitálních funkcí) nebo „performer“ (aktivní použití při poskytnutí péče, např. defibrilátor). Profil definuje povinné identifikační a popisné údaje přístroje a stanovuje způsob, jakým mají být zaznamenávány v rámci ZOV ZZS. 

**Zdravotnický prostředek** 

Tento profil určuje způsob reprezentace zdravotnických prostředků použitých při zásahu posádkou ZZS. Typ zdravotnického prostředku se preferenčně uvádí prostřednictvím kódu SNOMED CT nebo evropského číselníku zdravotnických prostředků (EMDN). V případě absence údajů či nepřítomnosti prostředku se tato skutečnost zaznamenává explicitně pomocí kódů ze systému Absent and Unknown Data – IPS. 

**Komponenty** 

Komponentou v kontextu tohoto standardu rozumíme opakovaně využitelnou část datové struktury, která je společná více klinickým dokumentům. Typickým příkladem jsou biometrické údaje (např. výška, váha, BMI, vitální funkce), které mají být definovány a používány jednotně nejen v Záznamu o výjezdu ZZS, ale také v dalších typech zdravotnické dokumentace (např. propouštěcí zpráva, ambulantní zpráva, pacientský souhrn). 

### Struktura Záznamu o výjezdu ZZS 

#### Hlavička záznamu 

**Identifikace pacienta** 

Tento oddíl obsahuje základní údaje o pacientovi, včetně identifikátorů (RID/DRID), jména, příjmení, data narození, státní příslušnosti a dalších podpůrných údajů, které umožňují jednoznačnou identifikaci v českém národním kontextu. 

**Kontaktní informace pacienta** 

Oddíl zahrnuje kontaktní osoby pacienta (zákonní zástupci, blízcí příbuzní nebo jiné osoby), které mohou poskytovat dodatečné informace o pacientovi. Typ kontaktu je rozlišen podle role (např. emergentní kontakt, zákonný zástupce, jiný vztah k pacientovi). 

**Zdravotní pojištění** 

Obsahuje údaje o zdravotní pojišťovně pacienta, čísle pojištěnce a případné doplňující informace o pojistném vztahu. 

**Příjemce dokumentu** 

Uvedení zamýšleného příjemce zprávy, zpravidla cílového poskytovatele akutní lůžkové péče (CPALP) nebo jiného zdravotnického zařízení, kterému je pacient předán. 

**Autor dokumentu** 

Identifikační údaje člena výjezdové skupiny ZZS, který záznam vytvořil a je za něj zodpovědný. 

**Metadata dokumentu** 

Obsahuje další administrativní informace o dokumentu – např. kategorie, verze, datum a čas vytvoření, stav dokumentu, jazyk a stupeň důvěrnosti. 

**Elektronické podpisy** 

Sekce určená pro elektronický podpis či časové razítko podle zákona č. 327/2011 Sb., §54a. 

#### Tělo záznamu 

**Údaje k výjezdu** 

Tato sekce obsahuje identifikační číslo výjezdu, údaje o výjezdové skupině (členové posádky, typ posádky, vozidlo), údaje od operačního střediska (ZOS), místo zásahu, klasifikaci výzvy a naléhavost výjezdu. 

**Časová osa výjezdu**

Obsahuje klíčové časové body od přijetí tísňového volání, vyhlášení výjezdu, příjezdu na místo, průběhu zásahu až po ukončení nebo předání pacienta. 

**Anamnéza** 

Sekce shrnuje osobní, rodinnou, sociální a toxikologickou anamnézu, včetně významných výkonů, očkování a epidemiologických údajů, pokud jsou pro zásah relevantní. 

**Urgentní informace** 

Povinná část záznamu obsahující záznamy o alergiích, intolerancích a případných varováních, které jsou zásadní pro bezpečné poskytnutí péče. 

**Nynější onemocnění** 

Popis současného zdravotního problému nebo události, která byla důvodem zásahu. 

**Objektivní nález** 

Zahrnuje antropometrické údaje, vitální funkce, další měřené parametry (např. glykemie, GCS), somatické vyšetření a výsledky doplňkových vyšetření (např. EKG). 

**Terapie** 

Popis provedených výkonů dle číselníku ZZS, použitých zdravotnických prostředků a podané medikace (včetně dávky, způsobu aplikace a času podání). 

**Diagnostický souhrn** 

Obsahuje diagnózy ve strukturované podobě (MKN-10) a doplňující volný text. 

**Průběh ošetření a doporučení** 

Zahrnuje shrnutí průběhu poskytované péče a doporučení pro další léčebný postup. 

**Ukončení** 

Specifikuje způsob ukončení zásahu (např. předání pacienta CPALP, ponechání na místě), včetně identifikace předávajícího a přebírajícího zdravotníka. 

**Přílohy** 

Možnost připojit doplňující dokumentaci (fotografie, záznamy přístrojů, EKG, PDF soubory apod.). 