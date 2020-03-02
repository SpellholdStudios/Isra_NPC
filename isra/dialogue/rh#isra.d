BEGIN RH#ISRA

IF ~Global("rh#IsraInitiateBG1","GLOBAL",1) Global("rh#IsraGreywolfAttacks","GLOBAL",1)~ THEN BEGIN j0
 SAY @0 /* An unfortunate ending to a... surprisingly convoluted story, and one I shall have to report back to my order as soon as possible. */
IF ~Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("rh#IsraInitiateBG1","GLOBAL",2)~ + j1
IF ~!Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("rh#IsraInitiateBG1","GLOBAL",2)~ + j2
END

IF ~Global("rh#IsraInitiateBG1","GLOBAL",1) !Global("rh#IsraGreywolfAttacks","GLOBAL",1)~ THEN BEGIN j0.2
 SAY @0 /* An unfortunate ending to a... surprisingly convoluted story, and one I shall have to report back to my order as soon as possible. */
 = @1 /* I should thank you for at least standing aside, my <PRO_LADYLORD>. Good <DAYNIGHT>. */
IF ~~ DO ~SetGlobal("rh#IsraInitiateBG1","GLOBAL",2) EscapeArea()~ EXIT 
END

IF ~~ j1
 SAY @2 /* I should thank you for your assistance, my <PRO_LADYLORD>. Have a good <DAYNIGHT>. */
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ j2
 SAY @3 /* I should thank you for your assistance, my <PRO_LADYLORD>. Would that we had been able to save more than just his legacy. */
	++ @4 /* I'd say that his legacy was more important to him than his life. */ + j3
	++ @5 /* You are a paladin, right? Aren't you on the wrong side of the law? */ + j4
	++ @6 /* Might I ask who you are? */ + j5
	++ @7 /* You're very welcome, but I need to get moving now. */ + j6
END

IF ~~ j3
 SAY @8 /* Aye, and I shall have to see to it that at the very least, this masterpiece makes its way into dependable hands. */
IF ~~ + j5
END

IF ~~ j4
 SAY @9 /* Seemingly, mayhap. I would have preferred a bloodless resolution, certainly, but Greywolf was a servant of his own greed and vanity, not of justice. */
IF ~~ + j5
END

IF ~~ j5
 SAY @10 /* Forgive me my discourtesy. I am Isra Ghadir, most recently of Crimmor, a paladin of the Lady Firehair and a squire in the Order of the Ruby Rose. */
 = @11 /* The Church of Sune sponsors any number of artists, and when we received word of Prism's disappearance, I was asked to look into matters. He was a talented and much loved artist before this... madness took hold of him. */
 = @12 /* Unfortunately, I was initially unaware of the... legal complications involved, and by the time Prism admitted to his theft, there was little that could be done to discourage the bounty-hunters long enough to set the situation straight. */
 = @13 /* I'm grateful that you happened by when you did, my <PRO_LADYLORD>. Might I ask what draws you to the area? */
	+ ~!Dead("mulahey")~ + @14 /* We mean to look into the problems that the mines have been having recently. */ + j7
	+ ~!Dead("mulahey")~ + @15 /* Just a bit of sightseeing. I've never seen a demon before. */ + j8
	+ ~Dead("mulahey")~ + @16 /* We just finished clearing out the mines nearby. */ + j9
	++ @17 /* Sorry, but I don't have time for small talk. */ + j6
END

IF ~~ j6
 SAY @18 /* Of course, my <PRO_LADYLORD>. Good <DAYNIGHT>. */
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ j7
 SAY @19 /* I see. Truly, it gladdens me that somebody finally intends to take action. */
IF ~~ + j10
END

IF ~~ j8
 SAY @20 /* *laugh* I assume that you're referring to the predicament in the mines. Truly, it gladdens me that somebody finally intends to take action. */
IF ~~ + j10
END

