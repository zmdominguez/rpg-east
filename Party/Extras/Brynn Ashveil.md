---
player: Zarah
name: Brynn Ashveil
class: Cleric
species: Halfling
tags:
  - party
---

> [!statblocks|full]
> ![[Brynn-Ashveil.png|cover right circle p+tc htiny wtiny lp]]
> 
> # <!-- IQ: =this.file.name -->Brynn Ashveil<!-- /IQ -->
>
> |  |  |
> | ---- | ---- |
> | **Player** | <!-- IQ: =this.player -->Zarah<!-- /IQ --> |
> | **Class** | <!-- IQ: =this.class -->Cleric<!-- /IQ --> |
> | **Species** | <!-- IQ: =this.species -->Halfling<!-- /IQ --> | 
> | **Level** | <!-- IQ: =this.level -->3<!-- /IQ --> (Life Domain) | 
> 
> ---
| HP | AC | Initiative |
|:---:|:---:|:---:|
| 16 | 15 | +2 |
>
>
| STR | DEX | CON | INT | WIS | CHA |  |
|:---:|:---:|:---:|:---:|:---:|:---:|:--- |
| 12 | 15  | 10 | 14 | 16 | 8 |  |
| +<!-- IQ: =this.STR_MOD -->1<!-- /IQ --> | +<!-- IQ: =this.DEX_MOD -->2<!-- /IQ --> | +0 | +<!-- IQ: =this.INT_MOD -->2<!-- /IQ --> | +<!-- IQ: =this.WIS_MOD -->3<!-- /IQ --> | <!-- IQ: =this.CHA_MOD -->-1<!-- /IQ --> | **Mod** |
| +1 | +2 | +0 | +2 | +<!-- IQ: =(this.WIS_MOD+this.pb) -->5<!-- /IQ --> | +<!-- IQ: =(this.CHA_MOD+this.pb) -->1<!-- /IQ --> | **Sav** |
>
> %% 
> Add modifiers or stats here used in other places. For example, this WIS modifier is used for other checks:
> level:: 3
> pb:: 2
> STR_MOD:: 1
> DEX_MOD:: 2
> INT_MOD:: 2
> WIS_MOD:: 3
> CHA_MOD:: -1
> SPELL_SAVE_DC:: 13
> %%
> 
>> \*ADV to avoid or end the Frightened condition
>> **Skills:** Acrobatics +<!-- IQ: =(this.DEX_MOD+this.pb) -->4<!-- /IQ --> (DEX mod+PB), Perception +<!-- IQ: =(this.WIS_MOD+this.pb) -->5<!-- /IQ --> (WIS mod + PB),  Medicine +<!-- IQ: =(this.WIS_MOD+this.pb) -->5<!-- /IQ -->, History +<!-- IQ: =(this.INT_MOD+this.pb) -->4<!-- /IQ -->
>> 
>
|  |  |
| ---:|:--- |
| **Speed** | 30ft |
| **Passive Perception** | 15 |
| **Proficiency Bonus** | +<!-- IQ: =this.pb -->2<!-- /IQ --> |
>
> 
>> ## Spells
>
>> |  |  |
| ---:|:--- |
| **Modifier** | +3 |
| **Spell Attack** | +5 |
| **Save DC** | <!-- IQ: =this.SPELL_SAVE_DC -->13<!-- /IQ --> |
>>
| Level | Slots | Spells |
| ---: | --- | --- | 
| 1st | 4 | Bless, Cure Wounds, Detect Poison and Disease, Guiding Bolt, Shield of Faith |
| 2nd | 2 | Aid, Enhance Ability, Hold Person, Lesser Restoration, Prayer of Healing |
| 3rd | - | - |
| 4th | - | - |
| 5th | - | - |
>
> **Channel Divinity:** 2
> 
>> #### Cantrips (4)
>>  Guidance, Sacred Flame, Toll of the Dead, Word of Radiance 
>
> ---
> ## Attacks
>- **Dagger**: +4 to hit, 1d4+<!-- IQ: =this.pb -->2<!-- /IQ --> piercing
>- **Mace**: +3 to hit, 1d6+1 bludgeoning
>- **Guiding Bolt**: +5 to hit, 4d6 radiant damage
>- **Enhanced Unarmed Strike**: +3 to hit, 1d4+<!-- IQ: =this.STR_MOD -->1<!-- /IQ --> bludgeoning
>
> ---
>> ## Class Features
>> #### Divine Order
>> **Thaumaturge.** Add <!-- IQ: =this.WIS_MOD -->3<!-- /IQ --> to your Intelligence (Arcana and Religion) checks
>> #### Channel Divinity
>> Choose which Channel Divinity effect to use. Regain one of its expended uses when you finish a Short Rest, and you regain all expended uses when you finish a Long Rest. Saving throw DC equals the spell save DC  (DC <!-- IQ: =this.SPELL_SAVE_DC -->13<!-- /IQ -->).
>> **Divine Spark.** Magic action -- creature within 30 feet gains 1d8+<!-- IQ: =this.WIS_MOD -->3<!-- /IQ --> HP or make a CON save. Failed save: Necrotic or Radiant damage (your choice) equal to that total. Successful save, half as much damage (round down).
>> **Turn Undead.** Magic action -- each Undead creature of your choice within 30 feet makes a WIS save. Failed save: Frightened and Incapacitated condition for 1 minute. For that duration, it tries to move as far from you as it can on its turns. This effect ends early on the creature if it takes any damage, if you have the Incapacitated condition, or if you die.
>> #### Disciple of Life
>> When a spell you cast with a spell slot restores Hit Points to a creature, that creature regains additional Hit Points on the turn you cast the spell. The additional Hit Points equal 2 plus the spell slot’s level.
>> #### Life Domain Spells
>> Always prepared spells: Aid, Bless, Cure Wounds, Lesser Restoration
>> #### Preserve Life
>> As a Magic Action, you can expend a use of your Channel Divinity to restore 5 times <!-- IQ: =this.level -->3<!-- /IQ --> (Cleric level) HP to Bloodied creatures within 30 ft. of yourself (which can include you), and divide the HP among them. This feature can only restore a creature up to half its maximum HP.
>>
>> ## <!-- IQ: =this.species -->Halfling<!-- /IQ --> Traits
| | |
| --- | :--- |
| **Brave** | ADV on saving throws to avoid or end Frightened condition |
| **Halfling Nimbleness** | Move through the space of any creature that is a size larger than you, but you can’t stop in the same space. |
| **Luck** | When you roll a 1 on the d20 of a D20 Test, you can reroll the die, and you must use the new roll. |
| **Naturally Stealthy** | You can take the Hide action even when you are obscured only by a creature that is at least one size larger than you. |
>
> **Size:** Small
>>
>
>> ## Feats
>> 
>> #### Tavern Brawler
>> **Enhanced Unarmed Strike.** Bludgeoning damage equal to 1d4<!-- IQ: =this.STR_MOD -->1<!-- /IQ --> (STR mod) instead of the normal damage of an Unarmed Strike
>> **Damage Rerolls.** Can reroll nat 1 for damage with Unarmed Strike, must use the new roll.
>> **Improvised Weaponry.** Proficiency with improvised weapons.
>> **Push.** 1/turn; Deal damage to the target and push it 5ft away from you with Unarmed Strike
>> 
> ---
> ## Equipment and Notable Items
> #### Equipment
> Traveler's Clothes, Navigator's Tools
> 
>
> ---

