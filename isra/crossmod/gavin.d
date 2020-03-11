// 1.
// --
CHAIN IF ~InParty("b!gavin")
See("b!gavin")
!StateCheck("b!gavin",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([CITY])
Global("rh#IsraGavin1","GLOBAL",0)~ THEN BRH#ISRA rh#IsraGavin1
@0 /* That color would look quite lovely on you, Gavin. Would you not agree? */
DO ~SetGlobal("rh#IsraGavin1","GLOBAL",1)~
== ~BB!GAVIN~ @1 /* It is one of my favorites, but I'm not really shopping for clothing at the moment. */
== BRH#ISRA @2 /* With all due respect, an extra tunic would not be amiss. Your current clothing is becoming... somewhat noticeable threadbare, I'm afraid. */
== ~BB!GAVIN~ @3 /* Er... yes, so I see. I think I've got an extra one I can cut up for patches. */
== BRH#ISRA @4 /* I... Gavin, you cannot be serious. */ 
== ~BB!GAVIN~ @5 /* It isn't that bad. It still has a few good wearings in it, and it goes with everything I own. Probably because it's been mended with everything I own, but you can't say it isn't colorful. */
== BRH#ISRA @6 /* Colorful is... one way to put it, certainly, if not exactly the one I would choose. I would be more than happy to buy you a new one, you realize. */
== ~BB!GAVIN~ @7 /* Your generosity is commendable, but I couldn't possibly... I just couldn't. It wouldn't be right. */
== BRH#ISRA @8 /* 'Twould be a gift, Gavin. I cannot believe that such things inappropriate outside of Amn. */
== ~BB!GAVIN~ @9 /* But the cost! You work hard for your coin. I couldn't accept something so valuable, especially not when so many around us want basic necessities. */
== BRH#ISRA @10 /* I... I see. As you wish, then. */
== ~BB!GAVIN~ @11 /* Please... I didn't mean to offend you. It's just that I know what our lives will be like for the next little while, and I wouldn't want to see your precious gift in tatters before the tenday is out. I'll keep the worst of it under my armor, all right? */
== BRH#ISRA @12 /* *laugh* Aye. A tenday is mayhap somewhat optimistic anyway. */
EXIT

// 2.
// --
CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("b!gavin",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([CITY])
Global("rh#IsraGavin2","GLOBAL",0)~ THEN ~BB!GAVIN~ rh#IsraGavin2
@13 /* I don't know how you do it, Sir Isra. Did someone cast Repel Filth on you? You don't even get sweat stains on your tabbard. */
DO ~SetGlobal("rh#IsraGavin2","GLOBAL",1)~ 
== BRH#ISRA @14 /* Sir? I do tend to prefer "lady", Gavin. As for the rest... I won't deny that there is some measure of divine grace involved, though 'tis largely a matter of obsessive cleaning. */
== ~BB!GAVIN~ @15 /* My apologies. You're the first female knight I've met. */
= @16 /* They do say that the gods favor the tidy, but I find that my efforts in that area are usually undone by the next puddle we encounter. Your mistress is a little more demanding than the Morning Lord about appearances, however. */
== BRH#ISRA @17 /* She would never retract her favor over something so small, though she does certainly expect us to at least make the attempt. Most of us expend considerably more energy upon it than that, of course. */
== ~BB!GAVIN~ @18 /* It shows... Perhaps I could have found a more delicate way to phrase that. Forgive me, Si-... Lady Isra. I intend no disrespect to your faith or your calling, but I'm finding it a little too easy to lapse into more casual modes of address than your status deserves. */
== BRH#ISRA @19 /* *laugh* Gavin, I am a squire, not a knight. Even if I were, you needn't feel obligated to stand on formality with me. I have very little preference one way or the other. */
== ~BB!GAVIN~ @20 /* Well, now, don't I feel silly? */
== BRH#ISRA @21 /* I take it that you were not jesting when you said that you had never before met a female knight. */
== ~BB!GAVIN~ @22 /* I may jest at times, but I'm almost always honest. */
EXIT

// 3.
// --
CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("b!gavin",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([CITY])
Global("rh#IsraGavin3","GLOBAL",0)~ THEN ~BB!GAVIN~ rh#IsraGavin3
@23 /* I can't stop thinking about that artist, Prism. Such a loss! */
DO ~SetGlobal("rh#IsraGavin3","GLOBAL",1)~
== BRH#ISRA @24 /* Aye. Self-sacrifice can be a beautiful thing, but to work oneself into the ground like that... I am not an artist. Mayhap I could not hope to truly understand it. */
== ~BB!GAVIN~ @25 /* He must have had a mission of some kind. I can't imagine why else he would do it. He sacrificed his future. I would not give up the joy of creation for any transient glory. */
== BRH#ISRA @26 /* 'Twas more a madness than a mission, I think. Whoever she was, he was very much in her thrall. I have known people who can grow enamored of those they have never even met, but passion as destructive as that... truly, I am uncomfortable naming it love. */
== ~BB!GAVIN~ @27 /* When you put it like that, I can almost understand it. It isn't love. It is obsession. A face that haunts your dreams, robs you of your sanity. You will do anything to be with them... believe any lie that allows you to think them virtuous... */
= @28 /* Ahem. Eventually, clarity returns and you realize that you've been a fool, but our friend Prism never had the chance to learn of his mistake. I pity him more than I did before. */
== BRH#ISRA @29 /* Forgive me, Gavin. I... had not intended to invoke such memories. */
== ~BB!GAVIN~ @30 /* Lathander's living breath, I do need to pay more attention. Regardless, poor Prism will be missed. For generations to come, if I'm any judge. */
== BRH#ISRA @31 /* You have as keen an eye for beauty as any... sometimes I think it a shame you were not called to Sune instead. */
== ~BB!GAVIN~ @32 /* They wouldn't have me. It's the nose. */
== BRH#ISRA @33 /* *laugh* We are not quite as judgmental as that, I assure you. */
== ~BB!GAVIN~ @34 /* Well, in that case, perhaps I should reconsider! */ 
= @35 /* I jest, but it does illustrate how closely our faiths align. */
== BRH#ISRA @36 /* Aye. Why someone is drawn to one instead of the other... 'tis just another mystery of the heart, mayhap. */
EXIT

// 4.
// --
CHAIN IF ~Global("rh#IsraGavin4","GLOBAL",1)~ THEN ~B!GAVINJ~ rh#IsraGavin4
@37 /* You're a... remarkably striking woman... Isra. */
DO ~SetGlobal("rh#IsraGavin4","GLOBAL",2)~ 
== RH#ISRAJ @38 /* I... thank you. I think. */
== ~B!GAVINJ~ @39 /* You have... fine bones. Love to draw you sometime. Probably will anyway. What are you doing in this rat hole? */
= @40 /* I mean, you should be in bed with my brother, or standing on his easel or something. */
== RH#ISRAJ @41 /* Gavin, that is quite inappropriate. */
== ~B!GAVINJ~ @42 /* Sorry, ma'am. Meant no offense. You know I think the world of you. */
= @43 /* And ain't no harm in drawing beautiful women. Practic'ly a commandment. */
== RH#ISRAJ @44 /* Dare I even ask how much you have had to drink? */
== ~B!GAVINJ~ @45 /* More than is good for me. Enough to regret it. Not enough to fall over. */
= @46 /* But you are pretty. And kind. And all those things you'll break my arm for not saying. */
== RH#ISRAJ @47 /* And you are... very much too inebriated to think straight, Gavin. Mayhap you should consider retiring before you say something you'll regret come morning. */
== ~B!GAVINJ~ @48 /* Too late. May as well get it all out. Better out than in, as my da' used to say, though I think he was talking about a purge. Anyhow, I said it all already. You're beautiful and I want to draw you. I've no aspirations for more. */
== RH#ISRAJ @49 /* And this cannot wait until the morrow? */
== ~B!GAVINJ~ @50 /* Why bother? It's said. I'll regret it on the morrow and we'll never speak of it again unless you like seeing me with a red face. Keeps me humble. */
== RH#ISRAJ @51 /* Enough, Gavin. Get some rest. */
== ~B!GAVINJ~ @52 /* Aye, ma'am. */
DO ~RestParty()~ 
EXIT

// 5.
// --
CHAIN IF ~Global("rh#IsraGavin4","GLOBAL",3)~ THEN ~B!GAVINJ~ rh#IsraGavin5
@53 /* About that night... I am so sorry. I had no right to subject you to my drunken ramblings. */
DO ~SetGlobal("rh#IsraGavin4","GLOBAL",4)~ 
== RH#ISRAJ @54 /* Apology accepted. */
== ~B!GAVINJ~ @55 /* For better or worse, Lathander has blessed me with a good memory. I meant it respectfully, but I won't ask you to sit for me. It was an arrogant demand. */
== RH#ISRAJ @56 /* Arrogant? You could certainly have phrased it more graciously, but I am a Sunite. It isn't the type of request I am inclined to deny. */
= @57 /* I don't understand why you would need to be so deeply in your cups to ask such a thing, however. */
== ~B!GAVINJ~ @58 /* I keep forgetting that your faith values the arts as much as my own. Regardless, I felt shy about making the request directly. I am an amateur. I love to draw, and I appreciate the human form with due reverence to the gods who created it, but it never occurred to me that a relative stranger would be willing to indulge my hobby. I misjudged you. */
== RH#ISRAJ @59 /* And continue to do so, apparently. Unless this has been an exceedingly roundabout way to ask me to pose for you nude, there is no need for such reserve, Gavin. */
== ~B!GAVINJ~ @60 /* I don't want you to pose for me nude. */
= @61 /* I mean, I do, but... Ilmater's mercy, I'm screwing it up again. This is very different from the temple. We all posed, and accepted that our friends and colleagues would expect to draw us. It was done. It is easier to accept the responsibility to one's students and colleagues than to accept that outsiders would participate willingly in the pursuit of art for its own sake. */
= @62 /* Does this make any sense, or am I making it worse? */
== RH#ISRAJ @63 /* I can't say that I understand why such a thing would be considered a responsibility at all... there is no easier way to feed a Sunite's vanity. */
= @64 /* Truly, I should probably deny you on those grounds, but it seems likely that refusal would hurt you more than it would help me. */
== ~B!GAVINJ~ @65 /* I would be most humbly grateful... but I must laugh. Only Sunites would consider it vanity. My fellow Lathandrites will claim that I sublimated my model and drew her from my fantasies. I will have to give you a mole or two to preserve my credibility with my peers. There is no other way they would believe it. */
== RH#ISRAJ @66 /* *laugh* Please, Gavin. This is too much flattery, even for me. */
== ~B!GAVINJ~ @67 /* No, Isra, not flattery. I do not intend to draw a nude. Petty imperfections will stand in for the scars you've earned, and we'll let scholars argue about the veracity of anatomy. */
EXIT