---
player: Zarah
name: Nyra
class:
  - Rogue
species: Human
tags:
  - party
---

> [!statblocks|full]
> ![[Nyra.png|cover right circle p+tc htiny wtiny lp]]
> 
> # <!-- IQ: =this.file.name -->Nyra<!-- /IQ -->
>
> |  |  |
> | ---- | ---- |
> | **Player** | <!-- IQ: =this.player -->Zarah<!-- /IQ --> |
> | **Class** | <!-- IQ: =this.class -->Rogue<!-- /IQ --> |
> | **Species** | <!-- IQ: =this.species -->Human<!-- /IQ --> | 
> | **Level** | <!-- IQ: =this.level -->6<!-- /IQ --> (Assassin) | 
> 
> ---
| HP | AC | Initiative |
|:---:|:---:|:---:|
| 34 | 15  |  +<!-- IQ: =this.dex_mod -->4<!-- /IQ --> |
>
>
| STR | DEX | CON | INT | WIS | CHA |  |
|:---:|:---:|:---:|:---:|:---:|:---:|:--- |
| 15 | 18  | 7 | 17 | 12 | 7 |  |
| +<!-- IQ: =this.str_mod -->2<!-- /IQ --> | +<!-- IQ: =this.dex_mod -->4<!-- /IQ --> | -2 | +<!-- IQ: =this.int_mod -->3<!-- /IQ --> | +<!-- IQ: =this.wis_mod -->1<!-- /IQ --> | <!-- IQ: =this.cha_mod -->-2<!-- /IQ --> | **Mod** |
| +2 | +<!-- IQ: =(this.dex_mod+this.pb) -->7<!-- /IQ --> | -2 | +<!-- IQ: =(this.int_mod+this.pb) -->6<!-- /IQ --> | +1 | -2 | **Sav** |
>
>> \*ADV on Death Saves
>> **Skills:**
>> - Expertise: Acrobatics +<!-- IQ: =(this.dex_mod+(this.pb*2)) -->10<!-- /IQ -->, Investigation +<!-- IQ: =(this.int_mod+(this.pb*2)) -->9<!-- /IQ -->, Sleight of Hand +<!-- IQ: =(this.dex_mod+(this.pb*2)) -->10<!-- /IQ -->, Stealth +<!-- IQ: =(this.dex_mod+(this.pb*2)) -->10<!-- /IQ -->
>> - Proficiency: Athletics <!-- IQ: =(this.str_mod+this.pb) -->5<!-- /IQ -->, Deception +<!-- IQ: =(this.cha_mod+this.pb) -->1<!-- /IQ -->, Insight +<!-- IQ: =(this.wis_mod+this.pb) -->4<!-- /IQ -->, Perception +<!-- IQ: =(this.wis_mod+this.pb) -->4<!-- /IQ -->, Persuasion +<!-- IQ: =(this.cha_mod+this.pb) -->1<!-- /IQ -->
>
> %% 
> Add modifiers or stats here used in other places. For example, this WIS modifier is used for other checks:
> level:: 6
> pb:: 3
> hp_die:: d8
> str_mod:: 2
> dex_mod:: 4
> int_mod:: 3
> wis_mod:: 1 
> cha_mod:: -2
> %%
>
|  |  |
| ---:|:--- |
| **Speed** | 30ft |
| **Passive Perception** | <!-- IQ: =(this.wis_mod+this.pb+10) -->14<!-- /IQ --> |
| **Proficiency Bonus** | +<!-- IQ: =this.pb -->3<!-- /IQ --> |
>
> 
> ---
> ## Attacks
>- **Dagger (x 2):** Mastery; +7 to hit, 1d4+4 piercing. Nick.
>- **Shortbow:** Mastery; +7 to hit, 1d6+4 piercing. Vex.
>- **Shortsword:** +7 to hit, 1d6+4 piercing.
>- **Unarmed strike:** +5 to hit, 3 bludgeoning.
>
> ---
>> ## Class Features
>> #### Sneak Attack
>> Deal an extra <!-- IQ: =choice(this.level > 18, "10d6", choice(this.level > 16, "9d6", choice(this.level > 14, "8d6", choice(this.level > 12, "7d6", choice(this.level > 10, "6d6", choice(this.level > 8, "5d6", choice(this.level > 6, "4d6", choice(this.level > 4, "3d6", choice(this.level > 2, "2d6", "1d6"))))))))) -->3d6<!-- /IQ --> damage to one creature you hit with an attack roll if you have Advantage on the roll and the attack uses a Finesse or a Ranged weapon. The extra damage’s type is the same as the weapon’s type.
>>
>> You don’t need Advantage on the attack roll if at least one of your allies is within 5 feet of the target, the ally doesn’t have the Incapacitated condition, and you don’t have Disadvantage on the attack roll.
>> #### Thieves’ Cant
>> You know Thieves’ Cant and one other language of your choice: Goblin
>> #### Weapon Mastery
>> Your training with weapons allows you to use the mastery properties of two kinds of weapons of your choice with which you have proficiency.
>> 
>> Whenever you finish a Long Rest, you can change the kinds of weapons you chose.
>> 
>> Weapon Proficiencies: Simple weapons and Martial weapons that have the Finesse or Light property
>> #### Cunning Action
>> Bonus Action: Dash, Disengage, or Hide
>> #### Assassinate
>> **Initiative.** You have Advantage on Initiative rolls.
>> **Surprising Strikes.** During the first round of each combat, you have Advantage on attack rolls against any creature that hasn’t taken a turn. If your Sneak Attack hits any target during that round, the target takes extra <!-- IQ: =this.level -->6<!-- /IQ --> damage of the weapon’s type.
>> 
>> #### Assassin's Tools
>> You gain a Disguise Kit and a Poisoner’s Kit, and you have proficiency with them.
>> #### Steady Aim
>> BA; ADV on next attack roll on the current turn. You can use this feature only if you haven’t moved during this turn, and after you use it, your Speed is 0 until the end of the current turn.
>> #### Cunning Strike
>> Pay die cost for one Cunning Strike effect when dealing Sneak Attack damage. DC <!-- IQ: =(8+this.dex_mod+this.pb) -->15<!-- /IQ -->.
>> **Poison.**  (Cost: 1d6) CON save. Failure: Poisoned condition for 1 minute. At the end of each of its turns, the Poisoned target repeats the save, ending the effect on itself on a success. Requires Poisoner’s Kit.
>> **Trip.** (Cost: 1d6) DEX save if the target is Large or smaller. Failure:  Prone condition.
>> **Withdraw.** (Cost: 1d6) Immediately after the attack, move up to half your Speed without provoking Opportunity Attacks.
>> #### Uncanny Dodge
>> Use Reaction to halve the attack’s damage (round down).
>>
>> ## <!-- IQ: =this.species -->Human<!-- /IQ --> Traits
| | |
| --- | :--- |
| **Resourceful** | Heroic Inspiration / LR |
| **Skillful** | Proficiency in skill of choice: Acrobatics |
| **Versatile** | Gain an Origin feat: Skilled |
>
>> ## Feats
>> 
>> #### Durable
>> **Ability Score Increase.** Increase your Constitution score by 1, to a maximum of 20.
>> **Defy Death.** ADV on Death Saving Throws.
>> **Speedy Recovery.** BA; you can expend one of your Hit Point Dice (<!-- IQ: =this.hp_die -->d8<!-- /IQ -->), roll the die, and regain a number of Hit Points equal to the roll.
>> #### Skilled
>> Gain proficiency in any combination of three skills or tools: Athletics, Navigator's Tools, Persuasion
>> #### Lucky
>> **Luck Points.** <!-- IQ: =this.pb -->3<!-- /IQ -->/LR; *Advantage*: ADV on a D20 Test. *Disadvantage*: Impose DisADV on a d20 attack roll against you.
>> 
> ---
> ## Equipment and Notable Items
> #### Equipment
> Disguise Kit, Navigator's Tools (prof.), Poisoner's Kit (prof.), Thieves' Tools (prof.), Traveler's Clothes
>
> ---

