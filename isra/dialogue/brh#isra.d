BEGIN BRH#ISRA

// Ajantis

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAjantis1","GLOBAL",0)~ THEN %AJANTIS_BANTER% rh#IsraAjantis1
@0 /* I must confess, my lady, I have had very little congress with those of your order before. */
DO ~SetGlobal("rh#IsraAjantis1","GLOBAL",1)~
== BRH#ISRA @1 /* It is not my order, Sir Ajantis. Not yet. Like you, I am still but a novice. */
== %AJANTIS_BANTER% @2 /* Do you expect that the Ruby Rose will decide upon your membership shortly? */
== BRH#ISRA @3 /* Not as such, no. We have... significantly fewer formalities than you do, I am sure. */
== %AJANTIS_BANTER% @4 /* I do not doubt it. I mean no offense, but I could not imagine belonging to such a disorganized church. */
== BRH#ISRA @5 /* They are good people, my lord. */
== %AJANTIS_BANTER% @6 /* That may be true, but I have always been taught that without proper discipline, even the best of intentions can go astray. Do you not find it so? */
== BRH#ISRA @7 /* Sometimes, and for some people. But do you not also find that there are those within your own church whose... zeal outweighs their mercy, so to speak? More than a few, mayhap. */
== %AJANTIS_BANTER% @8 /* Perhaps I overstepped myself, my lady, but my question was in earnest. Your hostility is unwarranted. */
== BRH#ISRA @9 /* I... no, forgive me. 'Tis an old argument, and one I once had far too often with a squire of Tyr. Needless to say, we are not very close friends anymore. */
== %AJANTIS_BANTER% @10 /* I see. Then we shall have to avoid that argument in the future. Shall we catch up with the others? */
EXIT

CHAIN IF ~InParty("Ajantis")
See("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAjantis2","GLOBAL",0)~ THEN BRH#ISRA rh#IsraAjantis2
@11 /* It must truly be a great privilege to serve alongside a man as renowned as Lord Keldorn. */
DO ~SetGlobal("rh#IsraAjantis2","GLOBAL",1)~
== %AJANTIS_BANTER% @12 /* It is, my lady. Do you know him? */
== BRH#ISRA @13 /* Only in passing. My father worked with him once, several years ago. He was impressed, if somewhat... disturbed by Lord Keldorn's righteousness. I'm afraid that my father tends to take a more... pragmatic approach to his affairs. */
== %AJANTIS_BANTER% @14 /* A sentiment shared by far too many in Amn, I have noticed. */
== BRH#ISRA @15 /* I do not disagree. If I may be so bold, Athkatla seems a strange and not altogether comfortable place for a Waterdhavian. */
== %AJANTIS_BANTER% @16 /* Perhaps. I go where I am needed, however, and the Hall of the Radiant Heart is welcoming, even if the rest of the city is not. */
== BRH#ISRA @17 /* If you ever chance to visit Crimmor, I would be happy to direct you to any number of my friends. They are quite the accomodating group, to say the least. */
== %AJANTIS_BANTER% @18 /* I am... not sure that that would be entirely appropriate, my lady. */
== BRH#ISRA @19 /* I was not implying drunken, orgiastic revelry, Sir Ajantis. */
== %AJANTIS_BANTER% @20 /* I... forgive me if I offended you, Lady Isra. If you would excuse me... */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAjantis1","GLOBAL",1)
Global("rh#IsraAjantis2","GLOBAL",1)
Global("rh#IsraAjantis3","GLOBAL",0)~ THEN BRH#ISRA rh#IsraAjantis3
@21 /* I recall hearing some tidings last Eleint of a brief campaign by the Radiant Heart against the Sythillisians. Was anybody you know involved? */
DO ~SetGlobal("rh#IsraAjantis3","GLOBAL",1)~
== %AJANTIS_BANTER% @22 /* I was there myself, as it so happens, serving as Sir Keldorn's squire. I must admit, I did not realize that the deeds of the Order were common knowledge. */
== BRH#ISRA @23 /* Your troops pass through Crimmor often enough. We tend to keep track of such things. */
== %AJANTIS_BANTER% @24 /* If only all who watching our movements were so benevolent. */
== BRH#ISRA @25 /* It must be strange to be so very prominent. */
== %AJANTIS_BANTER% @26 /* My lady, I cannot imagine you being shy of attention. */
== BRH#ISRA @27 /* Very clever, sir. No, I only wonder sometimes how different life in your order would be than in my own. */
== %AJANTIS_BANTER% @28 /* There are likely more similarities than differences. */
== BRH#ISRA @29 /* Mayhap, though I have never actually seen a pitched battle. Of course, I have seen more than one dragon's den instead... if only after the fact. */
== %AJANTIS_BANTER% @30 /* Then that is one clear parallel. */
== BRH#ISRA @31 /* I'm not sure I understand. */
== %AJANTIS_BANTER% @32 /* Whatever his religion, a knight always does an admirable job of keeping his squire out of danger. */
== BRH#ISRA @33 /* Aye, I am sure neither of us would be here were it otherwise. */
== %AJANTIS_BANTER% @34 /* As am I. */
EXIT

// Alora

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAlora1","GLOBAL",0)~ THEN %ALORA_BANTER% rh#IsraAlora1
@35 /* So what do you do when you're not being a paladin, Isra? Do knights ever have parties? */
DO ~SetGlobal("rh#IsraAlora1","GLOBAL",1)~
== BRH#ISRA @36 /* Almost every faith has holy days, though I imagine few would be pleased to hear them described as parties. */
== %ALORA_BANTER% @37 /* So... what? You just sit around and listen to some guy drone on about duty all night? That... uh, doesn't sound like much fun. */
== BRH#ISRA @38 /* *smile* Some people could certainly benefit from additional reminders, my lady. Our own Grand Revels may be more to your liking, however, particularly if you care for music and dance. */ 
== %ALORA_BANTER% @39 /* Oh? What are those like? */
== BRH#ISRA @40 /* I cannot say that I have been to one here, unfortunately. Back in Crimmor, Sune, Lliira, and Milil shared a temple, so the festivities tended to get... rather wild at times. */ 
== %ALORA_BANTER% @41 /* You don't sound too impressed by that. */
== BRH#ISRA @42 /* ... There is a very good reason I don't drink, Alora. */
== %ALORA_BANTER% @43 /* What... oh. Oh. Hahaha, any chance I can pry that story out of you? */
== BRH#ISRA @44 /* No. */
EXIT

CHAIN IF ~InParty("Alora")
See("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAlora2","GLOBAL",0)~ THEN BRH#ISRA rh#IsraAlora2
@45 /* Alora, did you-- */
= @46 /* Had you deigned to ask, I would have let you look at it. */
DO ~SetGlobal("rh#IsraAlora2","GLOBAL",1)~
== %ALORA_BANTER% @47 /* But where's the fun in that? */
= @48 /* Are these things real, Izzy? */
== BRH#ISRA @49 /* Certainly. 'Twas an heirloom from my mother--one of my favorites, given the ruby motif. Now, if you would please return it? */
== %ALORA_BANTER% @50 /* Okay, okay. Here. You don't need to be so grumpy about it, you know. */
== BRH#ISRA @51 /* Grumpy? Alora, I know you mean well, but if you can't master these... impulses, you're likely one day to end up in prison. Or worse. I wish you would grow up enough to recognize that, if nothing else. */
== %ALORA_BANTER% @52 /* Yeesh, so serious all of a sudden... I'm sorry I said anything at all! */
EXIT

// Branwen

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraBranwen1","GLOBAL",0)~ THEN %BRANWEN_BANTER% rh#IsraBranwen1
@53 /* What... is that? */
DO ~SetGlobal("rh#IsraBranwen1","GLOBAL",1)~
== BRH#ISRA @54 /* This? Calishite perfume. An old family favorite, though somewhat difficult to find as of late. You are quite welcome to try some, of course. */
== %BRANWEN_BANTER% @55 /* I am a warrior, not a dancing girl. */
== BRH#ISRA @56 /* One need not be a dancing girl, as you say, to have some respect for oneself and one's appearance. */
== %BRANWEN_BANTER% @57 /* Self-respect is not earned through dousing oneself with sickly fragrances, woman. 'Tis earned through force of will and strength of arms. */
== BRH#ISRA @58 /* And what of dignity? Have you no care for what others think of you? Loath as I am to point it out to you, a bath would not be amiss. */
== %BRANWEN_BANTER% @59 /* If my scent is so offensive to you, Sunite, then you may step aside. */
== BRH#ISRA @60 /* ... */
= @61 /* *sigh* Forgive me my poor temper, Branwen. I... have heard your stories of Seawolf. If you somehow believe that we would think less of you were you to more fully embraced your gender, know that it is not true. You have left the Moonshaes behind. Do not carry their prejudices alongside you. */
== %BRANWEN_BANTER% @62 /* Enough. Such petty things are of no concern to me now, as you should well know. Leave me be. */
EXIT

