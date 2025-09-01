V oblasti přednemocniční neodkladné péče a dokumentace výjezdů zdravotnické záchranné služby se pro výměnu a archivaci dat uplatňuje kombinace mezinárodních standardů (HL7 FHIR, IHE profily) a národních právních předpisů (`zákon č. 374/2011 Sb.`, `zákon č. 372/2011 Sb.` a `vyhláška č. 444/2024 Sb.`). 

Záznam o výjezdu ZZS (ZOV ZZS) je v současnosti vytvářen a sdílen různými informačními systémy jednotlivých krajských poskytovatelů ZZS. Historicky byl nejčastěji implementován ve formátu DASTA 4, který definoval základní bloky pro klinické události. Nově je však specifikován ve struktuře HL7 FHIR R4, což zajišťuje kompatibilitu s moderními eHealth řešeními, akreditovanými afinitními doménami (AAfD) a evropskými iniciativami pro interoperabilitu zdravotnických dat (např. EHDS). 

Klinická terminologie použitá v ZOV ZZS vychází z mezinárodních kódových systémů (SNOMED CT, MKN-10, ATC, SÚKL číselníky léčivých přípravků). Tyto číselníky se využívají jednotně napříč různými typy zdravotnické dokumentace, čímž je zajištěna konzistence a možnost sekundárního využití dat. 

Papírovým předobrazem pro elektronický Záznam o výjezdu je listinný záznam vedený podle `§17 zákona č. 374/2011 Sb.`, který je zároveň specifikován ve `vyhlášce č. 444/2024 Sb., příloha č. 5`. Povinný obsah zahrnuje zejména: 
  a) identifikaci pacienta a poskytovatele, 
  b) datum, čas a místo události, 
  c) údaje o výjezdu a zásahu, 
  d) popis zdravotního stavu pacienta a poskytnuté péče, 
  e) pracovní diagnózu, 
  f) záznam o výsledku a způsobu ukončení zásahu, 
  g) údaje o předání pacienta cílovému poskytovateli zdravotní péče. 

<div>
<img src="EMS-1.png" class="figure-img img-responsive img-rounded center-block" width="40%">
<p><strong>Obr. 1: Tisková sestava výjezdové zprávy vytvořené v systému Koběrsky</strong></p>
<p> </p>
</div>

<div>
<img src="EMS-2.png" class="figure-img img-responsive img-rounded center-block" width="40%">
<p><strong>Obr. 2: Tisková sestava výjezdové zprávy vytvořené v systému EZD (První strana)</strong></p>
<p> </p>
</div>

<div>
<img src="EMS-3.png" class="figure-img img-responsive img-rounded center-block" width="40%">
<p><strong>Obr. 3: Tisková sestava výjezdové zprávy vytvořené v systému EZD (Druhá strana)</strong></p>
<p> </p>
</div>

Tento legislativní rámec se stal základem pro návrh elektronické podoby ZOV ZZS, který je dále rozšířen o strukturované a kódované položky umožňující interoperabilní elektronickou výměnu. 

 