// BGEE specific banters & stuff

// Dorn conflict
CHAIN IF WEIGHT #-1 ~Global("rh#IsraDorn","GLOBAL",2)~ THEN RH#ISRAJ rh#dorn1
@0 /* My <PRO_LADYLORD>, this... this beast that you have taken into your company-- */
DO ~SetGlobal("rh#IsraDorn","GLOBAL",3)~
== DORNJ @1 /* You speak of me, paladin? Of course you do. I wonder, is it rage or fear that makes your voice shake so? */
== RH#ISRAJ @2 /* Fear? If I recoil from you, fiend, 'tis out of revulsion, NOT fear. Whatever unholy pact you have made, the wrongness of it clings to you like a second skin. To be near you is to be ill. */
= @3 /* I have kept my peace thus far, out of hope that there might be something about you that was not wholely evil, but I can see now that such hope was in vain. */
= @4 /* <CHARNAME>, if you will not put down this... this rabid dog, then you are as culpable as he. */
== DORNJ @5 /* You would keep such a simpering fool in your party, <CHARNAME>? Do not think that I will endure this one's sanctimonious nonsense any longer. */
END
	++ @6 /* Whoa! Is this really necessary? */ EXTERN DORNJ rh#dorn2
	++ @7 /* Very well. You brought this upon yourself, Isra. */ EXTERN RH#ISRAJ rh#dorn3
	++ @8 /* I have had enough of your vileness anyway, Dorn. */ EXTERN DORNJ rh#dorn4

CHAIN DORNJ rh#dorn2
@9 /* Do not expect me to make allowances for... delicate companions and their weakling gods. I will kill her, with your aid or without it. */
== RH#ISRAJ @10 /* It may not prove as easy as that, fiend. */
END
	++ @11 /* You brought this upon yourself, Isra. */ EXTERN RH#ISRAJ rh#dorn3
	++ @8 /* I have had enough of your vileness anyway, Dorn. */ EXTERN DORNJ rh#dorn4

CHAIN RH#ISRAJ rh#dorn3
@12 /* Then this wretched creature has as good as dragged you down into the Abyss alongside him. If you do not fall to my sword, you will both surely fall to another's. */
DO ~SetGlobal("rh#IsraJoinedBG1","GLOBAL",0) LeaveParty() Enemy() Attack("Dorn")~ 
EXIT

CHAIN DORNJ rh#dorn4
@13 /* A poor decision, <CHARNAME>, and one that will be your last. */
DO ~SetGlobal("DORNPARTY","GLOBAL",0) LeaveParty() Enemy() Attack("rh#Isra")~ 
EXIT
	
// Neera

CHAIN IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraNeera1","GLOBAL",0)~ THEN BRH#ISRA rh#IsraNeera1
@14 /* Neera... might I ask what, exactly, you are doing? */
DO ~SetGlobal("rh#IsraNeera1","GLOBAL",1)~
== BNEERA @15 /* Oh! Well, I was thinking about altering the cut of this robe a bit. Though I'd probably just wreck it. I don't know that much about sewing. */
== BRH#ISRA @16 /* Can you alter a mage's robe at all without risking its power? */
== BNEERA @17 /* I, um, actually don't know. I guess we can try it and find out, right? */ 
= @18 /* Could I maybe borrow that ceremonial dress you showed me the other night? The slinky red thing? To use as a model, I mean. I'm not going to cut it up or anything. */
== BRH#ISRA @19 /* That... might not be the most appropriate option, Neera. */
== BNEERA @20 /* I'm sorry. If it has special religious meaning or something, I wouldn't want to cause offense. */
== BRH#ISRA @21 /* You haven't, no, but it isn't exactly the sort of thing I would wear in public. */
== BNEERA @22 /* I don't see why not. It looked pretty amazing. */
= @23 /* Oh, gods. Isra, I think you're blushing. I can't say I've ever actually seen that before. Wow. Go me, I guess. I, um, promise I'm not hitting on you or anything. */
== BRH#ISRA @24 /* (laugh) It makes little enough difference at this point. */
== BNEERA @25 /* Right. Well, it was really just a thought. I mean, it'd be just great if I went and ruined it and then had nothing at all to wear. */
= @26 /* Yeah, now you're definitely blushing. */
== BRH#ISRA @27 /* ... You really are too much sometimes, Neera. */
== BNEERA @28 /* Oh, I know it. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraNeera2","GLOBAL",0)~ THEN BNEERA rh#IsraNeera2
@29 /* You're not anywhere near as scary as I thought you were going to be, Isra. I mean, you don't even seem to hate me at all. At least... I don't think you do. */
= @30 /* Um. You don't, right? */
DO ~SetGlobal("rh#IsraNeera2","GLOBAL",1)~ 
== BRH#ISRA @31 /* ... Why in the Realms would you think I hated you? */
== BNEERA @32 /* I don't! But, well, you're from Amn, and everyone knows how the Amnish feel about magic, and my type... yeah. */
== BRH#ISRA @33 /* 'Twould be a poor excuse to hate someone. In any case, I have known far too many bards to fear magic. */
= @34 /* I cannot say that I am terribly thrilled with your gift, though, no. */
== BNEERA @35 /* I didn't think you would be. And some of the things I've done with it... accidentally, of course, and not nearly as often as everyone seems to think, but-- */
= @36 /* You're not honor bound to smite me or something if I tell you about this stuff, are you? */
== BRH#ISRA @37 /* No, of course not. */
== BNEERA @38 /* Good. Though I'm not really sure why I'm talking to you about this at all. I mean, I don't suppose guilt is a feeling you'd have much experience with. The slightest mistake, and POOF, no more paladinhood, right? */
== BRH#ISRA @39 /* It doesn't work quite like that. If it did, I doubt that there would be any of us left at all. We're expected to correct our failings, certainly, but perfection is an ideal, not a reality. */
== BNEERA @40 /* That's reassuring, but when your failings are kind of outside of your control... I don't know. It's not something I can just... fix. */
== BRH#ISRA @41 /* Neera, if you want practical advice, I would certainly rather you limited yourself to wands whenever possible. If it is religious counsel that you want, this may be a concern best discussed with the church of Mystra. My personal knowledge of wild magic is... rather sparse, I must admit. */
== BNEERA @42 /* That might actually be a good idea. You don't happen to know any Mystrans, do you? */
== BRH#ISRA @43 /* There are precious few in Amn, I'm afraid. */
== BNEERA @44 /* Well, I guess it can wait. I've figured stuff out well enough on my own so far. Sort of. A bit longer shouldn't make much of a difference. */
EXIT