CHAIN IF ~InParty("Branwen")
See("Branwen")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraBranwen2","GLOBAL",0)~ THEN BRH#ISRA rh#IsraBranwen2
@63 /* I truly cannot imagine that it never grows empty for you, Branwen... battle for the sake of battle, with nothing else behind it. */
DO ~SetGlobal("rh#IsraBranwen2","GLOBAL",1)~
== %BRANWEN_BANTER% @64 /* What else is needed? You are a warrior as much as I am, Isra. Can you deny the thrill of the moment, the glory, the valor? 'Tis how we know we are alive. */
== BRH#ISRA @65 /* And yet I have seen how quickly you take to mead after a victory. Do you mean to tell me that such revelry does not gladden your heart as well? */
== %BRANWEN_BANTER% @66 /* Nay, I said no such thing. But now you will ask me about men, mayhap, and then about love itself... aye, I think I strike near the mark. */
== BRH#ISRA @67 /* Our faiths are at odds-- */
== %BRANWEN_BANTER% @68 /* Only for you, Sunite. */
= @69 /* And you are no delicate maid yourself. I have seen you in combat. Forsooth, 'tis a strange thing to put the Firehair's passion to, yet you do so all the same. */
== BRH#ISRA @70 /* ... I take no perverse pleasure in the slaughter--nor do I fight on whatever side would have me, as Tempurans so often do. */
== %BRANWEN_BANTER% @71 /* I fight on your side, woman. Do not forget that. */
== BRH#ISRA @72 /* I... no, you are right. Forgive me the insinuation. */
== %BRANWEN_BANTER% @73 /* Think nothing of it. But come, I grow tired of this quarrel... though 'tis one I expect to have many more times before this quest is finished. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraBranwen3","GLOBAL",0)~ THEN %BRANWEN_BANTER% rh#IsraBranwen3
@74 /* The challenge was honorable, Sunite. Do you really mean to refuse me? */
DO ~SetGlobal("rh#IsraBranwen3","GLOBAL",1)~
== BRH#ISRA @75 /* Honorable? Branwen, you're very nearly cackling. And there is very little honor at all to be found in such a... trivial contest. */
== %BRANWEN_BANTER% @76 /* Tempus sees honor in all contests of strength, woman, from the mightiest to the least. */
= @77 /* Don't scowl so, Isra. 'Twould not be the first time that you have unwittingly paid homage to the Foehammer. Nay, far from. */
== BRH#ISRA @78 /* ... Very well. If I win, however, I will demand a forfeit. */
== %BRANWEN_BANTER% @79 /* For the mere wrestling of arms? */
== BRH#ISRA @80 /* Aye. */
== %BRANWEN_BANTER% @81 /* I trust it does not involve more of that sickly perfume of yours? */
== BRH#ISRA @82 /* Simply soap, I assure you. */
== %BRANWEN_BANTER% @83 /* You will need to win first. */
== BRH#ISRA @84 /* I am well aware of that. */
== %BRANWEN_BANTER% @85 /* Then we are agreed. Mayhap there is hope for you yet, Isra. */
EXIT

// Coran

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraCoran1","GLOBAL",0)~ THEN %CORAN_BANTER% rh#IsraCoran1
@86 /* Beautiful. Had we more time, I could write a sonnet to that young lady's cheekbones alone... */ 
DO ~SetGlobal("rh#IsraCoran1","GLOBAL",1)~
== BRH#ISRA @87 /* And her eyes, more radiant than sapphires, and the hair gleaming atop her head like so much gold... had I the skill, I would write one right now. */
== %CORAN_BANTER% @88 /* *laugh* */
= @89 /* I admit, my lady, I had been about to introduce myself to her, but perhaps we should consider introducing you instead! */
== BRH#ISRA @90 /* That would hardly be wise, dear elf. Did you not notice the ring? */
== %CORAN_BANTER% @91 /* Ah, but what are such things when set against the glory of true love? */
== BRH#ISRA @92 /* True love? You seldom even give yourself time to savor one romance before flitting to the next. That is rather far removed from true love. */
== %CORAN_BANTER% @93 /* Flitting, Isra? Many of your own faith flit as well, I believe, not least of all your goddess herself! Would you speak such cool words to her? */
== BRH#ISRA @94 /* ... There is a world of difference, Coran. */
== %CORAN_BANTER% @95 /* Indeed, that you approve of the one but not of the other! But I am not too proud to say that you may well be correct, dear lady. Perhaps you would care to try to teach me the error of my ways? */
== BRH#ISRA @96 /* *smile* I am not a courtesan. */
== %CORAN_BANTER% @97 /* Alas, and a pity it is that you don't serve your goddess in as direct a manner as I serve mine! */
== BRH#ISRA @98 /* For you, mayhap. But come, this conversation has grown stale, and there is much to do before the <DAYNIGHT> is over. */
EXIT

CHAIN IF ~InParty("Coran")
See("Coran")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraCoran2","GLOBAL",0)~ THEN BRH#ISRA rh#IsraCoran2
@99 /* Coran, I would quite appreciate it if you stopped eyeing me like that. */
DO ~SetGlobal("rh#IsraCoran2","GLOBAL",1)~
== %CORAN_BANTER% @100 /* Forgive me, my lady... like what, exactly? */
== BRH#ISRA @101 /* Like you are trying to decide what, precisely, is the best compliment to pay me. */
== %CORAN_BANTER% @102 /* *laugh* Indeed. And yet I've always been led to believe that there was no more appropriate way to greet a Sunite. */
== BRH#ISRA @103 /* That applies more to the Heartwarders, but even so... we tend to prefer our compliments... unmeditated. Spontaneous. The heart speaks more truly than the mind. */
== %CORAN_BANTER% @104 /* And if my heart simply has too much to say on the matter? More than can quickly and easily be wrestled into speech? */ 
== BRH#ISRA @105 /* Then perhaps you should let it be silent for once. It drowns out others often enough as it is. */
== %CORAN_BANTER% @106 /* Ah, you wound me, dear lady! But if it is silence you wish, I shall have to make do with admiring you from afar. */
== BRH#ISRA @107 /* *sigh* Sometimes I fear that you are too much for me, Coran. I ought to be able to stay angry with you for more than a moment. */
== %CORAN_BANTER% @108 /* If it's any consolation, I expected to have you in my bed some time ago. */
== BRH#ISRA @109 /* Ah... no. No, that is no consolation at all. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("HelpBrielbara","GLOBAL",1)
Global("rh#IsraCoran3","GLOBAL",0)~ THEN %CORAN_BANTER% rh#IsraCoran1
@110 /* Why such the disapproving look, Isra? I hardly abandoned the child to her fate. */ 
DO ~SetGlobal("rh#IsraCoran3","GLOBAL",1)~
== BRH#ISRA @111 /* Aye, and 'twould be monstrous of you if you had. Still, Coran, a married woman? */
== %CORAN_BANTER% @112 /* You saw her husband, didn't you? Not the finest catch, by any means. Can you blame her for wanting something a bit more... flavorful? */
== BRH#ISRA @113 /* ...flavorful. */
== %CORAN_BANTER% @114 /* I bring such sweet succor to the lonely and miserable women of Faerun, my lady. Surely you cannot fault me for that. */
== BRH#ISRA @115 /* You bring succor to yourself, Coran. Don't pretend that your motives are anything but selfish. */
== %CORAN_BANTER% @116 /* You judge me altogether too harshly, dearest. Let's not be angry with each other now. */
== BRH#ISRA @117 /* I judge you just harshly enough. If you had any understanding of respect, empathy, or responsibility, 'twould be a welcome surprise indeed. */
== %CORAN_BANTER% @118 /* Fine, fine... berate me if you wish. Don't expect me to feel much guilt over the matter, though. */
== BRH#ISRA @119 /* I would respect you more if you did. */
== %CORAN_BANTER% @120 /* Well, in that case-- */
= @121 /* Odd. I never knew a paladin was allowed to walk away from an argument. */
EXIT

// Dynaheir

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraDynaheir1","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% rh#IsraDynaheir1
@122 /* Thou art of more pleasing a demeanor than I would have expected, given thy martial calling. */
DO ~SetGlobal("rh#IsraDynaheir1","GLOBAL",1)~
== BRH#ISRA @123 /* Thank you most kindly, Lady Dynaheir. */
== %DYNAHEIR_BANTER% @124 /* Thou needst not glory in such simple praise, Isra. Doth not the reality of war ever wear upon thy festive outlook? */
== BRH#ISRA @125 /* I am not quite sure I know what you mean. */
== %DYNAHEIR_BANTER% @126 /* This world is at times a most disagreeable place. 'Ugly', I believe, is what thou wouldst call it. Thou art no simpleton to turn thy mind away from such truths. Dost thou never recoil from the horror of it? */
== BRH#ISRA @127 /* Sometimes, perhaps. There are some Heartwarders who see only beauty in the world around them, who can tease a strand of light out of the darkest of stories... *smile* Would that I were one of them. */
= @128 /* But I would gladly give my life to make their visions reality, and mayhap there is blessing enough in that. */
== %DYNAHEIR_BANTER% @129 /* 'Tis sad, I think, that thy goddess has no following in mine own country. */
== BRH#ISRA @130 /* I would be pleased to teach you her ways, should you like to change that. */
== %DYNAHEIR_BANTER% @131 /* Nay, Isra. My heart is not so generous, I fear, nor shall ever be. */
EXIT

