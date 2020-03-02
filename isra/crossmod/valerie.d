// 1.
CHAIN IF ~InParty("T2Val")
See("T2Val")
!StateCheck("T2Val",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraValerie1","GLOBAL",0)~ THEN BRH#ISRA rh#IsraValerie1
~I haven't visited Athkatla in... just under a year now. I would ask for tidings, though our social circles likely do not overlap at all.~
DO ~SetGlobal("rh#IsraValerie1","GLOBAL",1)~
== BT2Val ~Athkatla is the same as it has always been. Corrupt and vain. There are rumors of new trouble in the underworld, but I doubt it. The shadows take excellent care of themselves and their turf.~
== BRH#ISRA ~'Tis hardly a city I would care to live in, even if I did not end up horribly lost almost every time I visited.~
== BT2Val ~It is Athkatla. Waterdeep's more honest shadow. Still, for all of its faults - and they are legion - it is home. I'm surprised to find myself missing the city, to be honest.~
== BRH#ISRA ~Aye, I miss Crimmor as well... and Amn as a whole, truth be told. The occasional suspicious glance grows wearisome, and I imagine it is even worse for you.~
== BT2Val ~You'd be surprised. People rarely pay attention to a mage deep in a book, be it reading or writing. I attract far less attention than you do, at any rate.~
== BRH#ISRA ~*laugh* I suppose that is true enough. The Firehair's faith is rare enough here, and largely associated with Amn. The Cowled Wizards' name does not extend quite so far, apparently.~
== BT2Val ~No one likes to admit we exist in Amn. Why should the Sword Coast know about us? We've wasted enough time here.~
EXIT

// 2.
CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("T2Val",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraValerie2","GLOBAL",0)~ THEN BT2Val rh#IsraValerie2
~Unusual. I wasn't aware that Sune had warriors, much less paladins.~
DO ~SetGlobal("rh#IsraValerie2","GLOBAL",1)~
== BRH#ISRA ~It should not surprise you so, my lady. Love for country, love for humanity, love for one's god... if love is not the foundation of any devotion, 'tis a poor devotion indeed.~
= ~And truth be told, there is as much a tradition of gallantry amongst my church as in yours, even if we are rather more romantic about it.~
== BT2Val ~There is a significant difference between a bard's songs and the truth. One thing I can give this expedition: a great deal I have read about now makes much more sense.~
== BRH#ISRA ~This quest is likely as illuminating for me as it is for you. Life in any knightly order is somewhat... sheltered, I am beginning to realize.~
== BT2Val ~No less so than apprenticeship in the Cowled Wizards, I suspect. Then again, we hear altogether too much of the real world in Torm's church. The stories coming out of Maztica are not pleasant, and I'd imagine the truth is worse, hard as it is to believe. Then again, Torm does say that the hiding from the truth only makes it hurt worse.~
== BRH#ISRA ~Torm is not alone in that conviction. As for Maztica... I have little difficulty at all believing that the truth is worse.~
== BT2Val ~Again, I'm surprised. To be completely honest, I've always disregarded the Sunite faith as harmless and toothless. Good at making people feel good, which certainly isn't a bad thing, but not inclined to take notice or action of what's going on outside their festhalls.~
== BRH#ISRA ~We're not Sharessans, despite the occasional similarity. Many of us do not have the temper for this work, 'tis true, but our faith emphasizes guardianship also.~
== BT2Val ~All I've seen of your faith is decadence and frivolity, which isn't for me. You're different, but I'm not sure yet if you're an exception to the rule or if the rule is different than I thought.~
== BRH#ISRA ~I cannot claim that our reputation is entirely unearned, but I am sure you would agree that paying too much heed to stereotypes can be a dangerous thing.~
EXIT

// Sendai interjection
INTERJECT ~%tutu_scriptbg%SENDAI~ 0 rh#val.sendai
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID) InParty("T2Val") InMyArea("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN 
~My lady, you dishonor both your house and our nation with such an appalling lack of courtesy.~
== ~%tutu_scriptbg%SENDAI~ ~Is that so? No amount of acquired class could erase your accent entirely. Is Eshpurta not enough of a backwater for you that you feel compelled to traipse around with these barbarians instead?~
== T2ValJ ~These northerners travel under the protection of the Cowled Wizards of Amn, citizen. If you would like to levy any further accusations at us, I can tell you where in Athkatla you should lodge a formal complaint.~
== ~%tutu_scriptbg%SENDAI~ ~Hmph. Very well, Cowled Wizard, though I must note your exceptionally poor taste in mercenaries.~ 
== T2ValJ ~Good help is hard to find, Lady Argrim. They are discrete, at least.~
== ~%tutu_scriptbg%SENDAI~ ~There is something to be said for that. Very well, you may continue your business.~
== T2ValJ ~Thank you, my lady, and we will be on our way.~
END
	++ ~Thank you for handling that, Valerie. That could have gotten ugly.~ EXTERN T2ValJ rh#val.Ugly
	++ ~While I appreciate what you did, never pretend you're in charge again.~ EXTERN T2ValJ rh#val.Pretend
	++ ~You don't get to walk away, Sendai. You will pay for mocking us.~ EXTERN T2ValJ rh#val.Pay

CHAIN T2ValJ rh#val.Ugly
~It's no trouble. I don't like throwing my status around like that, but it was for the best in this case.~
DO ~ActionOverride("DELGOD",EscapeArea())
ActionOverride("ALEXANDER",EscapeArea())
ActionOverride("SENDAI",EscapeArea())~ 
EXIT

CHAIN T2ValJ rh#val.Pretend
~Forgive me for helping. I won't do it again.~
DO ~ActionOverride("DELGOD",EscapeArea())
ActionOverride("ALEXANDER",EscapeArea())
ActionOverride("SENDAI",EscapeArea())~ 
EXIT

CHAIN T2ValJ rh#val.Pay
~<CHARNAME>? Are you *really* going to fight these people just because one snobbish noblewoman insulted you? I'm not afraid of fighting when we have to, but I won't be party to murder.~
== RH#ISRAJ ~Aye, nor shall I. Be sensible, my <PRO_LADYLORD>.~
END
	++ ~When you put it that way, nevermind. Let's go.~ EXTERN T2ValJ rh#val.Go
	++ ~If this woman wanted a fight, she's got one.~ EXTERN T2ValJ rh#val.Fight

CHAIN T2ValJ rh#val.Go
~Sigh. Forget it. Alright, let's go.~
DO ~ActionOverride("DELGOD",EscapeArea())
ActionOverride("ALEXANDER",EscapeArea())
ActionOverride("SENDAI",EscapeArea())~ 
EXIT

CHAIN T2ValJ rh#val.Fight
~Then you fight without me. Nashkel should be warned that you kill over petty slights.~
DO ~LeaveParty() ReputationInc(-2) SetGlobal("T2ValHate","GLOBAL",1)
ActionOverride("DELGOD",Enemy())
ActionOverride("ALEXANDER",Enemy())
ActionOverride("SENDAI",Enemy())
EscapeArea()~
EXTERN RH#ISRAJ rh#val.IsraFight

CHAIN RH#ISRAJ rh#val.IsraFight
~And I won't be party to this madness one way or the other.~
DO ~LeaveParty()
ActionOverride("DELGOD",Attack(Player1))
ActionOverride("ALEXANDER",Attack(Player1))
ActionOverride("SENDAI",Attack(Player1))
EscapeArea()~
EXIT