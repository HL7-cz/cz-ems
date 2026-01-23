<div xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <blockquote class="stu-note">
        <b>Informativní pro tuto verzi průvodce</b>
        <p>Do této verze příručky byly přidány závazná pravidla pouze jako informativní materiál ke shromažďování zpětné vazby o jejich používání.</p>
    </blockquote>
</div>

### Přehled

Závazná pravidla (Obligations) jsou prostředkem, kterým se v HL7 FHIR specifikuje schopnosti, které definovaní aktéři MOHOU (MAY), MĚLI BY (SHOULD) nebo MUSÍ (SHALL) mít implementovány specifikovanými profily.

<strong>Pro potřeby tohoto standardu Zprávy o výjezdu definujeme jedinou cílovou úroveň plnění – L3.</strong> Níže jsou uvedeny obecné úrovně, které se používají v rámci širší metodiky kategorizace dokumentů ve zdravotnictví, ale v rámci této specifikace je závazná pouze úroveň L3:

L1 – nestrukturovaný dokument
Předávána jsou pouze nezbytná metadata dokumentu a lidsky čitelný obsah ve formátu PDF.

L2 – strukturovaný dokument s textovými sekcemi
Dokument je členěn do jasně identifikovatelných sekcí (např. vstupní vyšetření, anamnéza, rizikové faktory, medikace, doporučení…), ale veškerý obsah je stále veden v neformalizované textové podobě.

L3 – strukturovaný a částečně formalizovaný dokument <strong>(Úroveň vyžadovaná tímto standardem)</strong>
Dokument je členěn do identifikovatelných sekcí stejně jako v L2, avšak vybrané informace jsou vedeny ve formalizované a kódované podobě, případně je formalizace umožněna. Tato úroveň je závazná pro Zprávu o výjezdu.

Tato stránka také popisuje aktéry, kteří byli definováni pro specifikaci závazných pravidel.

### Aktéři

Byli specifikováni aktéři ve těchto rolích:

| Role                                                                                                   | Popis                                                                                                                                  |
| ------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------- |
| [Tvůrce úrovně L1](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L1.html)     | Jedná se o aktéra úrovně L1, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L1](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L1.html) | Tento aktér představuje systém úrovně L1, který přijatou nebo načtenou zprávu používá.                                                 |
|  |
| [Tvůrce úrovně L2](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L2.html)     | Jedná se o aktéra úrovně L2, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L2](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L2.html) | Tento aktér představuje systém úrovně L2, který přijatou nebo načtenou zprávu používá.                                                 |
|  |
| [Tvůrce úrovně L3](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L3.html)     | Jedná se o aktéra úrovně L3, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L3](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L3.html) | Tento aktér představuje systém úrovně L3, který přijatou nebo načtenou zprávu používá.                                                 |