CHAIN IF ~InParty("Dynaheir")
See("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraDynaheir2","GLOBAL",0)~ THEN BRH#ISRA rh#IsraDynaheir2
@132 /* Rashemen must be a rich land indeed if all of its mages are such as you, Lady Dynaheir. Our own spellcasters often leave... much to be desired. */
DO ~SetGlobal("rh#IsraDynaheir2","GLOBAL",1)~
== %DYNAHEIR_BANTER% @133 /* 'Tis often seen that when thou hast no common enemy, thou turnest against thyself. Rashemen is united in her defiance of Thay. Thine own lands have no such looming foe. */ 
== BRH#ISRA @134 /* And by the grace of the gods, may it remain so. */
= @135 /* The Witches of Rashemen... the name always felt so ominous when my tutors would speak it back home. Though I imagine they made any lesson concerning magic as terrifying as they could. */
== %DYNAHEIR_BANTER% @136 /* They were not wrong to do so. If the Red Wizards have taught us naught else, they have taught us that magic is perilous in the wrong hands. */
== BRH#ISRA @137 /* Many things in this world are perilous in the wrong hands. */
== %DYNAHEIR_BANTER% @138 /* Aye, that is the unfortunate truth. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraDynaheir3","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% rh#IsraDynaheir3
@139 /* Isra, I am beginning to hear indelicate tales about thee in the local inns of which mayhap thou shouldst be aware. */
DO ~SetGlobal("rh#IsraDynaheir3","GLOBAL",1)~
== BRH#ISRA @140 /* Tales? I... am quite certain that I have done nothing improper. */
== %DYNAHEIR_BANTER% @141 /* Nothing at all? */
= @142 /* *sigh* I would fain believe that the tales have grown in the telling. Thou drawest more attention than thou wouldst like with thine amorous manner. Hast thou truly done nothing at all? */
== BRH#ISRA @143 /* I... once, I suppose, but even then, 'twas a mere kiss, nothing more. He was a Sunite; 'tis a common enough greeting and farewell amongst us. */
== %DYNAHEIR_BANTER% @144 /* Was he a bard as well? */
== BRH#ISRA @145 /* He would never have slandered me, Dynaheir. */
== %DYNAHEIR_BANTER% @146 /* Then mayhap thou wert in a public space. 'Tis no doubt rare in these parts to see any paladin engaged in even the mildest of such acts... a suitably rich subject for petty gossip, I should think. */
== BRH#ISRA @147 /* ... Aye. */
== %DYNAHEIR_BANTER% @148 /* Do not look so dejected, child. 'Tis unpleasant, but we have faced worse evils than a poorly composed bawdy song. */
== BRH#ISRA @149 /* Aye, but this is precisely the outcome I had hoped to guard against. There are enough stories of Sunite frivolity as it is. I-- */
== %DYNAHEIR_BANTER% @150 /* Art thou ashamed of thy church, Isra? */
== BRH#ISRA @151 /* No! Of course not. */
== %DYNAHEIR_BANTER% @152 /* Then tell me, why should it trouble thee so, if thou hast thyself done nothing shameful? */
== BRH#ISRA @153 /* I... I do not know. No... no, that is not precisely true, but I would rather not speak of it. */
== %DYNAHEIR_BANTER% @154 /* I forget sometimes how young thou art. */
== BRH#ISRA @155 /* ... You are not making me feel any better, Dynaheir. */
== %DYNAHEIR_BANTER% @156 /* Mayhap not, but that is thy calling, Isra. Not mine. */
== BRH#ISRA @157 /* *laugh* Thank you. You're a very good friend, to say the least. */
== %DYNAHEIR_BANTER% @158 /* With thy constant reminders, 'twould be most difficult to forget. */
EXIT

// Edwin

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([FOREST])
Global("rh#IsraEdwin1_BG1","GLOBAL",0)~ THEN %EDWIN_BANTER% rh#IzzyEdwin1
@159 /* Pfeh! We had better return to civilization quickly, <CHARNAME>. Even the paladin is beginning to get disheveled, and she has nothing to offer this party aside from her looks as it is. */
DO ~SetGlobal("rh#IsraEdwin1_BG1","GLOBAL",1)~
== BRH#ISRA @160 /* Watch your tongue, wizard. I'm in no mood for your nonsense. */
== %EDWIN_BANTER% @161 /* I did not think you capable of more wit than a hobgoblin, but even you should be able to manage more than one retort. No? Well, maybe not. */
== BRH#ISRA @162 /* Every moment I waste on you, Edwin, is a moment that could be put to more meaningful use. */
== %EDWIN_BANTER% @163 /* No doubt you are not yet evolved enough to even grasp the concept of multitasking, much less to accomplish such a rudimentary skill. (Bah! Why I waste my time with these idiots is a mystery.) */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraEdwin2_BG1","GLOBAL",0)~ THEN %EDWIN_BANTER% rh#IzzyEdwin2
@164 /* Can you not see that I am busy, wench? Even your armor is not nearly polished enough to properly serve as a proper shaving mirror. */
DO ~SetGlobal("rh#IsraEdwin2_BG1","GLOBAL",1)~
== BRH#ISRA @165 /* And I would not look at you, had I the choice. No amount of preening could hope to hide the ugliness of your soul, Edwin, and your other charms are minimal enough as it is. */
== %EDWIN_BANTER% @166 /* Pfeh! The only time your opinion on the matter would be of any value whatsoever is if I were to deign to invite you into my bed. And even then, I could find a better use for your mouth. (Hmm, I wonder...) */
== BRH#ISRA @167 /* With manners like that, wizard, the only company you're likely ever to enjoy is the type you summon yourself. */
== %EDWIN_BANTER% @168 /* And even that would be preferable to yours, girl. Now leave me be. */
EXIT

// Eldoth

CHAIN IF ~InParty("Eldoth")
!InParty("Skie")
See("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraEldoth1","GLOBAL",0)~ THEN BRH#ISRA rh#IsraEldoth1
@169 /* By Sune! Are you capable of composing even a single song that does not end in ruin or... or perversity for all involved? */
DO ~SetGlobal("rh#IsraEldoth1","GLOBAL",1)~
== %ELDOTH_BANTER% @170 /* Forgive me if I have offended your religious sensibilities, my dear. My art has always been inspired by life and experience... rather than by idealism and foolish dreams. */
== BRH#ISRA @171 /* Then I cannot help but pity the life you must have led. */
== %ELDOTH_BANTER% @172 /* How very nice for you. But I have learned never to bother with a Sunite. Unless, of course, she is possessed of looser, more pragmatic morals than yourself. */
== BRH#ISRA @173 /* Were you always this hateful, Eldoth? */
== %ELDOTH_BANTER% @174 /* That would depend entirely upon how one defines 'hate', my dear. If it is merely the inverse of your Sunite conception of love--idle, flowery, sentimental, and overly romanticized--why then, yes... I suppose I always have been this hateful. */
= @175 /* Should you care to join me in reality at any point, however, you might decide differently. */
== BRH#ISRA @176 /* Our conception of love is significantly more nuanced than that, wretch, though I imagine it would all seem the same to you. */
== %ELDOTH_BANTER% @177 /* Indeed. Take your righteous fury elsewhere, girl. */
EXIT

CHAIN IF ~InParty("rh#Isra")
!InParty("Skie")
See("rh#Isra")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraEldoth2","GLOBAL",0)~ THEN %ELDOTH_BANTER% rh#IsraEldoth2
@178 /* My dear, you are altogether too lovely to hide yourself away beneath all of that cumbersome armor. */
DO ~SetGlobal("rh#IsraEldoth2","GLOBAL",1)~
== BRH#ISRA @179 /* Whatever slight you mean to offer me next, bard, I'm not interested. */
== %ELDOTH_BANTER% @180 /* Such suspicion doesn't become you, Lady Isra. I only meant to suggest that your beauty would be far better displayed as the crown jewel of a king's harem than upon the bloody battlefield. All girls have childish fantasies from time to time, but most women grow out of them. */
== BRH#ISRA @181 /* If these are the honeyed words you use to lure young women away, your technique has gone rather sour as of late. */
== %ELDOTH_BANTER% @182 /* Loath as I am to disappoint you, I am afraid that I prefer the paladins' daughters... not the paladins themselves. */
== BRH#ISRA @183 /* Perhaps I should remind you that it would take very little effort at all to finish what Lord Piergeiron began. */
== %ELDOTH_BANTER% @184 /* Ah, of course. Ever the resort to violence. Very well, my lady, I shall leave you to your toy swords... let me know when you're curious about playing with a real one. */
EXIT