IF ~~ j9
 SAY @21 /* I see. I had not realized that the situation had finally been resolved, though I'm glad to hear otherwise. */
 = @22 /* But I shan't keep you any longer, my <PRO_LADYLORD>. Good <DAYNIGHT>. */
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ j10
 SAY @23 /* I am expected back in Crimmor shortly, but I am also in your debt, and I'm reluctant to ignore the situation regardless. Should you wish it, I would be happy to aid you in your investigation below. */
	++ @24 /* Your help would be quite appreciated, thank you. */ + j11
	++ @25 /* Well, you may come in handy if there actually are demons. */ + j12
	++ @26 /* Thanks, but I already have all the help I need. */ + j6
	++ @27 /* Ahh... I don't think so. I don't work very well with paladins. */ + j13
END

IF ~~ j11
 SAY @28 /* Think nothing of it. */
IF ~~ DO ~SetGlobal("rh#IsraJoinedBG1","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ j12
 SAY @29 /* I find it rather unlikely, my <PRO_LADYLORD>, but 'twould be wise to prepare for all possibilities. */
IF ~~ DO ~SetGlobal("rh#IsraJoinedBG1","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ j13
 SAY @30 /* ... As you would have it. */
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~!Dead("Prism")~ THEN BEGIN j14
 SAY @31 /* I'm afraid I'm rather busy at the moment, my <PRO_LADYLORD>. */
IF ~~ EXIT
END

// hijacking the plot

CHAIN IF WEIGHT #-100 ~NumTimesTalkedTo(0)~ THEN ~%tutu_var%PRISM~ rh#p1
@32 /* Ah, beauteous creature! Never should I have stolen these emeralds, but there was nothing else that would capture the majesty of thine eyes! I did what must be done, for I have left my shop, forgotten all my commissions, and spent all that I had. I must complete thee! */
== RH#ISRA @33 /* Prism... calm yourself a moment. There's someone else here. */
== ~%tutu_var%PRISM~ @34 /* So there is! 'Twas that relentless Greywolf who sent you, wasn't it? */
END
	++ @35 /* Aye. Uh, Greywolf sent us, and you know why we've come, don't you? */ + rh#p3
	++ @36 /* I have nothing to do with anyone named Greywolf, nor would I want to. */ + rh#p2

CHAIN ~%tutu_var%PRISM~ rh#p2
@37 /* Thank Deneir! I have no wish for my foolishness to result in bloodshed, though surely Greywolf will come seeking the bounty on the gems soon enough. */
== RH#ISRA @38 /* Aye, and when he does come... my <LADYLORD>, I would know whether you mean to stand with or against us. */
== ~%tutu_var%PRISM~ @39 /* Please, help guard this place! I would rather the burden of my folly not fall upon the Lady Isra alone. I will pay with my last possessions if you would do this one service for me. */
END
	++ @40 /* If it is so important, then I shall guard you as best I can. Yes. */ + 4
	++ @41 /* You already have enough help as it is. I don't fancy trying to get between a bounty hunter and his bounty. */ DO ~SetGlobal("rh#PrismReconsidered","GLOBAL",1)~ + 5
	++ @42 /* Perhaps you should fear me more than Greywolf. Perhaps I am seeking the bounty as well. */ + rh#p3

CHAIN ~%tutu_var%PRISM~ rh#p3
@43 /* You'll not take me yet, I beseech thee! I admit I stole the gems, but better they are the eyes of a work of love than a fat woman's tawdry trinket. I will give you all else that is mine, if you would but forget my crime. */
== RH#ISRA @44 /* There is no need for this to end in violence. Prism has been unwilling to forsake his work long enough yet to redress his theft, 'tis true, but I mean to see to it that this... misunderstanding is straightened out as soon as possible. */
END
	++ @45 /* Well, then. That's good enough for me. */ EXTERN ~%tutu_var%PRISM~ 4
  	++ @46 /* Too bad. I'm taking your charge and the gems to the guard, where I shall no doubt get a hefty reward. */ EXTERN ~%tutu_var%PRISM~ rh#p4

CHAIN ~%tutu_var%PRISM~ rh#p4
@47 /* If you wish to stop my work, then it is my life that you must cease! I care not if I cannot finish my work! With my last breath I shall curse thee! May your soul know the same unrest as mine! */
DO ~ActionOverride("rh#Isra",Enemy()) 
Enemy()~ EXIT

CHAIN IF ~Global("rh#PrismReconsidered","GLOBAL",1)~ THEN ~%tutu_var%PRISM~ rh#p5
@48 /* Have you changed your mind? Aid us, I beg of thee! */
END
	++ @49 /* Very well. */ DO ~SetGlobal("rh#PrismReconsidered","GLOBAL",0)~ + 4
	++ @50 /* Not happening. */ + 5
	++ @51 /* Actually, I want that bounty now. */ + rh#p4

INTERJECT ~%tutu_var%PRISM~ 6 rh#g1
== ~%tutu_var%GREYWO~ @52 /* Your sentiment is wasted on me, fool. You are but gold in my purse. Do you make your situation worse by hiring more help? I had heard of the Ruby Rose girl, but who are these other fools? */
END
  + ~Global("Greywolf","GLOBAL",0)~ + @53 /* We want no part of this fight. Take him back to face the penalties for his crimes. */ EXTERN ~%tutu_var%GREYWO~ rh#g3
  + ~Global("Greywolf","GLOBAL",0)~ + @54 /* Prism wishes only to finish his masterwork. Why not let him? What harm can it do? */ EXTERN ~%tutu_var%GREYWO~ rh#g4
  + ~Global("Greywolf","GLOBAL",0)~ + @55 /* Who we are is unimportant. What is important, is that we are armed to the teeth and we mean to stop you from hurting him! */ EXTERN ~%tutu_var%GREYWO~ rh#g5
  + ~Global("Greywolf","GLOBAL",1)~ + @55 /* Who we are is unimportant. What is important, is that we are armed to the teeth and we mean to stop you from hurting him! */ EXTERN ~%tutu_var%GREYWO~ rh#g2
  + ~Global("Greywolf","GLOBAL",1)~ + @54 /* Prism wishes only to finish his masterwork. Why not let him? What harm can it do? */ EXTERN ~%tutu_var%GREYWO~ rh#g2
  + ~Global("Greywolf","GLOBAL",1)~ + @56 /* We want no part of this fight. Take him back to face the penalties of his crimes. */ EXTERN ~%tutu_var%GREYWO~ rh#g2

CHAIN ~%tutu_var%GREYWO~ rh#g2
@57 /* Wait! I recognize you! It was you who stole a bounty rightfully mine! Prism will live a moment longer while I kill the lot of you! */
DO ~SetGlobal("rh#IsraGreywolfAttacks","GLOBAL",1) 
Enemy()~ EXIT

CHAIN ~%tutu_var%GREYWO~ rh#g3
@58 /* You are smart to move aside, though Prism will be going nowhere this day. My bounty is not for his capture, but the return of the gems. His fate is unimportant, so any justice done will come by the blade of my sword. Stand ye well back, this may be messy! */
DO ~SetGlobal("rh#IsraGreywolfAttacks2","GLOBAL",1)
Attack("rh#Isra")~ 
EXTERN PRISM 9

CHAIN ~%tutu_var%GREYWO~ rh#g4
@59 /* You should be more worried 'bout the harm I can do! Never have I taken a bounty and not delivered! Now stand aside that I might dispense with this fool and claim my prize. Or would you rather I go through you to get him? Consider well if he be worth your lives! */
DO ~SetGlobal("rh#IsraGreywolfAttacks","GLOBAL",1) 
Enemy()~ EXIT

CHAIN ~%tutu_var%GREYWO~ rh#g5
@60 /* I'll sell your blades for scrap and make soup of your spell fixings! Pity you'll not live to realize the mistake you've made! */
DO ~SetGlobal("rh#IsraGreywolfAttacks","GLOBAL",1) 
Enemy()~ EXIT