## 🕯️ Backstory

Brynn grew up at the Survivor's Rest, a coastal refugee settlement, having arrived there as an infant when her fishing village was destroyed by a storm. She spent her life split between crewing supply vessels along the coast and tending to the sick and displaced at the temple of [[Scarsith]].

She lost her closest friend, Coll, to the sea at nineteen. Another Rest kid who'd crewed with her from their first voyage. He went overboard in a squall and she was the one who saw it happen and couldn't reach him in time. The grief sent her to the temple - not for comfort, but for a theology that could hold that kind of loss without flinching. Scarsith's faith doesn't promise things will be okay. It promises you'll endure.

She was ordained quietly, without ceremony, which suited her.

She received a letter from Priestess [[Nell]] of [[Thornhaven]] marked urgent. She doesn't know Nell personally, but knows her reputation - someone actually feeding people, not just talking about Scarsith's teachings. When someone like that sends a letter marked urgent, you don't write back asking for more detail. You pack a bag.

## 👨‍🎤 Description

- Travels light, speaks plainly
- Will patch up anyone who needs it without asking what they deserve
- Matter-of-fact bedside manner - doesn't pretend death isn't in the room, but doesn't let it run the conversation either
- "We gnaw through, together."

## 📝 Notes

- Temple: Survivor's Rest (coastal refugee settlement)
- Lost friend: Coll (went overboard in a storm when she was 19)
- The Gnawing Hunger: "The thing that keeps you moving when you've got no good reason to"
- Will not compromise: The person in front of her. If someone is hurt or dying, she won't let them suffer for a principle.