CHAIN IF ~InParty("Eldoth")
InParty("Skie")
See("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraEldoth3","GLOBAL",0)~ THEN BRH#ISRA rh#IsraEldoth3
@185 /* Eldoth... a word aside, if you would. */
DO ~SetGlobal("rh#IsraEldoth3","GLOBAL",1)~
== %ELDOTH_BANTER% @186 /* My lady, pleasing company though I am sure you would prove, I'm afraid that my heart's devotion is given to another-- */
== BRH#ISRA @187 /* Oh, shut up. I have no use for your spite and deceptions, bard. Know that if you so much as touch her, I will kill you myself. */
== %ELDOTH_BANTER% @188 /* My dear-- */
== BRH#ISRA @189 /* I did not tell you to speak. For the moment, I can only wait and pray that she comes to her senses in her own time, but if your... affections, as it were, ever threaten her wellbeing more than your untimely death would, in Sune's name, I won't simply stand by idly. */
== %ELDOTH_BANTER% @190 /* Won't you? Well, sputter on, my lady. After all, I do so enjoy the sight of a paladin's impotent rage. */
== BRH#ISRA @191 /* Then you had best ensure that it remains impotent. */
EXIT

// Faldorn

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraFaldorn","GLOBAL",0)~ THEN %FALDORN_BANTER% rh#IsraFaldorn
@192 /* Isra, I grow tired of watching you snivel every time <CHARNAME> forgoes one of your precious inns for the night. Your obsession with the trappings of civilization sickens me. */
DO ~SetGlobal("rh#IsraFaldorn","GLOBAL",1)~ 
== BRH#ISRA @193 /* I don't snivel, druid. */
== %FALDORN_BANTER% @194 /* Close enough, woman. Pfeh! You would probably say that the music is appealing, or some such rot. If you truly cared about beauty, you would put more effort into protecting nature, not the meaningless works of mankind. */
== BRH#ISRA @195 /* Faldorn, enough. I have little enough patience for you as it is. Don't push me. */
== %FALDORN_BANTER% @196 /* Grr! You aren't worth the effort anyway. */
EXIT

// Garrick

CHAIN IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraGarrick1","GLOBAL",0)~ THEN BRH#ISRA rh#IsraGarrick1
@197 /* Where did you learn to play like that, Garrick? Your technique is really quite good. */
DO ~SetGlobal("rh#IsraGarrick1","GLOBAL",1)~ 
== %GARRICK_BANTER% @198 /* Do you really think so, my lady? Thank you. I learned in Berdusk, but it's been a while since I had proper training. Do you, uh, play at all? */ 
== BRH#ISRA @199 /* Very poorly, I'm afraid. I was instructed as a child, but I was never properly able to put the theory into practice. */
== %GARRICK_BANTER% @200 /* You know, maybe, uh... maybe you'd have better luck if you tried again? I could teach you some. If you want, that is. */
== BRH#ISRA @201 /* *smile* I should like that, I think. */
== %GARRICK_BANTER% @202 /* You would? I mean, that's great. I'll just, uh, need some time to prepare. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraGarrick1","GLOBAL",1)
Global("rh#IsraGarrick2","GLOBAL",0)~ THEN %GARRICK_BANTER% rh#IsraGarrick2
@203 /* Lady Isra! I, uh, I wanted to, well... */
DO ~SetGlobal("rh#IsraGarrick2","GLOBAL",1)~ 
== BRH#ISRA @204 /* *smile* Truly, I cannot be that intimidating. */
== %GARRICK_BANTER% @205 /* What? No! No, you're not frightening at all! I mean, I'm sure you are to your enemies, very much so, but, er... */
== BRH#ISRA @206 /* What is it, Garrick? */
== %GARRICK_BANTER% @207 /* I, uh, well, that song you were trying to remember the other day... erm... */
== BRH#ISRA @208 /* If I spoiled it that badly, I won't be upset if you tell me so. */
== %GARRICK_BANTER% @209 /* Well... uh, I wouldn't say *spoiled* exactly, but... I did finally figure out what it was now! So if you'd, you know, like to hear it... */
== BRH#ISRA @210 /* ...played properly? */
= @211 /* No, don't wince so. Truly, I would love that. */
== %GARRICK_BANTER% @212 /* Oh. Okay, great. Just let me make sure this thing is properly tuned first... */
EXIT

// Imoen

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraImoen1_BG1","GLOBAL",0)~ THEN %IMOEN_BANTER% rh#IzzyImoen1
@213 /* Do you think you could teach me that thing you do with your hair, Izzy? */
DO ~SetGlobal("rh#IsraImoen1_BG1","GLOBAL",1)~
== BRH#ISRA @214 /* Tonight, certainly, if we have the time. Though I'm not entirely convinced that you have the required patience for it. */
== %IMOEN_BANTER% @215 /* Eh... I guess it does look a bit complicated. And my hair might not really be long enough for it... */ 
== BRH#ISRA @216 /* That should make little difference. Though there are any number of other interesting things we could do with it to keep it off of your face. */
== %IMOEN_BANTER% @217 /* Heh. You mean you don't like it as is? */
== BRH#ISRA @218 /* I should hate to see an enemy grab hold of it one day. */
== %IMOEN_BANTER% @219 /* Oh. Yeah, I guess you have a point. */
EXIT

CHAIN IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraImoen2_BG1","GLOBAL",0)~ THEN BRH#ISRA rh#IzzyImoen2
@220 /* Imoen, do you really think it wise to play around with those scrolls so? I did not realize you had had any proper instruction on magecraft at all. */
DO ~SetGlobal("rh#IsraImoen2_BG1","GLOBAL",1)~
== %IMOEN_BANTER% @221 /* Well... I don't. Not really. But hey, I haven't turned you into a frog or something just yet, right? */
== BRH#ISRA @222 /* That isn't exactly the point. */
= @223 /* Pleased as I am to see you take interest in something other than the contents of other people's pockets-- */
== %IMOEN_BANTER% @224 /* Come on, Isra. It'll be fine. */
== BRH#ISRA @225 /* I certainly hope so. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraImoen3_BG1","GLOBAL",0)~ THEN %IMOEN_BANTER% rh#IzzyImoen3
@226 /* You know, Izzy, I like a good bardic tale as much as the next girl, but when I asked you for a story the other night, I kind of wanted one of your own. */
DO ~SetGlobal("rh#IsraImoen3_BG1","GLOBAL",1)~
== BRH#ISRA @227 /* The bardic tales are much more interesting, I assure you, difficult though it may be to distinguish fact from embellishment. */
== %IMOEN_BANTER% @228 /* But you're a paladin of Sune! You have to have *some* fun stories to share! */
== BRH#ISRA @229 /* Imoen, there are questions that are and are not considered appropriate to ask. Mayhap you should learn the difference. */
== %IMOEN_BANTER% @230 /* Oh, come on, no damsels in distress? No handsome princes to sweep you off your feet? Oooh, I know, some forbidden love affair with an evil wizard or something... */
== %IMOEN_BANTER% IF ~InParty("Edwin")~ THEN @231 /* Not Edwin, though, cause that's just... ew. */
== %IMOEN_BANTER% IF ~InParty("Xzar") !InParty("Edwin")~ THEN @232 /* Not Xzar, though, cause that's just... ew. */
== BRH#ISRA @233 /* *laugh* Sune forbid it! No, Imoen, no wizards, and there is no monarchy in Amn. As for damsels in distress... the closest I have ever gotten to that was arguably being one, and that story is far less interesting--and more embarrassing--than you would think. */
== %IMOEN_BANTER% @234 /* No dragons? */
== BRH#ISRA @235 /* Mere mundane teenage folly, and it isn't a tale I care to repeat. */
== %IMOEN_BANTER% @236 /* Spoilsport. */
EXIT

// Jaheira

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraJaheira1_BG1","GLOBAL",0)~ THEN %JAHEIRA_BANTER% rh#IzzyJaheira1
@237 /* That Mulhorandi kohl you are so fond of is beginning to smudge, Isra. Perhaps you should reconsider what habits are and are not appropriate on the road. */
DO ~SetGlobal("rh#IsraJaheira1_BG1","GLOBAL",1)~
== BRH#ISRA @238 /* I-- oh, so it is. Thank you. I shall need to find something better suited for this northern climate, 'twould seem. */
== %JAHEIRA_BANTER% @239 /* You would be wiser to spend less time and energy on your appearance and more on your swordplay. */
== BRH#ISRA @240 /* I am perfectly capable of doing both, my lady. */
== %JAHEIRA_BANTER% @241 /* Hmph. Do not take that tone with me, child-- */
== BRH#ISRA @242 /* With all do respect, Jaheira, I am *not* a child, and you will not treat me like one. If you find fault--substantial fault--with my performance, you are most welcome to point it out to me. However, my personal choices are, quite frankly, none of your concern. Are we understood? */
== %JAHEIRA_BANTER% @243 /* Quite. I only hope you will remember this moment when you inevitably find others acting contrary to your own desires, lady knight. */
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraJaheira2_BG1","GLOBAL",0)~ THEN BRH#ISRA rh#IzzyJaheira2
@244 /* Lady Jaheira, that stew you made the other night-- */
DO ~SetGlobal("rh#IsraJaheira2_BG1","GLOBAL",1)~
== %JAHEIRA_BANTER% @245 /* Just "Jaheira", child. I have no use for the trappings of nobility. */ 
== BRH#ISRA @246 /* As you wish. But I meant to say that your stew last night was really quite delicious. Have you a recipe for it? */
== %JAHEIRA_BANTER% @247 /* I do not. Nor would I trust you with one if I did. The level of precision and knowledge of woods-lore necessary to avoid poisoning oneself-- */
= @248 /* Do you need healing, Isra? You look suddenly faint. */
== BRH#ISRA @249 /* I am... fine. I'm no longer certain I like the idea of you cooking anything ever again, but I am otherwise... quite alright. */ 
== %JAHEIRA_BANTER% @250 /* Hmph. Do not be ridiculous. But perhaps you would be wise to stick to the Calishite spices you favor. */
== BRH#ISRA @251 /* Yes... yes, I dare say that would be for the best. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([FOREST])
Global("rh#IsraJaheira3_BG1","GLOBAL",0)~ THEN %JAHEIRA_BANTER% rh#IzzyJaheira3
@252 /* Isra, are you unwell? You look strangely discomfited. */
DO ~SetGlobal("rh#IsraJaheira3_BG1","GLOBAL",1)~
== BRH#ISRA @253 /* Forgive me, I saw something in the brush over there a moment ago. 'Twas... absolutely repulsive. */
== %JAHEIRA_BANTER% @254 /* This region is known for its various species of rodent. It seems to have scurried away now, however. */
== BRH#ISRA @255 /* Aye, and my eyes are glad for the respite. */
== %JAHEIRA_BANTER% @256 /* Hmph. Nature does not exist merely to serve your aesthetic tastes, child. For everything that you find beautiful in the forest, there will be another that you consider hideous instead. */
== BRH#ISRA @257 /* I assure you, my lady, that much is clear to me. */
EXIT

