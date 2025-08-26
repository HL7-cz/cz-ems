### Úvod

Tato implementační příručka je založena na [FHIR version R4](https://hl7.org/fhir/R4/). Specifikuje sadu pravidel, které jsou použity k definování toho, jak reprezentovat Záznam o výjezdu ZZS (ZOV ZZS) v českém národním kontextu, v souladu s evropskými směrnicemi eHN.

Jeho hlavním cílem je definovat obsahové komponenty a preferovanou strukturu, která má být použita pro konstrukci Záznamu o výjezdu ZZS (ZOV ZZS). Účelem tohoto standardu je definovat formu Záznamu o výjezdu ZZS (ZOV ZZS) jako lékařského záznamu pacienta za účelem elektronické výměny zdravotních informací mezi jednotlivci, poskytovateli zdravotní péče a infrastrukturou v České republice.

Tato příručka nepopisuje způsob výměny této zprávy.

### Stručný rozsah

Tato příručka je rozdělena na několik stránek, které jsou uvedeny v horní části každé stránky na liště nabídek.

- [Home - Domovská stránka](index-cs.html): Tato stránka poskytuje úvodní informace, stručný rozsah použití, reference, závislosti, rozdílovou analýzu verzí a prohlášení o duševním vlastnictví.

- About:
  - [Autoři](authors-cs.html): Tento segment obsahuje informace o autorech.
  - [Downloads](downloads-cs.html): Tento segment obsahuje informace o možnostech stahování obsahu implementační specifikace.
  - [Závislosti](dependencies-cs.html): Tento segment obsahuje informace o závislostech.
  - [Autorská práva](copyright-cs.html): Tento segment obsahuje informace o autorských právech.
- [Artifacts](artifacts.html): Tato stránka poskytuje seznam FHIR artefaktů definovaných jako součást této implementační příručky.

### Reference

* Související specifikace:
  * {{hl7XtEHR}}
    * Tato specifikace inspirovala mnoho návrhových vzorů definovaných v tomto IG.
  * {{czImgOrder}}
    * Tato specifikace má mnoho společných návrhových vzorů definovaných v tomto IG.
  * {{czCore}}
    * Kde to bylo možné, byly poděděny specifikace z definicí CZ core.

### Závislosti

{% include dependency-table.xhtml %}

### Rozdílová analýza verzí

{% include cross-version-analysis.xhtml %}

### Prohlášení o duševním vlastnictví

{% include ip-statements.xhtml %}

