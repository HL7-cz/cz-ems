<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"> 
<blockquote class="stu-note"> 
<b>Informativní pro tuto verzi průvodce</b> 
<p>Do této verze příručky byly příklady užití přidány pouze jako informativní materiál. Výstup je nutné konzultovat s odbornou veřejností - je možné, že v blízké době ještě proběhne revize, která zapříčíní změny obsahu!</p> 
</blockquote>
</div>

### Přehled rolí  

Role v use case představují různé typy uživatelů nebo systémů, které se účastní procesu, včetně jejich povinností a oprávnění. Role příjemce musí odpovídat právním požadavkům (např. GDPR, zákon o zdravotních službách atd.)  

#### Zdravotnické operační středisko (ZOS)

**Popis** 

ZOS jako pracoviště operačního řízení poskytovatele ZZS přijímá a vyhodnocuje tísňovou komunikaci a na základě takto přijatých tísňových výzev vydává pokyny výjezdovým skupinám. 

**Práva** 

ZOS předává výjezdové skupině informace k výjezdu, které se stávají součástí Záznamu o výjezdu (číslo výzvy/výjezdu, lokalizace události, naléhavost a klasifikace výzvy, atd). ZOS aktivně needituje Záznam o výjezdu, ale software ZOS pro operační řízení zpětně přebírá u každého výjezdu položky zadané vedoucím výjezdové skupiny: způsob ukončení péče o pacienta, CPALP a konkrétní oddělení, na které je předán pacient. 

**Interakce** 

Předávání relevantních informací k výjezdu ze ZOS do softwaru, ve kterém výjezdová skupina ZZS vytváří a edituje Záznam o výjezdu, předání informací ze Záznamu o výjezdu zpět do softwaru pro operační řízení ZOS.  

#### Vedoucí výjezdové skupiny ZZS – zpracovatel Záznamu o výjezdu ZZS 

**Popis** 

zdravotnický profesionál zodpovědný za vytvoření, schválení a případně editaci Záznamu o výjezdu ZZS 

**Práva** 

Přístup k pacientským záznamům, možnost úprav a schvalování záznamu. 

**Interakce** 

Vyplňuje formulář zprávy, potvrzuje finální verzi, předává finální podobu Záznamu o výjezdu ZZS.  

#### Pacient  

**Popis** 

Je příjemcem péče a konzumentem výstupu ve formě zprávy. Záznam o výjezdu ZZS využívá jako podklad pro dodržování léčebného režimu, příjem léků a plnění dalších doporučení od ošetřujícího zdravotníka. Práva: Přístup k obsahu Záznamu o výjezdu ZZS prostřednictvím pacientského portálu, mobilní aplikace nebo tištěné verze. Nemá právo na úpravy obsahu. Může potvrdit přijetí zprávy nebo její přečtení, pokud to systém umožňuje.  

**Interakce**  

- **Čtení zprávy**: Pacient si Záznam o výjezdu ZZS zprávu prohlíží, aby porozuměl svému zdravotnímu stavu a předepsaným doporučením.  
- **Realizace pokynů**: Dodržování předepsaného režimu (např. dieta, omezení fyzické aktivity). Užívání předepsaných léků dle dávkování. Účast na doporučených vyšetřeních, kontrolách a dalších ošetřeních.  
- **Dotazy**: V případě nejasností ohledně obsahu Záznamu o výjezdu ZZS zprávy může pacient kontaktovat lékaře nebo zdravotnické zařízení.  
- **Specifika**: Pacient by měl být informován, jak si Záznam o výjezdu ZZS prohlížet a jak interpretovat informace (např. co znamenají doporučení či termíny). Je vhodné, aby měl pacient možnost přístupu k edukativním materiálům, které mu pomohou s realizací pokynů (např. příručky, videa v aplikaci).  

#### Zdravotnický profesionál – příjemce zprávy  

**Popis** 

Lékař nebo jiný zdravotnický profesionál cílového poskytovatele akutní lůžkové péče, který Záznam o výjezdu ZZS přijímá a využívá pro zajištění kontinuity péče. Práva: Přístup k Záznamu o výjezdu ZZS, možnost prohlížení. 

**Interakce**  

Načítá Záznam do svého informačního systému (např. z NIS nebo z jiné elektronické platformy). Analyzuje informace, začleňuje je do vlastní dokumentace a rozhoduje o dalším postupu péče.  

#### Zdravotní pojišťovna (kontrolní role)  

**Popis** 

Organizace, která může obdržet (vyžádat, využít ke kontrole) Záznam o výjezdu ZZS jako součást kontrolního procesu nebo pro zajištění proplacení poskytnuté péče. Práva: Přístup k minimální nezbytné verzi Záznamu v souladu s GDPR a principem minimalizace zpracovávaných dat. 

**Interakce** 

Kontroluje Záznam z hlediska správnosti údajů a oprávněnosti poskytnuté péče.  

#### IT systém jako příjemce (např. NIS, eHealth platforma)  

**Popis** 

Automatická systémová role, která zajišťuje příjem, zpracování a integraci Záznamu do elektronických systémů. Práva: Plný přístup k datové struktuře zprávy pro účely zpracování (např. převod formátů, validace).  

**Interakce**  

Automaticky načítá zprávu (např. standardy HL7, FHIR, DASTA). Zajišťuje kontrolu integrity a její integraci do prostředí příjemce.  

### Typy use case využití Záznamu o výjezdu ZZS  

Z pohledu předání, získání a následného využití Záznamu o výjezdu ZZS lze identifikovat následující typy use case:  

- Záznam o výjezdu ZZS pro zajištění kontinuity péče – zpráva určená jinému poskytovateli, primárně poskytovateli akutní lůžkové péče, případně registrujícímu praktickému lékaři, ambulantnímu specialistovi či poskytovateli domácí, ošetřovatelské nebo jiné péče.  

- Záznam o výjezdu ZZS jako zdroj informací pro ošetřeného pacienta či osoby o něj pečující.  

- Vyhledání a získání záznamu o výjezdu ZZS oprávněnou osobou (pacientem, oprávněným lékařem).  

- Záznam o výjezdu ZZS pro sekundární zpracování dat – sběr dat pro statistické účely a zdravotnický výzkum.  

- Záznam o výjezdu ZZS jako podklad pro úhradu zdravotní péče.  

Tento dokument se zaměřuje na první dva uvedené scénáře a jim odpovídající okruhy příjemců, tedy poskytovatele zdravotní péče a pacienty. V co nejvyšší míře vyhovuje požadavku na sekundární využití informací v záznamu o výjezdu ZZS (body 4 a 5 výše). Problematika vyhledání a získání, resp. přístupu k záznamu o výjezdu ZZS (požadavku 3), je předmětem samostatného dokumentu.  