// Kagain

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKagain1","GLOBAL",0)~ THEN %KAGAIN_BANTER% rh#IsraKagain1
@258 /* Yer a wee bit worldly fer one o' yer order, are ye not? Ye does like yer fine perfumes and such. */ 
DO ~SetGlobal("rh#IsraKagain1","GLOBAL",1)~
== BRH#ISRA @259 /* To a reasonably extent, mayhap. Should I claim to endorse such things and then refuse to patronize them? That would be hypocritical. */
== %KAGAIN_BANTER% @260 /* Har, har, are ye sure yer not a Waukeener, lass? */
== BRH#ISRA @261 /* Quite. */
== %KAGAIN_BANTER% @262 /* Used to be, working with one o' yer lot, ye would at least know the gelt be safe from damn foolish girls. */
== BRH#ISRA @263 /* I assure you, I have spent only what money I brought with me. Though I dare say you would not even purchase food, had you the choice. */
== %KAGAIN_BANTER% @264 /* Aye, if I could help it, I cannae say that I would. */
EXIT

CHAIN IF ~InParty("Kagain")
See("Kagain")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKagain2","GLOBAL",0)~ THEN BRH#ISRA rh#IsraKagain2
@265 /* For one so taken with money, Kagain, you seldom seem inclined to spend it. I cannot say that I understand that. */
DO ~SetGlobal("rh#IsraKagain2","GLOBAL",1)~
== %KAGAIN_BANTER% @266 /* Are ye gonna go Amnish on me now, lassie? Gold's only worth anything in the spending o' it with yer lot. */ 
== BRH#ISRA @267 /* I have never been terribly impressed by Amnish extravagance, no, but your avarice makes even that seem attractive by comparison. False charity is at least still charity. */
== %KAGAIN_BANTER% @268 /* Yer a rich girl, are ye not? Ye was born rich, yer likely to die rich--and sooner than ye might like, if ye don't stop yer harping. */
== BRH#ISRA @269 /* ... There are different types of wealth, Kagain, and different types of poverty. Whatever hollowness lurks in your soul, I very much doubt that all of the money in Amn could fill it. */
== %KAGAIN_BANTER% @270 /* Har, not Amn, mayhap, but we can think a bit bigger than that, aye? */
EXIT

// Khalid

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKhalid1","GLOBAL",0)~ THEN %KHALID_BANTER% rh#IsraKhalid1
@271 /* That s-song you were humming, Isra... it s-sounded like s-something I once knew d-during my boyhood. */
DO ~SetGlobal("rh#IsraKhalid1","GLOBAL",1)~
== BRH#ISRA @272 /* In Calimshan? It may well have been. My family has been Amnish for generations, but we're still rather traditional. */
== %KHALID_BANTER% @273 /* That c-can be a c-curse as much as a b-blessing. */
== BRH#ISRA @274 /* Yes... it can. I take it that you don't overly miss Calimshan? */
== %KHALID_BANTER% @275 /* There is nothing left for me t-to miss. But you are younger... and away from home for the first t-time, I think. */
== BRH#ISRA @276 /* Away from Amn entirely, yes. If I am completely honest with myself, however, I should admit that Crimmor was growing somewhat... stifling. */
== %KHALID_BANTER% @277 /* S-stifling? How s-so? */
== BRH#ISRA @278 /* 'Tis a wonderful city, certainly... one of the most pleasant in Amn, but such splendor sometimes breeds complacency. */
== %KHALID_BANTER% @279 /* I s-see. C-complacency c-can be as d-dangerous as any more obvious evil, s-sometimes. */
== BRH#ISRA @280 /* The noble families in Crimmor hardly let the poor starve on the streets, but they do sometimes fail to see beyond their own borders. Truly, though, I would rather not speak ill of them. */
== %KHALID_BANTER% @281 /* As you s-say, Isra. B-but we have t-tarried long enough... p-perhaps we should c-catch up t-to the others. */
EXIT

CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKhalid2","GLOBAL",0)~ THEN BRH#ISRA rh#IsraKhalid2
@282 /* Khalid, could you please hold this a moment? I wanted to see-- oh, yes. I should have expected it to bruise like that. */ 
DO ~SetGlobal("rh#IsraKhalid2","GLOBAL",1)~
== %KHALID_BANTER% IF ~InParty("jaheira")~ THEN @283 /* If it s-still stings, I am c-certain that Jaheira would be willing t-to look at it. */
== %KHALID_BANTER% IF ~!InParty("jaheira")~ THEN @284 /* If it s-still stings, p-perhaps you should ask a c-cleric t-to look at it. */
== BRH#ISRA @285 /* And waste a spell over my own foolishness? No, I can manage. */
== %KHALID_BANTER% @286 /* There is no t-true need for our s-sparring s-sessions. We face enough c-combat as it is without the need for further d-drilling. */
== BRH#ISRA @287 /* I appreciate the routine. And I would much rather discover that I have grown careless *outside* of battle than in it. */
= @288 /* Of course, if you would prefer to stop, I certainly shan't hold you to it. */
== %KHALID_BANTER% @289 /* No, I am willing to c-continue... as long as you agree t-to take c-care of yourself afterwards. You are t-too p-proud for your own g-good, Isra. */
== BRH#ISRA @290 /* *smile* I think I can agree to those terms, Khalid. Thank you. */
EXIT

CHAIN IF ~InParty("Khalid")
See("Khalid")
InParty("Jaheira")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKhalid3","GLOBAL",0)~ THEN BRH#ISRA rh#IsraKhalid3
@291 /* I must confess, Khalid, I have never before heard of a married couple questing together. Even having traveled with you for some time now, the concept is still... somewhat foreign. */
DO ~SetGlobal("rh#IsraKhalid3","GLOBAL",1)~
== %KHALID_BANTER% @292 /* That c-comes as a s-surprise. I would have thought that s-such things were c-common amongst S-Sunites. */
== BRH#ISRA @293 /* Amongst the clerics, mayhap. Their habits can sometimes change with their moods, but amongst the paladins... I have never seen it before, at least. */
= @294 /* We prefer to keep the objects of our devotion away from harm. */
== %KHALID_BANTER% @295 /* And on a p-pedestal, p-perhaps, to be loved from afar? */
== BRH#ISRA @296 /* You don't care for the notion, I see. */
== %KHALID_BANTER% @297 /* There is s-such a thing as b-being t-too romantic for one's own g-good, Isra. If you p-purposefully s-set your s-sights on one out of reach, you will c-come up against much heartbreak in your life. */
== BRH#ISRA @298 /* Few of us practice courtly love exclusively, I admit, though 'tis certainly kinder than the spouse left to waste in the castle, so to speak. */
== %KHALID_BANTER% @299 /* And yet you t-take issue with the idea of t-traveling the road as a c-couple. */
== BRH#ISRA @300 /* I cannot imagine that it isn't... terrifying, truly. If I might ask, how can you bear the uncertainty of it all? */
== %KHALID_BANTER% @301 /* I t-trust Jaheira to t-take c-care of herself, and she d-does the s-same for me. What is love without mutual t-trust? */
== BRH#ISRA @302 /* Mutual trust... mayhap there is some truth to that, though the concept still baffles me. I don't mean to cast doubts upon the sincerity of your attachment, of course. */ 
== %KHALID_BANTER% @303 /* *laugh* I never thought that you d-did. But c-come, let us move on now. */
EXIT