// Rasaad

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraRasaad1","GLOBAL",0)~ THEN BRH#ISRA rh#IsraRasaad1
@45 /* I cannot say that I have ever heard Selûne's teachings approached in quite the manner you take, Rasaad. */
DO ~SetGlobal("rh#IsraRasaad1","GLOBAL",1)~ 
== BRASAAD @46 /* You are familiar with-- no, of course you would be familiar with Selûne's faithful. */
== BRH#ISRA @47 /* Less so than with several other allied faiths, I admit, though the occasional mystic visits our temple in Crimmor. The temple is informal enough as it is that we seldom protest their spontaneous sermons. */
= @48 /* Still, your approach is intriguingly novel. */
== BRASAAD @49 /* Truth is universal; interpretation is the reflection by which we might come to understand it. I would be very interested in speaking with such mystics. */
== BRH#ISRA @50 /* Hmm. I forget how secluded monasteries can be. The Order of the Ruby Rose remains in quite close contact with the larger church of Sune. Mayhap that is why our teachings are not nearly as divergent as they might otherwise be. */
= @51 /* Though I have never met a Sunite monk. */
== BRASAAD @52 /* That is unfortunate. I have heard that there are several Sunite Sun Soul sects in Amn. */
== BRH#ISRA @53 /* I wonder if their teachings would be as unfamiliar to me as yours are. 'Tis a most... unsettling thought, truly. */
== BRASAAD @54 /* Unsettling? I am surprised that you would not welcome the prospect. Perhaps one can never understand all that there is to know about one's own faith, but the journey is often as important as the destination. */
== BRH#ISRA @55 /* (laugh) I have heard that piece of wisdom from Selûnites before. */
= @56 /* I am a theologian, aye, but I have never dedicated myself to contemplation. 'Tis disquieting to consider how much deeper an understanding one who has done so might have. */
== BRASAAD @57 /* Deeper? I do not think so. Your goddess is a being of passion, yes? There are aspects of her nature that no monk, no matter how learned, could grasp. */
= @58 /* But I am somewhat familiar with the teachings of the monks of Sune. I would be willing to share them with you, if you so wish it. */
== BRH#ISRA @59 /* To be instructed by a Selûnite in my own faith... 'twould teach me humility, at the least. I would appreciate that indeed, Rasaad. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraRasaad2","GLOBAL",0)~ THEN BRASAAD rh#IsraRasaad2
@60 /* Sometimes I forget that you are not actually from Calimshan, my friend. I have not enjoyed such cooking since I left Calimport. */
DO ~SetGlobal("rh#IsraRasaad2","GLOBAL",1)~
== BRH#ISRA @61 /* Truly? Calishite food is almost as popular throughout Amn as its silks and wines are. I am surprised that you did not find any in Athkatla. */
== BRASAAD @62 /* Food was... not a priority at the time. */
== BRH#ISRA @63 /* No... no, I imagine not. */
== BRASAAD @64 /* But yours is very good, Isra. It is not a skill I would have thought to associate with a paladin. */
== BRH#ISRA @65 /* 'Tis hardly the most obvious one, no, but squires are expected to provide such services to their knights. We often become quite good at it. */
== BRASAAD @66 /* Initiates of the monastery perform such chores as well, though it is a task reserved for the youngest of novices, in order to teach them the value of discipline and patience. */
== BRH#ISRA @67 /* Aye, as well as respect, service, and humility, though 'tis usually considered an honor rather than a chore amongst us. The mutual obligations between knight and squire are sacrosanct. */
== BRASAAD @68 /* It is interesting to me how similar and yet how different our experiences have been. Perhaps that is not surprising. The slightest shift of the mirror's angle causes the light to reflect in new and often unexpected ways. */
== BRH#ISRA @69 /* And 'tis those very differences that remind us that we are none of us alone in this world. */
== BRASAAD @70 /* Indeed. I thank you for this discussion, my friend. I appreciate all opportunities to further my learning, not least those that were unanticipated. */
EXIT