## 🕯️ Backstory
No one knows Nyra's real name.

The name she uses now was taken from a gravestone in a city she no longer remembers clearly — only that it rained the night she chose it, and that the rain washed something away she didn't want back.
She grew up in the spaces people don't look at: behind kitchens, under stairwells, on rooftops where the guards never bother to climb. Her earliest memories are of listening — learning how long a pause lasts before a lie, how footsteps change when someone is afraid, how silence can mean safety or death depending on its shape. She didn't steal at first. She ran messages. Slipped notes under doors. Memorized routes. Watched who entered and who didn't come back out. Information was lighter than coin and far less likely to be missed.
That changed the night she delivered a message she wasn't meant to read.

She still doesn't know who wrote it — only that it named a person who was supposed to die before dawn. A good person. Someone who had once given her food without asking for anything back. Nyra warned them. By morning, the city was searching for a ghost. The message runner who vanished. The traitor. The mistake.
She learned two things that night: loyalty is more dangerous than greed, and if you move quietly enough, you can survive almost anything.
Since then she has lived by rules she doesn't speak aloud. Never stay long. Never give your whole name. Never open a letter you're paid not to read. And if you do break a rule — run far enough that the consequences get lost trying to follow you. She works as a rogue for hire: lockpicker, scout, thief, sometimes spy. She takes risks for coin, but what she really collects are choices — moments where she decides who gets hurt and who gets away.

The smile is real, mostly. The warmth is real, selectively. The knife is always real.

She knows the past will catch up eventually. Until then she listens for the quiet between footsteps — and makes sure she's never standing where the sound stops.


## 👨‍🎤 Description
Nyra is a young human woman who moves through crowds like she belongs in all of them and none of them. She has sharp green eyes that take in a room faster than most people notice she's there, dark brown hair tucked under a worn hood, and a smile that sits just a half-second ahead of whatever she's actually thinking. Her leather armor is dark, battered, and well-maintained — the gear of someone who treats her equipment seriously even if she treats most people lightly. She keeps a short blade at her hip and a knife already in her hand more often than seems strictly necessary. The fingerless gloves, the crossed harness, the layered cloak — nothing is decorative. Everything has a use.

She looks like she knows exactly where she's going. She usually does.


## 📝 Notes
- Magical item -- cloak of Manta
	- Swimming 15ft
	- Can breathe underwater for 5mins