// Kivan

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKivan1","GLOBAL",0)~ THEN %KIVAN_BANTER% rh#IsraKivan1
@304 /* Your attention wanders in my direction far too often, Isra. It would be best kept upon the road. */
DO ~SetGlobal("rh#IsraKivan1","GLOBAL",1)~
== BRH#ISRA @305 /* Mayhap, though I have always been taught that knowledge of one's allies can prove as important in battle as knowledge of one's foes. */
== %KIVAN_BANTER% @306 /* Hmm. */
== BRH#ISRA @307 /* It is exceedingly difficult to talk to you sometimes, Kivan. */
== %KIVAN_BANTER% @308 /* Aye, I have been told that before. */
= @309 /* My mind is heavy at present, Isra, and any attempt you might make to lighten it would only serve to burden it further. Please, leave me be. */
== BRH#ISRA @310 /* I... I see. If that is what you wish. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKivan2","GLOBAL",0)~ THEN %KIVAN_BANTER% rh#IsraKivan2
@311 /* Are all knights of your order very much like you, Isra? */
DO ~SetGlobal("rh#IsraKivan2","GLOBAL",1)~
== BRH#ISRA @312 /* What do you mean? */
== %KIVAN_BANTER% @313 /* You are in love with love itself, my friend, and I admire you for that. But you are still very young. */
== BRH#ISRA @314 /* ... I see. */
= @315 /* There are some among my my order who... have suffered losses such as yours, Kivan. We even have several stories of knights of other faiths rededicating themselves to the Firehair after... after such a tragedy. 'Tis a rare thing, but it does happen on occasion. */
= @316 /* Mayhap that answers the spirit of your question, if not exactly the words. */
== %KIVAN_BANTER% @317 /* I do not see how it answers either. */
== BRH#ISRA @318 /* Kivan, I am not so young that I do not recognize that terrible things happen in this world. None of us are, but solace can be found in better things than revenge. */
== %KIVAN_BANTER% @319 /* And for each who finds solace, how many fall instead? */
== BRH#ISRA @320 /* I... truly, I could not say for certain. */
== %KIVAN_BANTER% @321 /* That does not surprise me. */
== BRH#ISRA @322 /* 'Tis a cruel road, Kivan, with nothing but darkness at its end. */
== %KIVAN_BANTER% @323 /* It is the road that I have chosen, and I will not be turned from it. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("p#Kivan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKivan3","GLOBAL",0)~ THEN %KIVAN_BANTER% rh#IsraKivan3
@324 /* No, there is still something off in your stance-- */ 
DO ~SetGlobal("rh#IsraKivan3","GLOBAL",1)~
== BRH#ISRA @325 /* ... Oh. Oh, dear. */
= @326 /* Your offer was kind, but bowmanship is... very much not my calling, I'm afraid. */
== %KIVAN_BANTER% @327 /* Skill in arms is seldom earned overnight, which you know as well as I. I am surprised that your order did not teach you archery. */
== BRH#ISRA @328 /* My father tried once, years ago. I should consider myself lucky I did not shoot my own hand off. After that debacle, it was never much of a priority, even before I was formally trained. */
= @329 /* You shouldn't waste your time on it, truly. Even were I not as likely to hit a friend as a foe, I doubt that I would ever feel entirely comfortable with a bow. */
== %KIVAN_BANTER% @330 /* It is an invaluable skill, and well worth whatever length of time it takes to learn. */
== BRH#ISRA @331 /* Please, Kivan, would you finally put this mad idea out of your mind? */
== %KIVAN_BANTER% @332 /* Aye, if that is what you wish. */
EXIT

// Minsc

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMinsc1_BG1","GLOBAL",0)~ THEN %MINSC_BANTER% rh#IzzyMinsc1
@333 /* Friend Isra! Boo and I have been wondering something. */
DO ~SetGlobal("rh#IsraMinsc1_BG1","GLOBAL",1)~
== BRH#ISRA @334 /* What is it, Minsc? */
== %MINSC_BANTER% @335 /* You are very pretty, for a lady warrior. Boo has rarely seen any so pretty. */
== BRH#ISRA @336 /* *laugh* Thank you. */
== %MINSC_BANTER% @337 /* And you are very brave, oho, very brave indeed! Evil cowers when you raise your mighty sword-arm to their ugly faces. */
= @338 /* Minsc is wondering, though, whether maybe the pretty lady should stay behind him in battle. It is not safe for ladies to be on the frontlines, especially ones so pretty as Isra! */
== BRH#ISRA @339 /* You flatter me, my friend, but I can handle myself. Truly. */
== %MINSC_BANTER% @340 /* Well, if you are sure. Still, perhaps you should stand a little closer to me on the field. We do not want you getting hurt! */
== BRH#ISRA @341 /* *laugh* My thanks, Minsc. I shall keep that in mind. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMinsc2_BG1","GLOBAL",0)~ THEN %MINSC_BANTER% rh#IzzyMinsc2
@342 /* Boo says to tell you that he approves of your zeal in combating the forces of evil, and that he is glad to have you at Minsc's side. */
= @343 /* But Isra, what exactly is 'zeal'? Boo will not say and Minsc is confused. */
DO ~SetGlobal("rh#IsraMinsc2_BG1","GLOBAL",1)~
== BRH#ISRA @344 /* Passion, Minsc. Passion in its purest of forms. Tell me, how do you feel about the prospect of eradicating evil from this world? */
== %MINSC_BANTER% @345 /* It is the most important task of all! Evil must not be allowed to spread its corruption any further, and must be stomped to the ground and crushed horribly beneath our heels! */
== BRH#ISRA @346 /* Aye, and what you feel right now, Minsc... *that* is zeal. */
== %MINSC_BANTER% @347 /* Ahah! See, Boo, was that so difficult? */
= @348 /* Minsc agrees with Boo's assessment. Friend Isra is most definitely zealous in combating the forces of evil! */
== BRH#ISRA @349 /* As are you, my friend. */
EXIT

// Montaron

CHAIN IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMontaron1","GLOBAL",0)~ THEN BRH#ISRA rh#IsraMontaron1
@350 /* I don't much care for the mercenary gleam in your eyes, Montaron. */
DO ~SetGlobal("rh#IsraMontaron1","GLOBAL",1)~
== %MONTARON_BANTER% @351 /* That so? I be thinking, mebbe yer lot be o' more worth than I'd reckon. */
== BRH#ISRA @352 /* Really. */
== %MONTARON_BANTER% @353 /* Aye, yer armor be worth a fancy price these days, an' ye seem like ye be right weighed down wi' jewelry beside... could be e'en the girl be worth more alive than dead. I ain't decided that last part yet. */
== BRH#ISRA @354 /* Give me one reason to cut you down, thief, and I promise you, I will take it. */
== %MONTARON_BANTER% @355 /* Mayhap dead, then. S'pose I can wait fer some stray arrow t' take ye first. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMontaron2","GLOBAL",0)~ THEN %MONTARON_BANTER% rh#IsraMontaron2
@356 /* Yer a bit freer wi' yer affections than most o' yer crowd, I reckon. */
DO ~SetGlobal("rh#IsraMontaron2","GLOBAL",1)~
== BRH#ISRA @357 /* I'll invite you to take your leers and lewd comments elsewhere, thief. */
== %MONTARON_BANTER% @358 /* Me comments, aye, but me leer be stayin' right where it is. I've made m'self a pretty penny in th' taverns bettin' on just how far ye'd take things wi' whoev' caught yer fancy. */
== BRH#ISRA @359 /* That's absolutely revolting. */
== %MONTARON_BANTER% @360 /* Mebbe, but it's th' only time yer at all worth bein' 'round. */
== BRH#ISRA @361 /* You truly cannot help but turn everything fair in this world into some foul mockery of itself, can you? */
== %MONTARON_BANTER% @362 /* It's a talent, s'pose. */
EXIT

// Quayle

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraQuayle","GLOBAL",0)~ THEN %QUAYLE_BANTER% rh#IsraQuayle
@363 /* Say, Isra. I see that in the time we've spent in each other's company, I've already begun to have a positive impact on you. */
DO ~SetGlobal("rh#IsraQuayle","GLOBAL",1)~
== BRH#ISRA @364 /* What in the Realms are you talking about, Quayle? */
== %QUAYLE_BANTER% @365 /* Well, you don't do quite as many stupid things with your hair as you used to. It's a nice improvement. */
== BRH#ISRA @366 /* ... Unless you are somehow responsible for the lack of time recently-- */
== %QUAYLE_BANTER% @367 /* You know, you're really lucky that I'm around. I'm widely--and correctly, of course--considered one of the most attractive people in Faerun, and I assure you, looking this good isn't easy! Why, I could provide you any number of fashionable beauty tips! There's nothing quite like learning from the best, after all. */
== BRH#ISRA @368 /* Could you please just... go away? */
== %QUAYLE_BANTER% @369 /* I see that I've overwhelmed you with my handsomeness. I hear that happens with Sunites sometimes. */
EXIT

