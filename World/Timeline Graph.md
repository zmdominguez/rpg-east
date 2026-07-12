%% [Syntax reference](https://publish.obsidian.md/slrvb-docs/ITS+Theme/Callouts/Callout+-+Timeline) %%

<!-- dataview-serializer-js:
const pages = dv.pages('"Campaign Journal"')  
.where(p => p.campaign_year === "Ancient Times")

const sessionLinks = pages  
.map(p => p.file.link.markdown())  
.array()  
.join(" • ");

const sessionDisplay = sessionLinks ? ` *${sessionLinks}*` : "";

dv.el("div", `> [!timeline|t-l]- **Ancient Times**${sessionDisplay}
> **The Owl Curse** - An unknown transgression led to people being transformed into owls as punishment. These cursed beings now inhabit the [[Halfheight Forest]] near the lake.
> **The Thelasian Civilization** - An advanced underground society flourished beneath the swamps. Their cities featured cleansing pools, bioluminescent lighting, and golem servants. The civilization eventually fell silent, leaving behind sealed ruins.`); 
-->
<!-- dataview-serializer-js-result -->
> [!timeline|t-l]- **Ancient Times**
> **The Owl Curse** - An unknown transgression led to people being transformed into owls as punishment. These cursed beings now inhabit the [[Halfheight Forest]] near the lake.
> **The Thelasian Civilization** - An advanced underground society flourished beneath the swamps. Their cities featured cleansing pools, bioluminescent lighting, and golem servants. The civilization eventually fell silent, leaving behind sealed ruins.

<!-- dataview-serializer-js-result-end -->

<!-- dataview-serializer-js-result-end -->

<!-- dataview-serializer-js:
const pages = dv.pages('"Campaign Journal"')  
.where(p => p.campaign_year === "Year 0")  

const sessionLinks = pages  
.map(p => p.file.link.markdown())  
.array()  
.join(" • ");

const sessionDisplay = sessionLinks ? ` *${sessionLinks}*` : "";

dv.el("div", `> [!timeline|t-r t-5]- **Year 0**${sessionDisplay}
> - **End of the Jackal War** - A period of peace begins after conflict with the Jackals
> - **Founding of Thornhaven** - Settlers establish the town with access to iron, fresh water, wood, wildlife, and [[Blood root]]
> - **[[Eman]] Arrives** - A child appears in town, secretly a Druid sent by the [[Halfheight Forest|Owl Cult]] to disrupt the settlement. She goes missing briefly with a note bearing a Blood root drawing.
> - **Construction Begins** - [[Venn]] leads the building of most Thornhaven's infrastructure: the rock fence, houses, water channels, and [[Scarsith Temple]]
> - **Death of Maren Ashford** - [[Pipe Ashford]]'s mother dies from a wasting illness
> - **The Village Herbalist** begins cultivating [[Blood root]]`);  
-->
<!-- dataview-serializer-js-result -->
> [!timeline|t-r t-5]- **Year 0** *[[Campaign Journal/The Baddies/S00 The Quiet Year.md|S00 The Quiet Year]]*
> - **End of the Jackal War** - A period of peace begins after conflict with the Jackals
> - **Founding of Thornhaven** - Settlers establish the town with access to iron, fresh water, wood, wildlife, and [[Blood root]]
> - **[[Eman]] Arrives** - A child appears in town, secretly a Druid sent by the [[Halfheight Forest|Owl Cult]] to disrupt the settlement. She goes missing briefly with a note bearing a Blood root drawing.
> - **Construction Begins** - [[Venn]] leads the building of most Thornhaven's infrastructure: the rock fence, houses, water channels, and [[Scarsith Temple]]
> - **Death of Maren Ashford** - [[Pipe Ashford]]'s mother dies from a wasting illness
> - **The Village Herbalist** begins cultivating [[Blood root]]

<!-- dataview-serializer-js-result-end -->


<!-- dataview-serializer-js:
const pages = dv.pages('"Campaign Journal"')  
.where(p => p.campaign_year === "Year 1")

const sessionLinks = pages  
.map(p => p.file.link.markdown())  
.array()  
.join(" • ");

const sessionDisplay = sessionLinks ? ` *${sessionLinks}*` : "";

dv.el("div", `> [!timeline|t-l t-1]- **Year 1**${sessionDisplay}
> - **Thornhaven Grows** - The settlement expands and stabilizes`);  
-->
<!-- dataview-serializer-js-result -->
> [!timeline|t-l t-1]- **Year 1**
> - **Thornhaven Grows** - The settlement expands and stabilizes

<!-- dataview-serializer-js-result-end -->

<!-- dataview-serializer-js:
const pages = dv.pages('"Campaign Journal"')  
.where(p => p.campaign_year === "Year 2")  

const sessionLinks = pages  
.map(p => p.file.link.markdown())  
.array()  
.join(" • ");  

const sessionDisplay = sessionLinks ? ` *${sessionLinks}*` : "";

dv.el("div", `> [!timeline|t-r t-1]- **Year 2**${sessionDisplay}
> - **The Owl Cult Incident** - A group from the [[Halfheight Forest|Owl Cult]] enters Thornhaven seeking [[Eman]]. Their investigation causes a public scandal when Eman spots an owl familiar and raises the alarm.
> - **The Saving War** - [[Eman]] commands Thornhaven's army to push the Owls away from the city. The victory establishes her authority and she becomes Mayor.
> - **[[Pipe Ashford]] Goes Missing** - After years of obsession with [[Blood root]], Pipe disappears into the [[Veiled Peaks]]. Search efforts eventually cease.`);  
-->
<!-- dataview-serializer-js-result -->
> [!timeline|t-r t-1]- **Year 2** *[[Campaign Journal/One Shot/O00 Owl Curse.md|O00 Owl Curse]]*
> - **The Owl Cult Incident** - A group from the [[Halfheight Forest|Owl Cult]] enters Thornhaven seeking [[Eman]]. Their investigation causes a public scandal when Eman spots an owl familiar and raises the alarm.
> - **The Saving War** - [[Eman]] commands Thornhaven's army to push the Owls away from the city. The victory establishes her authority and she becomes Mayor.
> - **[[Pipe Ashford]] Goes Missing** - After years of obsession with [[Blood root]], Pipe disappears into the [[Veiled Peaks]]. Search efforts eventually cease.

<!-- dataview-serializer-js-result-end -->

<!-- dataview-serializer-js:
const pages = dv.pages('"Campaign Journal"')  
.where(p => p.campaign_year === "Year 3")  

const sessionLinks = pages  
.map(p => p.file.link.markdown())  
.array()  
.join(" • ");  

dv.el("div", `> [!timeline|t-l t-1]- **Year 3** *${sessionLinks}*
> - **Thornhaven Prospers** - Under [[Eman]]'s leadership, the city continues to develop
> - **[[Nell]]'s Urgent Summons** - Priestess Nell of the [[Scarsith Temple]] sends letters to faithful followers across the land, requesting aid with an unnamed threat. Three clerics answer the call: [[Brynn Ashveil]], [[Quickfoot]], and [[Caelan Duskrow]].`);  
-->
<!-- dataview-serializer-js-result -->
> [!timeline|t-l t-1]- **Year 3** *[[Campaign Journal/One Shot/O01 Nell Invitation.md|O01 Nell Invitation]] • [[Campaign Journal/One Shot/O02 A Day at the Scarsith Temple.md|O02 A Day at the Scarsith Temple]]*
> - **Thornhaven Prospers** - Under [[Eman]]'s leadership, the city continues to develop
> - **[[Nell]]'s Urgent Summons** - Priestess Nell of the [[Scarsith Temple]] sends letters to faithful followers across the land, requesting aid with an unnamed threat. Three clerics answer the call: [[Brynn Ashveil]], [[Quickfoot]], and [[Caelan Duskrow]].

<!-- dataview-serializer-js-result-end -->

<!-- dataview-serializer-js:
const pages = dv.pages('"Campaign Journal"')  
.where(p => p.campaign_year === "Year 4")  

const sessionLinks = pages  
.map(p => p.file.link.markdown())  
.array()  
.join(" • ");  

dv.el("div", `> [!timeline|t-r t-1]- **Year 4** *${sessionLinks}*
> - **Discovery of the Thelasian Ruins** - [[Dr Clair Bucklebub]] leads an excavation near the swamp, uncovering stone tablets that open to an ancient Thelasian settlement. The [[Reverend Aldric]], [[Jinx]], and [[Nyra]] assist in the initial exploration.`);  
-->
<!-- dataview-serializer-js-result -->
> [!timeline|t-r t-1]- **Year 4** *[[Campaign Journal/Cross Bone Inc/X00 Thelasian Lost City.md|X00 Thelasian Lost City]]*
> - **Discovery of the Thelasian Ruins** - [[Dr Clair Bucklebub]] leads an excavation near the swamp, uncovering stone tablets that open to an ancient Thelasian settlement. The [[Reverend Aldric]], [[Jinx]], and [[Nyra]] assist in the initial exploration.

<!-- dataview-serializer-js-result-end -->




<!-- dataview-serializer-js:
const pages = dv.pages('"Campaign Journal"')  
.where(p => p.campaign_year === "Year 5")
.sort(p => p.file.name);

const sessionLinks = pages  
.map(p => p.file.link.markdown())  
.array()  
.join(" • ");  

dv.el("div", `> [!timeline|t-l t-1]- **Year 5, Current Year** *${sessionLinks}*
> - Red webs are spotted on the tunnel to Thelasian lost city, [[Akor]] talk about "The Weaver". [[Dr Clair Bucklebub]] trade the city access for her position as a vessel.
> - **[[Pipe Ashford]] Sighted** - [[Venn]] spots a woman matching Pipe's description in the [[Veiled Peaks]] after three years missing. Both [[Roderick Ashford]] and [[Eman]] seek to find her.`);  
-->
<!-- dataview-serializer-js-result -->
> [!timeline|t-l t-1]- **Year 5, Current Year** *[[Campaign Journal/The Baddies/S01 Sir Alawin Van Trafford.md|S01 Sir Alawin Van Trafford]] • [[Campaign Journal/The Baddies/S02 Hostage Hoax.md|S02 Hostage Hoax]] • [[Campaign Journal/The Baddies/S03 The Thelasian Webs.md|S03 The Thelasian Webs]] • [[Campaign Journal/The Baddies/S04 Finding Pipe.md|S04 Finding Pipe]] • [[Campaign Journal/The Baddies/S05 The Rootmother's Garden.md|S05 The Rootmother's Garden]] • [[Campaign Journal/The Baddies/S06 Chaos in the Garden.md|S06 Chaos in the Garden]] • [[Campaign Journal/The Baddies/S07 Return to Thornhaven.md|S07 Return to Thornhaven]] • [[Campaign Journal/Cross Bone Inc/X01 Mr Mayfair's Magical Mystorium.md|X01 Mr Mayfair's Magical Mystorium]] • [[Campaign Journal/Cross Bone Inc/X02 The Wizard's Tower.md|X02 The Wizard's Tower]]*
> - Red webs are spotted on the tunnel to Thelasian lost city, [[Akor]] talk about "The Weaver". [[Dr Clair Bucklebub]] trade the city access for her position as a vessel.
> - **[[Pipe Ashford]] Sighted** - [[Venn]] spots a woman matching Pipe's description in the [[Veiled Peaks]] after three years missing. Both [[Roderick Ashford]] and [[Eman]] seek to find her.

<!-- dataview-serializer-js-result-end -->