// Safana

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraSafana1","GLOBAL",0)~ THEN %SAFANA_BANTER% rh#IsraSafana1
@370 /* I must say, darling, I am really rather impressed. */
DO ~SetGlobal("rh#IsraSafana1","GLOBAL",1)~
== BRH#ISRA @371 /* What in the Realms do you think you're doing, Safana? Put that down this instant! */
== %SAFANA_BANTER% @372 /* In a moment, dear. I'm quite sure I haven't seen products of this quality since I left Calimshan. I may need to borrow this at some point. You wouldn't mind, would you? */
== BRH#ISRA @373 /* I most certainly would. */
== %SAFANA_BANTER% @374 /* A pity. I had no idea the church of Sune was quite so well stocked. Perhaps I should consider conversion someday. */
== BRH#ISRA @375 /* Safana, you have approximately three seconds to get out of my bags-- */
== %SAFANA_BANTER% @376 /* Oh my, is this what I think it is? Why, it must be-- */
= @377 /* Ow! Fine, fine. You can have your precious equipment back. */
== BRH#ISRA @378 /* If I find anything missing-- */
== %SAFANA_BANTER% @379 /* Ohh, I was only window shopping, darling. I promise. */
EXIT

// in an inn, in the morning

CHAIN IF WEIGHT #-1 ~Global("rh#IsraSafana2","GLOBAL",1)~ THEN RH#ISRAJ rh#IsraSafana2
@380 /* Was that truly necessary, Safana? */
DO ~SetGlobal("rh#IsraSafana2","GLOBAL",2)~
== %SAFANA_JOINED% @381 /* Don't be a hypocrite, darling. Or should I say "sore loser" instead? You were all but making eyes at him yourself. */
== RH#ISRAJ @382 /* He was certainly handsome enough, but this is hardly the time or the place for such indulgences. I hope you at least bid him farewell properly. */
== %SAFANA_JOINED% @383 /* Ohh, in a manner of speaking, I suppose. */
== RH#ISRAJ @384 /* ... You robbed him, didn't you? */
= @385 /* Of course you did. How so many men continue to fall for your manipulative games-- */
== %SAFANA_JOINED% @386 /* *sigh* Sometimes I don't think you like me very much at all, dear. */
== RH#ISRAJ @387 /* As a matter of fact, no. I should think it quite obvious by now that I find you completely repulsive. Whatever it is that you took from him, Safana, I want it back. Now. */
== %SAFANA_JOINED% @388 /* If you insist... you know, you really are no fun at all anymore. If it would help, I'll let you have the next one for yourself. */
= @389 /* Oh, don't look so outraged. Now, why don't you be a good little girl and return the poor boy's stolen valuables? I would really like to enjoy my breakfast in peace. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraSafana3","GLOBAL",0)~ THEN %SAFANA_BANTER% rh#IsraSafana3
@390 /* Isra, darling, you really haven't spoken the Calishite tongue in ages, have you? That accent is absolutely atrocious, even for a provincial Amnish girl. */
DO ~SetGlobal("rh#IsraSafana3","GLOBAL",1)~
== BRH#ISRA @391 /* How delicately put. */
== %SAFANA_BANTER% @392 /* Far more delicately put than what you just said. Who were your ancestors anyway, sailors from Memnon? */
== BRH#ISRA @393 /* Warlords from Calimport, to the best of my knowledge. I imagine my diction isn't quite what you're accustomed to. */
== %SAFANA_BANTER% @394 /* Well, no matter. I have certainly heard worse. Why, there was this one dashing rogue I knew in Calimport... I can't say that I understood more than one in every three words he said. */
= @395 /* Of course, my father had him hanged eventually. */
== BRH#ISRA @396 /* You don't sound terribly sad about that. */
== %SAFANA_BANTER% @397 /* He made his choices. I've made mine. */
== BRH#ISRA @398 /* Aye, so you have. */
== %SAFANA_BANTER% @399 /* Suddenly so judgmental. Really, darling, that frown is dreadfully unattractive on you. Surely that must be a sin? */
== BRH#ISRA @400 /* Sometimes I don't know why I even bother talking to you. */
== %SAFANA_BANTER% @401 /* Something I've wondered more than once myself, I assure you. */
EXIT

// Shar-Teel

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraSharteel","GLOBAL",0)~ THEN %SHARTEEL_BANTER% rh#IsraSharteel
@402 /* You are a disgrace, woman. You are strong and skilled, and yet you let yourself be bound by the idiotic codes that men have written. */
= @403 /* Can you not see that they think less of you? Do they not always seek to protect you when you fight alongside them, as if you were some foolish weakling child? Bah! */ 
DO ~SetGlobal("rh#IsraSharteel","GLOBAL",1)~
== BRH#ISRA @404 /* ... No more than they would anybody else. */
= @405 /* If you knew half as much about those codes as you profess, you would also know that you're treading into dangerous waters now. */
== %SHARTEEL_BANTER% @406 /* Hah! I have no wish to fight you, paladin. I save my fury for those that deserve it. One day, perhaps, you will wake up from this stupid dream of yours and do the same. */
== BRH#ISRA @407 /* The day I see the world like you do, Shar-Teel, is the day I gladly fall upon my own sword. */
== %SHARTEEL_BANTER% @408 /* What a romantic gesture, girl. We will see if you still remember it once your beloved brothers have abandoned you to your fate. */
= @409 /* But there's no point in talking to you yet. Maybe you'll prove worthwhile once you've grown up. */
EXIT

// Skie

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraSkie1","GLOBAL",0)~ THEN %SKIE_BANTER% rh#IsraSkie1
@410 /* Isra, is it common for Amnish nobles to teach their daughters how to use weapons? */
DO ~SetGlobal("rh#IsraSkie1","GLOBAL",1)~
== BRH#ISRA @411 /* Not terribly common, my lady, no. I dare say my father quickly decided that if the choice was between my learning from the best and haunting soldiers' taprooms, he would prefer the former. */
== %SKIE_BANTER% @412 /* *giggle* I wish my father were as practical. */ 
== BRH#ISRA @413 /* Mayhap, though there is a point at which a person can become too practical. */
= @414 /* Are you quite certain that you're not at all homesick? */
== %SKIE_BANTER% @415 /* Of course not! Adventure, the open road... this is the life I've always dreamed of! */
== BRH#ISRA @416 /* 'Tis also a life that you are... ill-prepared for, Lady Silvershield. You could be killed. Any one of us could be. */
== %SKIE_BANTER% @417 /* I know that, Isra. And I've had enough of people telling me to go home and be a proper lady, so just stop it. It's my life, and I'm done living it the way everybody else tells me I should! */
== BRH#ISRA @418 /* Very well, then. As you wish. */
EXIT

CHAIN IF ~InParty("Skie")
InParty("Eldoth")
See("Skie")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraSkie2","GLOBAL",0)~ THEN BRH#ISRA rh#IsraSkie2
@419 /* May I speak with you for a moment, my lady? Privately? */
DO ~SetGlobal("rh#IsraSkie2","GLOBAL",1)~
== %SKIE_BANTER% @420 /* If this is about the perfume I borrowed-- */
== BRH#ISRA @421 /* What? Oh, no. Of course not. */
= @422 /* You are... young in some ways. Younger than I think you realize. Truly, I should hate to see you make one that will haunt you for the rest of your life. */
== %SKIE_BANTER% @423 /* What... what are you talking about? */
== BRH#ISRA @424 /* Eldoth Kron. */
== %SKIE_BANTER% @425 /* You too, Isra? But you... you're supposed to worship and serve love! Why would YOU try to keep us apart? */
== BRH#ISRA @426 /* I am sworn to Sune, yes. Eldoth... is not. I would be very much surprised to learn that he serves anyone except himself. */
= @427 /* He is a *serpent*, Skie. I'm not sure I've ever heard a word from his tongue that was not false. Whatever he told you to make you love him so-- */
== %SKIE_BANTER% @428 /* You don't know what you're talking about! He DOES love me. */
== BRH#ISRA @429 /* No, he doesn't. There is no room in that... that beast's heart for love. If you will pay no notice to the way he treats you, then at least take heed of how he treats the others around him. */
= @430 /* You are a beautiful, kind, and intelligent woman... you deserve better than this... this mockery of love. */
== %SKIE_BANTER% @431 /* You... you're like all of the others! Why can't you all just leave us alone!? */
== BRH#ISRA @432 /* *sigh* If everyone is telling you that you are wrong in this, Skie, mayhap you should listen. */
EXIT

// Tiax

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraTiax","GLOBAL",0)~ THEN %TIAX_BANTER% rh#IsraTiax
@433 /* When Tiax rules all, paladin, you shall be one of his consorts! */
DO ~SetGlobal("rh#IsraTiax","GLOBAL",1)~
== BRH#ISRA @434 /* ... I think not. I find even the thought of spending a moment with you nauseating. */
== %TIAX_BANTER% @435 /* Fine! Tiax the handsome needs no consort! He needs nobody but himself! */
== BRH#ISRA @436 /* I see. Have you ever had a meaningful relationship in your life, Tiax? Any at all? */
== %TIAX_BANTER% @437 /* Tiax is his own best friend, confidante, and lover! Who would ever need anyone else but the magnificent destroyer of worlds? */
== BRH#ISRA @438 /* I am... not entirely sure I wish to think that through. */
EXIT

// Viconia

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraViconia1_BG1","GLOBAL",0)~ THEN %VICONIA_BANTER% rh#IzzyViconia1
@439 /* I have noticed how often your eyes linger on me, jalil. Does the lure of the forbidden tempt even you? */
DO ~SetGlobal("rh#IsraViconia1_BG1","GLOBAL",1)~
== BRH#ISRA @440 /* Don't flatter yourself. */
== %VICONIA_BANTER% @441 /* You flinch from the sound of my voice like a craven child. *chuckle* But perhaps you do indeed find yourself entertaining notions you do not overly care for... the darkened mirror is a beguiling prospect, is it not? */
== BRH#ISRA @442 /* ... You *revolt* me, Sharran. */
= @443 /* I may tolerate your existence for the moment, but if you EVER again mention your vile faith in my presence, the peace between us will be at an end. Are we understood? */
== %VICONIA_BANTER% @444 /* Such defensiveness, rivvil. One might think your surety of faith could withstand a little scrutiny, but... perhaps not. I will leave you be. */
EXIT

CHAIN IF WEIGHT #-1 ~Global("rh#IsraViconia2_BG1","GLOBAL",1)~ THEN RH#ISRAJ rh#IzzyViconia2
@445 /* Keep your hands OFF of me, Sharran. */
DO ~SetGlobal("rh#IsraViconia2_BG1","GLOBAL",2)~
== %VICONIA_JOINED% @446 /* *chuckle* I think that you would willingly bleed to death before accepting my help. */
== RH#ISRAJ @447 /* Gladly. */
== %VICONIA_JOINED% @448 /* As you wish, jalil. One less sanctimonious child in the world would be no loss to anyone. */
EXIT

// Xan

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraXan1","GLOBAL",0)~ THEN %XAN_BANTER% rh#IsraXan1
@449 /* I can't seem to decide if you are mad or simply naive. */
DO ~SetGlobal("rh#IsraXan1","GLOBAL",1)~
== BRH#ISRA @450 /* You reflect rather poorly upon your kin, Xan, if that is your understanding of courtesy. */
== %XAN_BANTER% @451 /* It would not be the first time. */
= @452 /* You are an attractive woman, I suppose, for a human. At least, I certainly hope you are, since you spend half the morning grooming-- */
== BRH#ISRA @453 /* ... You exaggerate, surely. */
== %XAN_BANTER% @454 /* What difference does it make? And then you rush off so eagerly to get yourself killed... it's surprising that you haven't been disfigured already. How someone who values her appearance so highly could risk it so wantonly is beyond me. */
== BRH#ISRA @455 /* ... I value my life as well. Should I cower away from danger simply to preserve it? */
== %XAN_BANTER% @456 /* If you were intelligent, you would. */
== BRH#ISRA @457 /* We have very different conceptions of intelligence, 'twould seem. */
== %XAN_BANTER% @458 /* *sigh* Madness. */
EXIT

CHAIN IF ~InParty("Xan")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraXan2","GLOBAL",0)~ THEN BRH#ISRA rh#IsraXan2
@459 /* Tell me, Xan, is there truly a spring within your city that can heal all griefs? I've heard tell of it once or twice. */
DO ~SetGlobal("rh#IsraXan2","GLOBAL",1)~
== %XAN_BANTER% @460 /* No amount of magic can heal all griefs, not even that of the Singing Spring. But yes, it does exist. */
== BRH#ISRA @461 /* I see. I had always assumed that the legendary splendor of Evereska was merely that... legend. Perhaps I was mistaken. */
== %XAN_BANTER% @462 /* Whatever you have heard, it likely pales in comparison to the truth. */
== BRH#ISRA @463 /* And yet you would hide it away from the rest of the world. That seems a terrible shame. */
== %XAN_BANTER% @464 /* It would no doubt already be despoiled if we did not. Don't forget that Myth Drannor sealed its fate when it opened its gates to the masses of humanity. */
== BRH#ISRA @465 /* Mayhap, but the world is richer because of it. */
== %XAN_BANTER% @466 /* And my people, poorer. And we are poor enough now as it is. If we lose any more, we will barely have anything left at all. */
= @467 /* But I know I won't convince you. I don't know why I even bother to try. */
EXIT

// Xzar 

CHAIN IF ~InParty("Xzar")
See("Xzar")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraXzar1","GLOBAL",0)~ THEN BRH#ISRA rh#IsraXzar1
@468 /* Xzar, did you truly just... eat that? */
DO ~SetGlobal("rh#IsraXzar1","GLOBAL",1)~
== %XZAR_BANTER% @469 /* Hmm? What of it? */
== BRH#ISRA @470 /* I... excuse me... */
== %XZAR_BANTER% @471 /* It had only been dead a few days. The human body is surprisingly resilient to these sorts of things, you'll find. */
== BRH#ISRA @472 /* Yours, mayhap... but certainly not mine. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraXzar2","GLOBAL",0)~ THEN %XZAR_BANTER% rh#IsraXzar2
@473 /* I dreamt of you last night, paladin... or perhaps of your goddess. Hmm. The blinding images fade upon waking, alas, and it can be quite dangerous at times to tell where one thing begins and another ends. */
DO ~SetGlobal("rh#IsraXzar2","GLOBAL",1)~
== BRH#ISRA @474 /* If you expect me to be able to interpret your gibberish, Xzar-- */
== %XZAR_BANTER% @475 /* Interpret? Oh, no, no... that wouldn't do at all. A dream that has been interpreted loses all of its power. I thought everyone knew that. */
== BRH#ISRA @476 /* ... That isn't what I meant. */
== %XZAR_BANTER% @477 /* *sigh* We never mean what we say. Or say what we mean, perhaps. At least, I never seem to. */
== BRH#ISRA @478 /* So I've noticed. */
== %XZAR_BANTER% @479 /* In my dream, you noticed that as well. Though I must say that you noticed a lot of things that you never seem to in the waking world-- */
== BRH#ISRA @480 /* Xzar, I truly don't care to hear this. */
== %XZAR_BANTER% @481 /* Oh? A pity. */
EXIT

// Yeslick

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraYeslick1","GLOBAL",0)~ THEN %YESLICK_BANTER% rh#IsraYeslick1
@482 /* Fer a paladin, Isra, ye're a pleasure to travel with. It be nice not to have ta listen to constant speeches about th' virtues o' honor, duty an' patience fer a change. */
DO ~SetGlobal("rh#IsraYeslick1","GLOBAL",1)~
== BRH#ISRA @483 /* ... I'm not quite sure if I should consider that a compliment. */
== %YESLICK_BANTER% @484 /* Ach, lassie, donnae take it the wrong way. Ye're a fine lass, with a good head on yer shoulders an' a strong sword-arm. It be refreshin' not ter have ta be deal with th' typical paladin nonsense. */
== BRH#ISRA @485 /* That is most uncharitable, Yeslick. And surprising. You have always struck me as the honorable, dutiful type yourself. */
== %YESLICK_BANTER% @486 /* A more honorable dwarf ye would struggle to find, forsooth, but paladins seem to harp on about such virtues an' it makes the ears sting after th' first few hours. */
= @487 /* In me own experience, most already know what virtues they choose to follow, an' need not be reminded which they should. It donnae ever lead anywhere but arguin'. */
EXIT

CHAIN IF ~InParty("rh#Isra")
See("rh#Isra")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraYeslick2","GLOBAL",0)~ THEN %YESLICK_BANTER% rh#IsraYeslick2
@488 /* I donnae know much about Sunites, Isra. Would ye be willin' to tell an old dwarf about the goddess whose faith ye follow? */
DO ~SetGlobal("rh#IsraYeslick2","GLOBAL",1)~
== BRH#ISRA @489 /* Ah, but where would I even begin? Beauty and love, aye, but that goes deeper by far than mere words could describe. */
= @490 /* She is... inspiration, I would say... the source of the passion that makes life worthwhile. Behind every act of love, every glimpse of beauty in this broken world, you can feel her touch... truly, 'tis remarkable that she would give so much and yet expect so little in return--only that we do her honor by glorying in her gifts. */
= @491 /* *smile* Would that I were a better poet, to do her true justice. */ 
== %YESLICK_BANTER% @492 /* T'be frank, lass, ye sound more like she be yer lover than yer goddess! Isnae that an inappropriate way to speak about yer deity? */
== BRH#ISRA @493 /* *laugh* On the contrary, my friend, 'tis expected of us. "Lose yourself in love of the Lady Firehair." I would be a poor servant indeed if I disobeyed her commands. */
== %YESLICK_BANTER% @494 /* Sounds a mite strange t'me, but ye seem far happier than most paladins this ol' dwarf has had the dubious pleasure 'o meeting. An' that should count for somethin'. */
= @495 /* Thank ye, Isra. I donnae know much about human gods, but I be always interested in learnin', an' if yer willin' to spend th' time... */
== BRH#ISRA @496 /* Most certainly. And I confess, I know rather less about the dwarven gods than I should like, so mayhap we can teach each other. */
== %YESLICK_BANTER% @497 /* It would be me pleasure, lass. It would be me pleasure. */
EXIT
