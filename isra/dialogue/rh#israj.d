BEGIN RH#ISRAJ

/* ------------------ *
 *  Friendship Track  *
 * ------------------ */

// 1.
// --
CHAIN IF ~Global("rh#IsraTalksBG1","GLOBAL",2)~ THEN RH#ISRAJ t1
@0 /* I should congratulate you on a beautifully executed campaign, my <PRO_LADYLORD>. I must confess, I was not entirely certain what to expect of you. */
DO ~IncrementGlobal("rh#IsraTalksBG1","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksMessengerSpawnTimer","GLOBAL",2700)~
END
	++ @1 /* You didn't actually trust me? */ + t1.1
	++ @2 /* You don't need to patronize me, Isra. */ + t1.2
	++ @3 /* There was nothing beautiful about what happened down there. */ + t1.3
	++ @4 /* My thanks for the sentiment. */ + t1.4
	++ @5 /* I'm sorry, but we don't have time to talk right now. */ + t1.5

APPEND RH#ISRAJ

IF ~~ t1.1
 SAY @6 /* You seemed an honorable <PRO_MANWOMAN>, <CHARNAME>. I would not have joined with you were it otherwise, but I fear I've become... unaccustomed to working with strangers. */
IF ~~ + t1.4
END

IF ~~ t1.2
 SAY @7 /* I intended no offense, <CHARNAME>. */
IF ~~ + t1.4
END

IF ~~ t1.3
 SAY @8 /* No... no, there was not. People have died, and it may be some time before Nashkel recovers fully. However, the fact remains that you handled yourself remarkably well. */
IF ~~ + t1.4
END

IF ~~ t1.4
 SAY @9 /* I would like to remain in your company, but I can promise very little. Now that we have returned from the mines, I shall need to send word to my elders within the Ruby Rose. They will want to be appraised of what passed here, I am sure. */
	++ @10 /* Do you have any idea what's going on? */ + t1.6
	++ @11 /* And here I had assumed that you people only cared about artists. */ + t1.7
	++ @12 /* Do you think they're going to spirit you away somewhere? */ + t1.8
	++ @13 /* Any chance of getting those elders of yours to help out? We may be in over our heads very quickly. */ + t1.9
END

IF ~~ t1.5
 SAY @14 /* As you wish. */
IF ~~ EXIT
END

IF ~~ t1.6
 SAY @15 /* I am... uncertain, I fear. I never truly expected to find demons, but a priest of Cyric is not a vast improvement. */
IF ~~ + t1.10
END

IF ~~ t1.7
 SAY @16 /* ... */
 = @17 /* Our values and concerns are slightly removed from what most paladins would deem most important, 'tis true, but we lay down our lives no less quickly. And truly, while there were no demons in the mine, a priest of Cyric is... not a vast improvement. */
IF ~~ + t1.10
END

IF ~~ t1.8
 SAY @18 /* I do not know. I was sent to Nashkel to protect Prism, and since that obligation has now... ended, they may have better use for me somewhere else. But I think it unlikely. While we found no demons in the mine, a priest of Cyric is... not a vast improvement. */
IF ~~ + t1.10
END

IF ~~ t1.9
 SAY @19 /* I hesitate to say yay or nay. We have significantly fewer resources than the Order of the Radiant Heart, but you may well be right to be worried. While we found no demons in the mine, a priest of Cyric is... not a vast improvement. */
IF ~~ + t1.10
END

IF ~~ t1.10 
 SAY @20 /* I wouldn't be overly concerned if not for the letter we found, but the thought of Cyricists engaged in coordinated efforts... frightens me, truth be told. Hopefully the late Mulahey was working independently of his church. */
	++ @21 /* I hadn't really thought of that. */ + t1.11
	++ @22 /* Cheer up! It may very well be something even worse. */ + t1.12
	++ @23 /* At least with Cyricists, you know what you're getting. */ + t1.13
	++ @24 /* A hope I most definitely share. */ + t1.11
END

IF ~~ t1.11
 SAY @25 /* Still, there is little point in jumping to conclusions too quickly. */
IF ~~ + t1.14
END

IF ~~ t1.12
 SAY @26 /* *laugh* Worse than Cyricists? You jest, surely. */
IF ~~ + t1.14
END

IF ~~ t1.13
 SAY @27 /* Indeed. The beginnings of a terrible headache. */
IF ~~ + t1.14
END

IF ~~ t1.14
 SAY @28 /* At least Nashkel can now recover, regardless of what happens next. Enough lives have been needlessly lost as it is. */
 = @29 /* Such suffering over something so petty... I can only pray that Mulahey's poisons haven't seeped too deeply into the hearts of those who have survived as well. */
	++ @30 /* It goes further than simply Nashkel, I'm afraid. */ + t1.15
	++ @31 /* People are resilient, if nothing else. They'll be okay. */ + t1.16
	++ @32 /* That's up to them now; not us. */ + t1.17
	++ @33 /* On the other hand, things could have been a lot worse. */ + t1.17
END

IF ~~ t1.15
 SAY @34 /* Aye, mining incidents too often do. Would that our reliance upon weapons of war did not run quite so deeply. */
IF ~~ + t1.18
END 
 
IF ~~ t1.16
 SAY @35 /* Mining towns do not necessarily recover quickly, though I think you may be correct. Nashkel seems a rather tightly knit community to me, and that can make all of the difference in the end. */
IF ~~ + t1.18
END 

IF ~~ t1.17
 SAY @36 /* Aye, that is true enough. */
IF ~~ + t1.18
END 
 
IF ~~ t1.18
 SAY @37 /* But I have no wish to distract you from what is likely to be a trying task. Mayhap we should put our minds to the trail in front of us. */
IF ~~ EXIT
END
END

// 2. triggers in any city or town area, and probably the major road areas too
// ---------------------------------------------------------------------------
BEGIN RH#ISMES

CHAIN IF ~Global("rh#IsraMessengerSpawn","GLOBAL",1)~ THEN RH#ISMES m1
@38 /* Excuse me... are you Lady Isra Ghadir? */
== RH#ISRAJ @39 /* I am. How may I help you? */
== RH#ISMES @40 /* I have a message for you from Sir Evendur Crytrapper. */
== RH#ISRAJ @41 /* Oh, of course. My thanks. */
DO ~SetGlobal("rh#IsraMessengerSpawn","GLOBAL",2)~
EXIT

CHAIN IF ~Global("rh#IsraTalksBG1","GLOBAL",4)~ THEN RH#ISRAJ t2
@42 /* 'Twould seem that I have been instructed to remain by your side, my <PRO_LADYLORD>, if you would have me. */
= @43 /* I had expected as much, truly. Sir Evendur likely would have wished to become involved himself, had... circumstances allowed it. I can only hope to prove an adequate substitute. */
DO ~IncrementGlobal("rh#IsraTalksBG1","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksBG1Timer","GLOBAL",2700)~
END
	++ @44 /* You certainly have so far, my lady. */ + t2.1
	++ @45 /* Had circumstances allowed it? What happened? */ + t2.2
	++ @46 /* Looking like you do, I'm sure you'll prove far more than adequate. */ + t2.3
	++ @47 /* Good. I prefer not having to put up with a real knight's nonsense anyway. */ + t2.4

APPEND RH#ISRAJ

IF ~~ t2.1
 SAY @48 /* Thank you, <CHARNAME>. */
IF ~~ + t2.5 
END

IF ~~ t2.2
 SAY @49 /* He was... grievously wounded nigh on a month ago. Forgive me, <CHARNAME>, but I have little desire to share the details. */
IF ~~ + t2.5 
END

IF ~~ t2.3 
 SAY @50 /* *laugh* I hope to offer something more substantial than that to a group such as this, <CHARNAME>. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1)~ + t2.5 
END

IF ~~ t2.4
 SAY @51 /* ... Truly, my <PRO_LADYLORD>, such comments are unworthy of you. If you would prefer not to speak, however, I shall leave you in peace. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceCheck","GLOBAL",2)~ EXIT
END

IF ~~ t2.5 
 SAY @52 /* I must admit that this is somewhat new to me. There is a world of difference between acting as a squire and a true campaign, as I am beginning to learn. The adjustment has been... illuminating, to say the least. */
	++ @53 /* What types of differences? */ + t2.6
	++ @54 /* Are you missing your knightly tourneys already? */ + t2.7
	++ @55 /* This adventure has required some adjustments from all of us. */ + t2.8
	++ @56 /* I only hope that you're not getting in over your head. This isn't exactly a walk in the park. */ + t2.9
END

IF ~~ t2.6
 SAY @57 /* Our knights try to keep us out of mortal danger as much as possible, at least until they deem us ready for such challenges. */ 
IF ~~ + t2.10
END

IF ~~ t2.7
 SAY @58 /* I have never cared for tournaments, truth be told. They have their purposes, certainly, but war has never been a game to me. */
IF ~~ + t2.10
END

IF ~~ t2.8
 SAY @59 /* Aye, that much I do not doubt. As for myself... I am no thrill-seeker, I assure you. */
IF ~~ + t2.10
END

IF ~~ t2.9
 SAY @60 /* Aye, I am aware of that. I am no thrill-seeker, I assure you. */
IF ~~ + t2.10
END
 
IF ~~ t2.10
 SAY @61 /* It may well be that you have heard... rumors about my order; some detractors claim that the knights of the Ruby Rose have a tendency to... romanticize danger, as it were. */
 = @62 /* I cannot speak for the rest of my order, but know that for myself, at least, the criticism is largely unfounded; I do take matters very seriously. */
	++ @63 /* Until now, I didn't even know that Sune had paladins, truth be told. */ + t2.11
	++ @64 /* Romanticizing danger? So you're even worse than most paladins? */ + t2.12
	++ @65 /* Given how much time you spend on your hair every morning, you could've fooled me. */ + t2.13
	++ @66 /* If I don't have to deal with insane overconfidence, I'll be very happy. */ + t2.14
	++ @67 /* Relax, Isra. You really don't need to prove anything to me. */ + t2.15
END

IF ~~ t2.11
 SAY @68 /* We are fewer than those sworn to Torm or Tyr, 'tis true, but we do exist. We may value love and beauty over duty and justice, but we do recognize that such things cannot easily thrive in a society that is not strong and tolerant enough to protect them. */
 = @69 /* *laugh* By Sune, listen to me. I assure you, my <PRO_LADYLORD>, I am not normally this solemn. I spend altogether too much time with Sunites and Lliirans to be acting so grave. */ 
IF ~~ + t2.16 
END
 
IF ~~ t2.12
 SAY @70 /* ... I cannot tell if you jest, my <PRO_LADYLORD>. */
 = @71 /* I... *laugh* Truly, I should not make it so easy for you to tease me. I am not normally this solemn, I assure you. I spend altogether too much time with Sunites and Lliirans to be acting so grave. */ 
IF ~~ + t2.16 
END
 
IF ~~ t2.13
 SAY @72 /* Should I encourage the beauty that Sune has given the rest of the world and neglect that which she has granted me personally? 'Twould be... ungracious, to say the least. */
 = @73 /* I... *laugh* Truly, <CHARNAME>, I should not make it so easy for you to tease me. I am not normally this solemn, I assure you. I spend altogether too much time with Sunites and Lliirans to be acting so grave. */
IF ~~ + t2.16 
END
 
IF ~~ t2.14
 SAY @74 /* ... I am not sure what you would consider "insane", my <PRO_LADYLORD>, so I cannot comment one way or the other. */
 = @73 /* I... *laugh* Truly, <CHARNAME>, I should not make it so easy for you to tease me. I am not normally this solemn, I assure you. I spend altogether too much time with Sunites and Lliirans to be acting so grave. */
IF ~~ + t2.16 
END

IF ~~ t2.15
 SAY @75 /* I... suppose I am sounding somewhat defensive. I assure you, my <PRO_LADYLORD>, I am not normally this solemn. I spend altogether too much time with Sunites and Lliirans to be acting so grave. */ 
IF ~~ + t2.16 
END
 
IF ~~ t2.16 
 SAY @76 /* I have known you too long now to still be so formal, 'tis true, but... Crimmor is a long distance away, and I have never actually been outside of Amn before. This experience is... new for me in any number of ways. */
	++ @77 /* You hang out with Joybringers and Heartwarders? How do you find time for anything at all? */ + t2.17
	++ @78 /* Crimmor? The only Amnish city I know about is Athkatla. */ + t2.18
	+ ~!Class(Player1,PALADIN_ALL)~ + @79 /* A paladin with a sense of humor... this is pretty new for me too. */ + t2.19
	+ ~Class(Player1,PALADIN_ALL)~ + @80 /* It's gratifying to know that not all in our profession are as tiresome as they are grey. */ + t2.20
	++ @81 /* And you're nervous about reflecting poorly upon your order. Don't worry so much. I do understand. */ + t2.21
END
 
IF ~~ t2.17
 SAY @82 /* I hardly spend all of my time with them, no, but I try to attend my faith's gatherings whenever I am fortunate enough to be in Crimmor. */
 = @83 /* I would be happy to tell you more about it later, but for now... for now mayhap we should move on before I embarrass myself further. */
IF ~~ EXIT
END
 
IF ~~ t2.18
 SAY @84 /* Aye, the Firehair's faith is based in the Caravan Capital instead, and it seems to me that Crimmor is a better place because of it. */
 = @83 /* I would be happy to tell you more about it later, but for now... for now mayhap we should move on before I embarrass myself further. */
IF ~~ EXIT
END
 
IF ~~ t2.19
 SAY @85 /* ... A sense of humor I may have, but I would still ask you to behave with the appropriate courtesy. Mayhap we should simply move on. */
IF ~~ EXIT
END

IF ~~ t2.20
 SAY @86 /* *smile* No, I have never understood it myself. */
 = @87 /* I thank you for your compassion, <CHARNAME>, but mayhap we should move on before I embarrass myself further. */
IF ~~ EXIT
END

IF ~~ t2.21
 SAY @88 /* ... Aye. I thank you for your compassion, <CHARNAME>, but mayhap we should move on before I embarrass myself further. */
IF ~~ EXIT
END
END

// 3.
// --
CHAIN IF ~Global("rh#IsraTalksBG1","GLOBAL",6)~ THEN RH#ISRAJ t3
@89 /* I'm afraid my knowledge of Sword Coast geography isn't quite what it should be. These small towns seem to blend together all too quickly for me. */
= @90 /* Candlekeep is... somewhere to the west, is it not? */
DO ~IncrementGlobal("rh#IsraTalksBG1","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksBG1Timer","GLOBAL",2700)~
END
	++ @91 /* Indeed, just overlooking the Sea of Swords. */ + t3.1
	++ @92 /* Sometimes I think that if you tried to get back to Amn by yourself, you'd end up in Baldur's Gate instead. */ + t3.2
	++ @93 /* If you ask where Waterdeep and Calimshan are next, I'm going to start laughing. */ + t3.3
	++ @94 /* You know, I really thought that everyone knew that. */ + t3.4
	++ @95 /* It is, yes, but we don't have time to talk right now. */ + t1.5

APPEND RH#ISRAJ

IF ~~ t3.1
 SAY @96 /* Oh, yes. I do recall having once heard that. */
IF ~~ + t3.5
END

IF ~~ t3.2
 SAY @97 /* *laugh* My sense of direction is not quite so bad as that, my <PRO_LADYLORD>. At least, I certainly hope it isn't. */
IF ~~ + t3.5
END

IF ~~ t3.3
 SAY @98 /* *laugh* I am not quite so hopeless as that, my <PRO_LADYLORD>. */
IF ~~ + t3.5
END

IF ~~ t3.4
 SAY @99 /* Candlekeep is not overly well-known, I don't think. At least, I certainly hope it isn't now. */
IF ~~ + t3.5
END

IF ~~ t3.5
 SAY @100 /* But mayhap I didn't pay my tutors enough attention as a child. I had an... unfortunate tendency to spend my lessons drawing pictures of knights and banners into the margins of my books, I must admit. Please don't laugh; all children can be foolish at times. */
 = @101 /* And my tutors' efforts were not entirely unavailing. Candlekeep is attended by monks of Oghma, as I recall. */
	++ @102 /* And other scholarly sorts, yes. */ + t3.6
	++ @103 /* By the gods, Isra, is religion the only thing you ever think about? */ + t3.7
	++ @104 /* With tutors like that, I'd never have gotten away with doodling pictures in my own books. */ + t3.8
	++ @105 /* To know that but not to know where Candlekeep even is, you must have some very oddly shaped holes in your education. */ + t3.9
END

IF ~~ t3.6
 SAY @106 /* I see. I hope that you were wise enough to take advantage of that. */
IF ~~ + t3.10
END

IF ~~ t3.7
 SAY @107 /* Not at all, though I certainly remember such things very easily. */
IF ~~ + t3.10
END

IF ~~ t3.8
 SAY @108 /* I was broken of the habit relatively quickly myself, truth be told. */
IF ~~ + t3.10
END

IF ~~ t3.9
 SAY @109 /* I'm afraid I had no head for geography until I was a teenager, and my education had taken a considerably different path by that point anyway. */
IF ~~ + t3.10
END

IF ~~ t3.10
 SAY @110 /* Candlekeep. Hmm. Forgive me for being so forward, my <PRO_LADYLORD>, but I'm having a somewhat difficult time picturing you surrounded by Oghmanytes. You seem somewhat too... engaged, I would say, though mayhap I'm simply being unfair to them. */
	++ @111 /* I suppose I'm not quite as pensive as might be expected. */ + t3.11
	++ @112 /* It's not as if there wasn't anybody else in Candlekeep. */ + t3.12
	++ @113 /* Very unfair. They hardly sat around meditating *all* day. */ + t3.12
	++ @114 /* Recent experiences have... changed me somewhat, I think. */ + t3.13
	++ @115 /* Well, it's just as hard for me to imagine you as some noble's spoiled brat, surrounded by tutors. */ + t3.14
END

IF ~~ t3.11
 SAY @116 /* 'Tis for the best, I think. */
IF ~~ + t3.15
END

IF ~~ t3.12
 SAY @117 /* *laugh* No, I should certainly hope not. */
IF ~~ + t3.15
END

IF ~~ t3.13
 SAY @118 /* I do not doubt it. */
IF ~~ + t3.15
END

IF ~~ t3.14
 SAY @119 /* *laugh* I was somewhat... wilder as a child, I must admit. */
IF ~~ + t3.15
END

IF ~~ t3.15
 SAY @120 /* But I sound naive, I'm sure. I'm afraid a quiet childhood is something quite outside of my experience. Crimmor has always been rather active, and my own home city of Eshpurta, is... unique, certainly, but extremely busy. */
 	++ @121 /* Eshpurta? Where's that? */ + t3.16
 	++ @122 /* You're not originally from Crimmor? */ + t3.17
 	++ @123 /* Unique? How so? */ + t3.18
 	++ @124 /* Be that as it may, I have no interest in the past. */ + t3.19
END

IF ~~  t3.16
 SAY @125 /* In northeastern Amn, just south of the Snakewood. The Shield City, we call it, and for good reason. We're ruled by business as much as any other city in Amn, but the business of Eshpurta is war. */
IF ~~ + t3.20
END

IF ~~  t3.17
 SAY @126 /* I have family there, yes, but I'm originally from Eshpurta. The Shield City, we call it, and for good reason. We're ruled by business as much as any other city in Amn, but the business of Eshpurta is war. */
IF ~~ + t3.20
END

IF ~~  t3.18
 SAY @127 /* The Shield City is... very martial I'm afraid. We're ruled by business as much as any other city in Amn, but the business of Eshpurta is war. */
IF ~~ + t3.20
END

IF ~~  t3.19
 SAY @128 /* As you would have it. */
IF ~~ EXIT
END

IF ~~ t3.20
 SAY @129 /* My family always lived in the southern quadrant with the artists and musicians -- mother refused to surround herself with soldiers, even though she had married one -- but truly, 'tis the military that is the lifeblood of the city, as much as I might wish it were otherwise. */
	++ @130 /* The Amnish armies aren't centered in Athkatla? */ + t3.21
	++ @131 /* And yet you certainly still embrace the concept of combat yourself. */ + t3.22
	++ @132 /* Your father is with the Amnish army? */ + t3.23
	++ @133 /* I can't imagine the Firehair's faith being too popular there. */ + t3.24
	++ @134 /* You mean you didn't grow up romanticizing warfare instead? */ + t3.25
END

IF ~~ t3.21
 SAY @135 /* No, my <PRO_LADYLORD>, they are not. Amn is not the most peaceful of nations, and I doubt that even Athkatla could hold the entirety of its armed forces. A large fraction is harbored in Eshpurta, however. */
IF ~~ + t3.26
END

IF ~~ t3.22
 SAY @136 /* Aye, my <PRO_LADYLORD>. I am well aware of that. */
IF ~~ + t3.26
END

IF ~~ t3.23
 SAY @137 /* Aye, my <PRO_LADYLORD>. He was a general once, though he has since retired and now serves as a strategic advisor. */
IF ~~ + t3.26
END

IF ~~ t3.24
 SAY @138 /* No, my <PRO_LADYLORD>, it is not. Tempus and Ilmater are our major gods... war and suffering, an appropriate enough combination. */
IF ~~ + t3.26
END

IF ~~ t3.25
 SAY @139 /* There were moments when I did, I admit, but largely... no, my <PRO_LADYLORD>. I am not so foolish as that. */
IF ~~ + t3.26
END

IF ~~ t3.26
 SAY @140 /* Growing up in the Shield City... mayhap it should come as no surprise that I am who I am now. I learned very quickly that pacifism isn't an option, and that suffering isn't some nameless evil that happens to other people. */
 = @141 /* But I've also seen how quickly communities can draw together in a crisis, so there may yet be some small hope in that. */ 
	++ @142 /* Perhaps there is. */ + t3.27
	++ @143 /* That's a better lesson than most to take from a military city. */ + t3.28
	++ @144 /* Love even in the face of tragedy... is that why you're a Sunite? */ + t3.29
	++ @145 /* Funny, how life doesn't always teach us exactly the lessons we might expect. */ + t3.30
	++ @146 /* I wish I lived in your fantasy land. All I ever see in a crisis is people tearing each other apart. */ + t3.31
END

IF ~~ t3.27
 SAY @147 /* Your optimism is encouraging, <CHARNAME>. */ 
IF ~~ + t3.32
END

IF ~~ t3.28
 SAY @148 /* I do not disagree, <CHARNAME>. */
IF ~~ + t3.32
END

IF ~~ t3.29
 SAY @149 /* *smile* There are many reasons why I worship the Lady Firehair, but yes, that is one of them. */
IF ~~ + t3.32
END

IF ~~ t3.30
 SAY @150 /* I suppose there is some truth to that. */
IF ~~ + t3.32
END

IF ~~ t3.31
 SAY @151 /* I shan't deny that the world we have is uglier by far than the one I would prefer, but the power to change that lies squarely in our own hands. */
IF ~~ + t3.32
END

IF ~~ t3.32
 SAY @152 /* But we're both rather far away from home now, both in time and distance, and likely to become even more so before this journey is over. We shouldn't delay our tasks any longer, my <PRO_LADYLORD>. */
IF ~~ EXIT
END
END

// 4.
// --
CHAIN IF ~Global("rh#IsraTalksBG1","GLOBAL",8)~ THEN RH#ISRAJ t4
@153 /* <CHARNAME>, I... wanted to offer you my condolences on the loss of your foster father. From what little I have heard of him, it sounds like he was a truly great man. */
DO ~IncrementGlobal("rh#IsraTalksBG1","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksBG1Timer","GLOBAL",2700)~
END
	++ @154 /* He was. He was probably the greatest I've ever known. */ + t4.1
	++ @155 /* Don't be sorry. We were never that close. */ + t4.2
	++ @156 /* Thank you. I... I still can't believe it happened. */ + t4.3
	++ @157 /* A great man, maybe. Not necessarily a great father, though. */ + t4.2 
	++ @158 /* I don't want to talk about him. Or anything, right now. */ + t4.4

APPEND RH#ISRAJ

IF ~~ t4.1
 SAY @159 /* I do not doubt it. Men of that caliber... they are rare indeed, my <PRO_LADYLORD>. Truly, it gladdens me at least to know that your relationship was so close. */
IF ~~ + t4.5
END

IF ~~ t4.2
 SAY @160 /* Even so, family is family, adopted or otherwise, and it troubles me to know that your relationship was strained. We have too little time in each other's company as it is, and the memories that must sustain us thereafter... 'twould be better by far if they were pleasant. */
 = @161 /* If you could not find it in your heart to love him before, mayhap you should take it upon yourself now to remember the good rather than the bad, my <PRO_LADYLORD>. I should hate to see you consumed by bitterness. */
	++ @162 /* I do try, but he wasn't always an easy man to love. */ + t4.6
	++ @163 /* I do tend to think more fondly of him now than I used to. */ + t4.7
	++ @164 /* Bitterness? Guilt, more like. Gorion died for me. */ + t4.8
	++ @165 /* You don't need to tell me how to live my life, Isra. */ + t4.9
END

IF ~~ t4.3
 SAY @166 /* Truly, my <PRO_LADYLORD>, I cannot imagine what it must be like to continue on without him, but it gladdens me at least to know that your relationship was so close. */
IF ~~ + t4.5
END 
 
IF ~~ t4.4
 SAY @167 /* Of course. I shall leave you be. */ 
IF ~~ EXIT
END

IF ~~ t4.5
 SAY @168 /* We have too little time in each other's company as it is, and the memories that must sustain us thereafter... 'twould be better by far if they were pleasant. */
	++ @169 /* Not all of my memories are wonderful, but those that are... they're definitely worth the heartache. */ + t4.7
	++ @170 /* Pleasant? He died for me. The guilt can be... unbearable. */ + t4.8
	++ @165 /* You don't need to tell me how to live my life, Isra. */ + t4.9
	++ @171 /* It's strange, but sometimes I feel like he hasn't quite left me. */ + t4.10
END

IF ~~ t4.6
 SAY @172 /* I am sorry to hear it. */
IF ~~ + t4.11
END

IF ~~ t4.7
 SAY @173 /* That is encouraging. */
IF ~~ + t4.11
END

IF ~~ t4.8
 SAY @174 /* That was his choice to make, <CHARNAME>, and if I may be so bold, I do not believe it was the wrong one. Live your life in a way that honors the sacrifice he made, but do not blame yourself for it. */
IF ~~ + t4.11
END

IF ~~ t4.9
 SAY @175 /* My apologies, <CHARNAME>. I did not mean to overstep myself. */
IF ~~ + t4.11
END

IF ~~ t4.10
 SAY @176 /* I have heard that such can be a fairly normal sensation... if it brings you comfort, then I shall find no fault in it. */
IF ~~ + t4.11
END

IF ~~ t4.11
 SAY @177 /* Your thoughts concerning Gorion are none of my concern, I know, and I have no right to pry into them. Forgive me my lack of manners; 'tis likely that I am simply dissatisfied with myself. */
 = @178 /* My own father and I are... not on the best of terms at present, loath as I am to admit it. */
	++ @179 /* Is it anything you want to talk about? */ + t4.12
	++ @180 /* That's terribly tragic. Can we go now? */ + t4.13
	++ @181 /* Hah! All this talk of love and family ties, and you really are just a hypocrite. */ + t4.14
	++ @182 /* Don't apologize. I appreciate the opportunity to talk about Gorion. What's going on with you? */ + t4.12
END
 
IF ~~ t4.12
 SAY @183 /* It isn't one single thing, regrettably. 'Twould be more easily untangled if it were. We were close once, but we have since come to disagree on far too many issues, some trivial, others... decidedly not. */
 = @184 /* He was initially pleased to sponsor my squiredom with the Ruby Rose, but now I think he would rather he had not. He will not say as much, of course. Mayhap our relationship would be better if either of us were willing to speak of it. I cannot say for certain. */
	++ @185 /* You're both too proud, I assume? */ + t4.15
	++ @186 /* Why do you think he changed his mind? */ + t4.16
	++ @187 /* At least you don't sound like you hate each other. */ + t4.17
	++ @188 /* He's still alive, at least. You can still fix things. */ + t4.18
END

IF ~~ t4.13
 SAY @189 /* Aye, as you wish. */
IF ~~ EXIT
END

IF ~~ t4.14
 SAY @190 /* ... Aye. Mayhap I am. */
IF ~~ EXIT
END

IF ~~ t4.15
 SAY @191 /* That may well be part of it, though some of our differences are... irreconcilable, at present. */ 
IF ~~ + t4.19
END

IF ~~ t4.16
 SAY @192 /* Because it changed me in ways he does not entirely appreciate. */
IF ~~ + t4.19
END

IF ~~ t4.17
 SAY @193 /* Sune forbid it! Frustration and mutual disappointment, yes, but never hate. */
IF ~~ + t4.19
END

IF ~~ t4.18
 SAY @194 /* Yes, and I am grateful for that much, though some of our differences are... irreconcilable, at present. */ 
IF ~~ + t4.19
END

IF ~~ t4.19 
 SAY @195 /* Our ancestors were from Calimshan, and there are certain obligations that Calishites owe to their families... obligations that I could not in good conscience fulfill without abandoning those I hold more dearly. */
 = @196 /* 'Tis a common problem, and if I never experience it in a graver matter, I shall consider myself fortunate. But when the bonds between people falter and fray... I find it very tragic, my <PRO_LADYLORD>. Particularly when it cannot be helped. */
	++ @197 /* Maybe instead of making excuses, you should just try harder. */ + t4.20
	++ @198 /* People do grow apart eventually. That's simply part of living. */ + t4.21
	++ @199 /* Really, I think it's easier to just not care at all. */ + t4.22
	+ ~!Class(Player1,PALADIN_ALL)~ + @200 /* You paladin types always make things harder than they have to be. */ + t4.23
	+ ~Class(Player1,PALADIN_ALL)~ + @201 /* We all have to make difficult sacrifices at times. */ + t4.24
	++ @202 /* Sometimes you just need to learn to bend a little. */ + t4.25
END

IF ~~ t4.20
 SAY @203 /* Very pointed advice, <CHARNAME>. But you may well be right. I shall have to think on that. */
IF ~~ EXIT
END

IF ~~ t4.21
 SAY @204 /* Mayhap, though I do not care for so hopeless an outlook. But we have spent enough time discussing it, and should return to our task. */ 
IF ~~ EXIT
END

IF ~~ t4.22
 SAY @205 /* I do not think that you truly believe that, <CHARNAME>, but I cannot force you to say otherwise. Mayhap we should return to our task. */
IF ~~ EXIT
END

IF ~~ t4.23
 SAY @206 /* Would you rather we compromise ourselves until there is nothing left at all? No, <CHARNAME>, there is no sense in that. But mayhap we should return to our task. */
IF ~~ EXIT
END

IF ~~ t4.24
 SAY @207 /* Aye, mayhap you are right. But we have spent enough time discussing it, and should return to our task. */
IF ~~ EXIT
END

IF ~~ t4.25
 SAY @208 /* Until you find that you have become something unrecognizable? No, <CHARNAME>, there is no sense in that. But mayhap we should return to our task. */ 
IF ~~ EXIT
END
END

// 5. morning in an inn
// --------------------
CHAIN IF ~Global("rh#IsraTalksBG1","GLOBAL",10)~ THEN RH#ISRAJ t5
@209 /* Good morrow, my <PRO_LADYLORD>. I'm afraid the water has gone rather cold now, but should you wish to bathe, I could certainly look into having it heated again. */
DO ~IncrementGlobal("rh#IsraTalksBG1","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksBG1Timer","GLOBAL",2700)~
END
	++ @210 /* That depends. Is it going to smell like roses and lilacs again? */ + t5.1
	++ @211 /* That was a rather pointed suggestion. */ + t5.2
	+ ~!Global("P#BranwenRomanceActive","GLOBAL",2) !Global("X#DynaheirRomanceActive","GLOBAL",2) !Global("B!GavinRomanceActive","GLOBAL",2)  !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#XARomanceActive","GLOBAL",2) OR(2) !GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoranRomanceInactive","GLOBAL",1)~ + @212 /* You wouldn't be at all interested in joining me, would you? */ + t5.3
	+ ~OR(5) Global("P#BranwenRomanceActive","GLOBAL",2) Global("X#DynaheirRomanceActive","GLOBAL",2) Global("B!GavinRomanceActive","GLOBAL",2)  Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#XARomanceActive","GLOBAL",2)~ + @212 /* You wouldn't be at all interested in joining me, would you? */ + t5.3a
	+ ~GlobalGT("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1)~ + @212 /* You wouldn't be at all interested in joining me, would you? */ + t5.3a	
	++ @213 /* How early do you get up anyway? */ + t5.4

APPEND RH#ISRAJ

IF ~~ t5.1
 SAY @214 /* *laugh* I'm afraid so. */
IF ~~ + t5.5  
END 
 
IF ~~ t5.2
 SAY @215 /* *smile* Yes, I suppose it was. */
IF ~~ + t5.5  
END

IF ~~ t5.3
 SAY @216 /* *laugh* I must decline, <CHARNAME>. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1)~ + t5.5  
END

IF ~~ t5.3a
 SAY @217 /* Given your current attachments, that would be highly inappropriate. Excuse me. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1)~ EXIT  
END
 
IF ~~ t5.4
 SAY @218 /* Very. I have always preferred mornings... even if our schedule could do with being slightly more regular. */
IF ~~ + t5.5  
END

IF ~~ t5.5 
 SAY @219 /* Have you broken your fast yet? I'll need to see to my prayers shortly, of course, but I could spare several moments if you'd care for the company. */
 	++ @220 /* I haven't, no. I would appreciate that. */ + t5.6
 	++ @221 /* I don't know. I'd hate to come between you and your goddess. */ + t5.7
 	++ @222 /* I have, actually, but I've a few minutes to spare myself. */ + t5.8
 	++ @223 /* I'm really not in the mood for this, Isra. */ + t5.9
END

IF ~~ t5.6
 SAY @224 /* Wonderful. The food in this tavern is... somewhat better than it was last night, I think you'll find. Or mayhap I was simply more awake to enjoy it. */
IF ~~ + t5.10 
END

IF ~~ t5.7
 SAY @225 /* I assure you, my <PRO_LADYLORD>, there is no chance of that. She would be more displeased with me if I refused you the companionship, I'm sure. */
IF ~~ + t5.10 
END

IF ~~ t5.8
 SAY @226 /* Wonderful. I hope you found the tavern's food to your liking. It did seem... somewhat better than it was last night. Or mayhap I was simply more awake to enjoy it. */
IF ~~ + t5.10 
END

IF ~~ t5.9
 SAY @227 /* Very well. I shall leave you be. */
IF ~~ EXIT
END

IF ~~ t5.10 
 SAY @228 /* But really, we ought spend more evenings in inns, I think. The facilities are always a welcome surprise after so many evenings in the wilderness, and the guests are often quite pleasant. */
 = @229 /* Speaking of which, did you have a chance to watch that Waterdhavian bard's performance last night, my <PRO_LADYLORD>? I retired too early, I'm afraid, but he was certainly pleasant company this morning. */
	++ @230 /* Well, I'd have to say that you missed a memorable performance. */ + t5.11
	++ @231 /* Pleasant company? You... didn't sleep with him or anything, did you? */ + t5.12
	++ @232 /* The more nights we spend in inns, the more we make ourselves stationary targets. */ + t5.13
	++ @233 /* By the gods, Isra. Are you really required to befriend everyone you ever meet? */ + t5.14
END

IF ~~ t5.11
 SAY @234 /* That is a pity. */
IF ~~ + t5.15
END

IF ~~ t5.12
 SAY @235 /* ... No, I did not, though 'twould be little concern of yours if I had. */ 
 = @236 /* Forgive me my short temper, <CHARNAME>. I am not permitted to lie, and I do not appreciate questions where silence would be answer enough. Perhaps you should see to your bath now. */
IF ~~ EXIT
END

IF ~~ t5.13
 SAY @237 /* ... Yes, I suppose there is some truth to that. */
IF ~~ + t5.15
END

IF ~~ t5.14
 SAY @238 /* *laugh* That would be impossible, I should think, though you cannot fault me for trying. */
IF ~~ + t5.15
END

IF ~~ t5.15 
 SAY @239 /* Truly, sometimes I fear that we don't appreciate moments like this enough. We spend so much time fighting, 'tis all too easy to forget what exactly we are fighting for. */
	++ @240 /* There's a fine line between appreciation and idleness. */ + t5.16
	++ @241 /* I don't know about you, but I seem to be fighting for my life. */ + t5.17
	++ @242 /* I appreciate it more than you might realize, my lady. */ + t5.18
	++ @243 /* You mean we need reasons? */ + t5.19
END

IF ~~ t5.16
 SAY @244 /* Aye, and one I hope never to cross. */
IF ~~ + t5.20
END

IF ~~ t5.17
 SAY @245 /* Aye, and considerably more than that, if I am not very much mistaken. */
IF ~~ + t5.20
END

IF ~~ t5.18
 SAY @246 /* *smile* I am glad to hear it. */
IF ~~ + t5.20
END

IF ~~ t5.19
 SAY @247 /* ... You jest, I am sure. */
IF ~~ + t5.20
END

IF ~~ t5.20
 SAY @248 /* But 'tis growing late now, and were I to postpone my prayers any longer, I couldn't say when we would be able to begin the day. Mayhap you should see to your bath, my <PRO_LADYLORD>. */
IF ~~ EXIT
END
END

// 6.
// --
CHAIN IF ~Global("rh#IsraTalksBG1","GLOBAL",12)~ THEN RH#ISRAJ t6
@249 /* I must confess, my <PRO_LADYLORD>, I know that you were forced into this life, but I cannot imagine you doing anything else. */
= @250 /* Would you have rather preferred a simpler existence instead? */
DO ~IncrementGlobal("rh#IsraTalksBG1","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksBG1Timer","GLOBAL",2700)~
END
	++ @251 /* I've never thought of it. I've gotten used to the one I have. */ + t6.1
	++ @252 /* Certainly not. I spent my life in Candlekeep preparing for the moment I could leave. */ + t6.2
	++ @253 /* Definitely. My plans never used to involve traipsing through dungeons. */ + t6.3
	++ @254 /* I try not to question what might have been. Nothing good can come of such thoughts. */ + t6.4
	++ @255 /* Maybe, but this isn't the time or place to discuss it. */ + t1.5

APPEND RH#ISRAJ

IF ~~ t6.1
 SAY @256 /* You certainly have. Truly, <CHARNAME>, had I not known how recently you had left Candlekeep, I would never have guessed that you were so new to this lifestyle. */
IF ~!Class(Player1,PALADIN_ALL)~ + t6.5
IF ~Class(Player1,PALADIN_ALL)~ + t6.6
END

IF ~~ t6.2
 SAY @257 /* I cannot say that that surprises me. Truly, <CHARNAME>, had I not known how recently you had left Candlekeep, I would never have guessed that you were so new to this lifestyle. */
IF ~!Class(Player1,PALADIN_ALL)~ + t6.5
IF ~Class(Player1,PALADIN_ALL)~ + t6.6
END

IF ~~ t6.3
 SAY @258 /* *laugh* If you still feel that way, <CHARNAME>, you conceal it very well indeed. Truly, this lifestyle suits you more than I think you realize. */ 
IF ~!Class(Player1,PALADIN_ALL)~ + t6.5
IF ~Class(Player1,PALADIN_ALL)~ + t6.6
END

IF ~~ t6.4
 SAY @259 /* Mayhap there is some truth to that. But despite whatever strain you may be feeling, <CHARNAME>, truly, I think this lifestyle suits you more than perhaps you realize. */
IF ~!Class(Player1,PALADIN_ALL)~ + t6.5
IF ~Class(Player1,PALADIN_ALL)~ + t6.6
END

IF ~~ t6.5
 SAY @260 /* Please do not take this as condescension, but you have adapted... remarkably well, remarkably quickly. So much so that at times I wonder if you might not have been called to this life yourself. I am sure that this sounds like so much mystical nonsense to you, but to be quite as capable as you are... */
IF ~~ + t6.7
END

IF ~~ t6.6
 SAY @261 /* Please do not take this as condescension, but you have adapted... remarkably well, remarkably quickly. That should not surprise me, I know. This was no doubt a calling for you as much as it was for any of us, but you were still trained outside of any of the orders. To be quite as capable as you are... */
IF ~~ + t6.7
END

IF ~~ t6.7
 SAY @262 /* My <PRO_LADYLORD>, was there ever a moment when you simply knew that your life would take such a different track? */
	++ @263 /* I've always known that I was going to make something of myself. */ + t6.8
	++ @264 /* Well, Gorion's death sure made it pretty obvious. */ + t6.9
	++ @265 /* I never knew for sure, but I certainly always hoped. */ + t6.10
	++ @266 /* Anyone's life could take a different track, given the right motivators. */ + t6.11
	++ @267 /* I actually don't plan on continuing adventuring at all after we get to the bottom of this. */ + t6.12
END

IF ~~ t6.8
 SAY @268 /* No, you certainly do not lack for ambition. */
IF ~~ + t6.13
END

IF ~~ t6.9
 SAY @269 /* ... My apologies. That was... poorly worded on my part. */
IF ~~ + t6.13
END

IF ~~ t6.10
 SAY @270 /* And not in vain, 'twould seem. */
IF ~~ + t6.13
END

IF ~~ t6.11
 SAY @271 /* Aye. Why some encounter those motivators and others don't, however... */
IF ~~ + t6.13
END

IF ~~ t6.12
 SAY @272 /* I see. 'Twould be a great loss, I think, but that is your choice to make. */
IF ~~ + t6.13
END

IF ~~ t6.13
 SAY @273 /* Forgive me my curiosity, <CHARNAME>, but I do sometimes wonder at the forces that drive other people into this life. I've spent so much time with the knights of the Ruby Rose as of late, and our stories tend to be... quite similar. */
 = @274 /* 'Tis often said that becoming a paladin is a matter largely of destiny, that it is a calling rather than a choice. Many people discount such talk as romantic, self-righteous nonsense, of course, but the calling itself is... a very real thing. For me, at least. */
	++ @275 /* How so? */ + t6.14
	+ ~Class(Player1,PALADIN_ALL)~ + @276 /* And for me as well. When did you know? */ + t6.15
	+ ~Class(Player1,PALADIN_ALL)~ + @277 /* I never experienced anything like that myself. How would you describe it? */ + t6.16
	+ ~!Class(Player1,PALADIN_ALL)~ + @278 /* Complete with the compulsory divine visions, no doubt. */ + t6.17
	+ ~!Class(Player1,PALADIN_ALL)~ + @279 /* Don't you people ever get tired of thinking you're better than everyone else? */ + t6.18
	++ @280 /* We're all inclined to think that our own experiences are in some manner unique. */ + t6.19
	++ @281 /* We don't have time for a story right now. */ + t1.5
END

IF ~~ t6.14
 SAY @282 /* 'Tis a long story, and I was only seven years old at the time... young enough that I could not really say how true my memory of it still is. */
 = @283 /* That was 1356, the year that Dragonspear Castle was finally purged... at least for a while. I am sure you have heard of it; the castle was infamous for its open portals to the Nine Hells. */
IF ~~ + t6.20
END

IF ~~ t6.15
 SAY @284 /* For certain? When I was a child of seven years, as strange at that might seem. */
 = @285 /* That was 1356, the year that Dragonspear Castle was finally purged... at least for a time. I am sure you have heard of it; the castle was infamous for its open portals to the Nine Hells. */
IF ~~ + t6.20
END

IF ~~ t6.16
 SAY @286 /* 'Tis possible that you simply did not recognize it as such, my <PRO_LADYLORD>, or mayhap you were never first pushed down a different path. As for how I would describe it... I was only seven years old at the time, so I could not really say how true my memory still is. */
 = @285 /* That was 1356, the year that Dragonspear Castle was finally purged... at least for a time. I am sure you have heard of it; the castle was infamous for its open portals to the Nine Hells. */
IF ~~ + t6.20
END

IF ~~ t6.17
 SAY @287 /* *laugh* No, my <PRO_LADYLORD>, nothing quite so obvious, though one might say that devils were involved. */
 = @288 /* I was only seven years old when I knew for certain. That was 1356, the year that Dragonspear Castle was finally purged... at least for a while. I am sure you have heard of it; the castle was infamous for its open portals to the Nine Hells, and the Baatezu that would issue forth at times. */
IF ~~ + t6.20
END

IF ~~ t6.18
 SAY @289 /* ... I apologize if I have offended you in some way, my <PRO_LADYLORD>. Mayhap we should simply continue on. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceCheck","GLOBAL",2)~ EXIT
END

IF ~~ t6.19
 SAY @290 /* Mayhap, though I am not entirely convinced. I look at my sisters, both of whom chose... other lives, and I cannot help but wonder where exactly it was that our paths diverged so. */
 = @291 /* I was only seven years old when I knew for certain. That was 1356, the year that Dragonspear Castle was finally purged... at least for a time. I am sure you have heard of it; the castle was infamous for its open portals to the Nine Hells. */
IF ~~ + t6.20
END

IF ~~ t6.20
 SAY @292 /* Seldom are Faerun's nations and city-states willing to work together, but to cleanse the old ruins, they made an exception. Baldur's Gate, Waterdeep... and Amn as well, I am proud to say. 'Twas my father's last serious campaign as a commanding general, and when he and his army marched home in victory-- */
 = @293 /* I normally see no beauty in warfare, but that day... that day I saw little else. You have likely never seen a victory parade before, so I can only say that the euphoria is... indescribable. All of Eshpurta was a-flush with celebration. All of Amn, mayhap, and likely of the Western Heartlands as well. Truly, my <PRO_LADYLORD>, 'twas more akin to a scene from a fairy-tale than to reality. */
 = @294 /* My father had spent much of my early childhood campaigning, so I barely knew him at all, but in that moment... in that moment, I wanted to *be* him, <CHARNAME>. To be the center of that whirlwind of passionate celebration. 'Twas considered most unseemly for a girl of my age, of course, and everyone expected the infatuation to pass soon enough. */
	++ @295 /* You? Grow bored of something? As if that would ever happen. */ + t6.21
	++ @296 /* I take it that Amnish nobles don't like their daughters playing at war. */ + t6.22
	++ @297 /* I'd have expected that calling to be more spiritual in nature. */ + t6.23
	++ @298 /* Even for you, Isra, that's more than a bit vain. */ + t6.24
	++ @299 /* Fascinating as this is, we don't have time for a story. */ + t1.5
END

IF ~~ t6.21
 SAY @300 /* *laugh* They had reason to expect as much, my <PRO_LADYLORD>. */ 
IF ~~ + t6.25
END

IF ~~ t6.22
 SAY @301 /* No, not as such. Father understood it eventually, at least for a while, but at first... truly, they had reason to expect me to grow tired of it. */
IF ~~ + t6.25
END

IF ~~ t6.23
 SAY @302 /* *laugh* I am not altogether convinced that it wasn't. A deity's summons can be overwhelming and confusing for a child. Whatever it was, however, it... changed me in noticeable ways. */
IF ~~ + t6.25
END

IF ~~ t6.24
 SAY @303 /* *laugh* I was a child, my <PRO_LADYLORD>. Most children tend towards self-indulgence... though I will admit, I have never been able to dislodge the memory, and I am not entirely sure if I should care for some of the ways in which it has shaped me. */
IF ~~ + t6.25
END

IF ~~ t6.25
 SAY @304 /* I've been told that until that point, I had been a very... capricious child, given to picking up and abandoning hobbies with little warning or reason. My tutors considered me a menace, and everyone simply assumed that it would not be long before I grew bored of this newest fascination as well. */ 
 = @305 /* *laugh* Obviously, I never did. The first flush of obsession passed, of course, and my father eventually managed to teach me discipline. Why things played out quite like that... I could not say for certain. Mayhap my destiny truly was tied so tightly to this path that none other could ever have hoped to hold my attention for long. */
 = @306 /*  I have spoken with others since moving to Crimmor, and my story is far from unique. Of course, I do not know whether what is true for Sunites holds true for other faiths as well. */ 
	++ @307 /* That sounds more like madness than destiny, really. */ + t6.26
	++ @308 /* Do you really like the idea that you could never have happily done anything else? */ + t6.27
	++ @309 /* I still think there's an element of that in any calling, not just yours. */ + t6.28
	++ @310 /* I imagine that paladins of other faiths would be less likely to first hear their call amidst revelry and celebration. */ + t6.29
END
 
IF ~~ t6.26
 SAY @311 /* Madness would have been to refuse it, I think. */
IF ~~ + t6.30
END

IF ~~ t6.27
 SAY @312 /* It troubles me little. Sometimes I think that striving against the will of the gods is the only certain path to misery that there is. For anyone, not simply for me. */
IF ~~ + t6.30
END
 
IF ~~ t6.28
 SAY @313 /* I imagine that there may well be. */
IF ~~ + t6.30
END
 
IF ~~ t6.29
 SAY @314 /* *laugh* You clearly have never had the pleasure of meeting a member of the Harmonious Order, though I will otherwise concede you the point. */ 
IF ~~ + t6.30
END

IF ~~ t6.30
 SAY @315 /* Forgive me my nostalgia, my <PRO_LADYLORD>. You must be growing tired of listening to my maundering tale. */
	++ @316 /* On the contrary, I was quite enjoying the story. */ + t6.31
	+ ~Global("rh#IsraRomanceCheck","GLOBAL",1)~ + @317 /* I never grow tired of listening to your voice, Isra. */ + t6.32
	+ ~!Global("rh#IsraRomanceCheck","GLOBAL",1)~ + @317 /* I never grow tired of listening to your voice, Isra. */ + t6.33
	++ @318 /* It was a bit less flashy than I was expecting. */ + t6.34
	++ @319 /* Well, yes, we probably should be moving on now. */ + t6.35
END
 
IF ~~ t6.31
 SAY @320 /* Then I'm glad to hear it. */
 = @321 /* Regardless, we've spent more than enough time speaking as it is. Mayhap we should consider moving on now. */
IF ~~ EXIT
END

IF ~~ t6.32
 SAY @322 /* *smile* You are altogether too charming sometimes, <CHARNAME>. */
 = @321 /* Regardless, we've spent more than enough time speaking as it is. Mayhap we should consider moving on now. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1)~ EXIT
END

IF ~~ t6.33
 SAY @323 /* *laugh* Nor do I, apparently. */
 = @321 /* Regardless, we've spent more than enough time speaking as it is. Mayhap we should consider moving on now. */
IF ~~ EXIT
END

IF ~~ t6.34
 SAY @324 /* *laugh* Such is reality, I'm afraid. */
 = @321 /* Regardless, we've spent more than enough time speaking as it is. Mayhap we should consider moving on now. */
IF ~~ EXIT
END

IF ~~ t6.35
 SAY @325 /* Yes, I'm inclined to agree. */
IF ~~ EXIT
END
END

// 7.
// --
CHAIN IF ~Global("rh#IsraTalksBG1","GLOBAL",14)~ THEN RH#ISRAJ t7
@326 /* <CHARNAME>, do you ever find yourself missing Candlekeep? */
DO ~IncrementGlobal("rh#IsraTalksBG1","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksBG1Timer","GLOBAL",2700)~
END
	++ @327 /* Almost all of the time. */ + t7.1
	++ @328 /* Gods, no. I hope never to see those walls again. */ + t7.2
	+ ~OR(2) !InParty("%IMOEN_DV%") StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @329 /* Occasionally. Having to figure things out by myself can be trying. */ + t7.3
	+ ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @329 /* Occasionally. Having to figure things out by myself can be trying. */ + t7.4
	++ @330 /* Yes, though I miss the people more than the place. */ + t7.5

APPEND RH#ISRAJ

IF ~~ t7.1
 SAY @331 /* You hide it very well, my <PRO_LADYLORD>, but... yes, I had been wondering if that was so. */
IF ~~ + t7.6
END

IF ~~ t7.2
 SAY @332 /* Never, my <PRO_LADYLORD>? I find that difficult to believe. It may have been little more than a large library, but home is still home. */
IF ~~ + t7.6
END

IF ~~ t7.3
 SAY @333 /* You are hardly by yourself now, my <PRO_LADYLORD>, but... yes, there is no replacement for a familiar face. */
IF ~~ + t7.6
END

IF ~~ t7.4
 SAY @334 /* You are hardly by yourself now, my <PRO_LADYLORD>, but... yes, there is no replacement for a familiar face. At least you have Imoen. */
IF ~~ + t7.6
END

IF ~~ t7.5
 SAY @335 /* Sometimes I think it amounts to the same thing, my <PRO_LADYLORD>. */
IF ~~ + t7.6
END

IF ~~ t7.6
 SAY @336 /* Being prohibited from returning, at least for the moment... truly, Candlekeep might as well be as far away as Crimmor. 'Twould be startling indeed if that never wore on you at all. */
 	++ @337 /* For the most part, I actually enjoy being somewhere new every night. */ + t7.7
	++ @338 /* I don't understand why their stupid rules about entrance fees apply to me too. */ + t7.8
	++ @339 /* I do get tired of living out of inns from time to time. */ + t7.9
	++ @340 /* To be frank, it never actually felt like home even when I was living there. */ + t7.10
	++ @341 /* I try not to think about it, Isra. You're really not helping. */ + t7.11
END

IF ~~ t7.7
 SAY @342 /* *laugh* Aye, for the most part, though having a familiar place to relax even once a moon would not be amiss. */
IF ~~ + t7.12
END

IF ~~ t7.8
 SAY @343 /* Mayhap they are worried about setting undesirable precedents, though it does seem a rather... cold decision on their part. */
IF ~~ + t7.12
END

IF ~~ t7.9
 SAY @344 /* *laugh* Aye, though 'tis preferable by far to the nights we spend camping instead. */
IF ~~ + t7.12
END

IF ~~ t7.10
 SAY @345 /* That is most unfortunate. */
IF ~~ + t7.12
END

IF ~~ t7.11
 SAY @346 /* Of course. My apologies. */
IF ~~ EXIT
END

IF ~~ t7.12
 SAY @347 /* This itinerant lifestyle we lead... loath as I am to admit it, I still find that it wearies me from time to time. */
 = @348 /* It occurred to me that you might feel the same. */
	++ @349 /* Well, I don't. */ + t7.13
	++ @350 /* You mean you're homesick too? That makes me feel better, at least. */ + t7.14
	++ @351 /* But you're with a knightly order. Haven't you done lots of traveling? */ + t7.15
	++ @352 /* I thought that might have been where your questions were coming from. */ + t7.16
END

IF ~~ t7.13
 SAY @353 /* Yes, so it would seem. */
IF ~~ EXIT
END

IF ~~ t7.14
 SAY @354 /* *smile* So I see. Under other circumstances, I might miss Crimmor less, but... */
IF ~~ + t7.17
END

IF ~~ t7.15
 SAY @355 /* A fair amount, certainly, though we would always return to Crimmor afterwards. Under other circumstances, I might miss it less, but... */
IF ~~ + t7.17
END

IF ~~ t7.16
 SAY @356 /* Indeed. Under other circumstances, I might miss Crimmor less, but... */
IF ~~ + t7.17
END

IF ~~ t7.17
 SAY @357 /* Mostly I worry for Sir Evendur... the knight who is responsible for me, aye, and also a cousin of my mother's. I might have mentioned that he was... terribly injured shortly before I met you. */
 = @358 /* He was in poor spirits when last I saw him, and now... I could not say. I would write to him again, but I could glean little enough of his mood from his last letter, and I cannot see that changing. */
	++ @359 /* On the other hand, writing couldn't hurt at all, right? */ + t7.18
	++ @360 /* You've never actually said what happened to him. */ + t7.19
	++ @361 /* Your cousin, eh? I never knew that knights were so nepotistic. */ + t7.20
	++ @362 /* I'm sorry to hear it. */ + t7.21
END

IF ~~ t7.18
 SAY @363 /* No, you are right. I shall need to find the time for it. */
IF ~~ + t7.22
END

IF ~~ t7.19
 SAY @364 /* Knights of the Ruby Rose have a penchant for hunting dragons and other terrible creatures. We... do not always win. */
IF ~~ + t7.22
END

IF ~~ t7.20
 SAY @365 /* ... <CHARNAME>, I am in no mood for this. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceCheck","GLOBAL",2)~ EXIT
END

IF ~~ t7.21
 SAY @48 /* Thank you, <CHARNAME>. */
IF ~~ + t7.22
END

IF ~~ t7.22
 SAY @366 /* But forgive me. I certainly did not mean for this conversation to take such a somber turn. Mayhap I should put my mind to our quest instead. */
IF ~~ EXIT
END
END

// 8. Post-Cloakwood Forest
// ------------------------
CHAIN IF ~Global("rh#IsraTalksBG1Chapter5","GLOBAL",2)~ THEN RH#ISRAJ t8
@367 /* Would that the waters could wash away more than just the memory of that accursed place. That *fiend* and his vile operation-- */
= @368 /* Sune preserve me from from being overwhelmed by such... such bitter *hate*. */
DO ~SetGlobal("rh#IsraTalksBG1Chapter5","GLOBAL",3)
RealSetGlobalTimer("rh#IsraTalksBG1TimerChapter5","GLOBAL",5400)~
END
	++ @369 /* Calm down, Isra. It's over. We won. */ + t8.1
	++ @370 /* I know exactly how you feel. */ + t8.2
	++ @371 /* If you're about to start breathing fire, I'd kind of like a warning first. */ + t8.3
	++ @372 /* If you could get a hold of yourself, we really need to move on. */ + t8.4

APPEND RH#ISRAJ

IF ~~ t8.1
 SAY @373 /* And thank the gods for that. That *beast*-- */
IF ~~ + t8.5
END

IF ~~ t8.2
 SAY @374 /* If I could kill that beast again-- */
IF ~~ + t8.5
END

IF ~~ t8.3
 SAY @375 /* I... what? No, no... as much as I might have enjoyed that-- */
IF ~~ + t8.5
END

IF ~~ t8.4
 SAY @376 /* Aye, my <PRO_LADYLORD>, I... I shall certainly try. */
IF ~~ EXIT
END

IF ~~ t8.5
 SAY @377 /* No. Even Davaeorn's death, gratifying though it may be, won't return the years that he stole from his victims. They... I can only hope that they find the help that they will no doubt need. */
 = @378 /* As much as I should like to take the time to help them further, I would hesitate to turn from this trail even a moment now. */
	++ @379 /* Whatever help they need, they can no doubt get it from the Ilmatari. */ + t8.6
	++ @380 /* You weren't anywhere near this angry about Mulahey or Tazok. */ + t8.7
	++ @381 /* Indeed. I'm looking forward to some very sharp words with this Rieltar myself. */ + t8.8
	++ @382 /* I'm not sure I care for this holy vengeance spiel. */ + t8.9
END

IF ~~ t8.6
 SAY @383 /* Aye, that is certainly true. */
IF ~~ + t8.10
END

IF ~~ t8.7
 SAY @384 /* Mayhap I have grown angrier with each revelation, or mayhap the institutional *misery* here incenses me so. I could not say. */
IF ~~ + t8.10
END

IF ~~ t8.8
 SAY @385 /* Aye, and with whomever else is behind this atrocity as well. */
IF ~~ + t8.10
END

IF ~~ t8.9
 SAY @386 /* What else would you expect in the face of this... this atrocity? */
IF ~~ + t8.10
END

IF ~~ t8.10
 SAY @387 /* But 'tis... illuminating, if nothing else. I once dreamed of spending my life forcing back the most obvious of evils--the lairing dragons, the dread beasts from the Nine Hells--but this... */
 = @388 /* I have been a fool, <CHARNAME>. A naive child. 'Twould seem that sometimes the foulest of creatures are all too human in the end. */
	++ @389 /* Welcome to reality, Isra. */ + t8.11
	++ @390 /* Have you really never considered something like this before? */ + t8.12
	+ ~Race(Player1,HUMAN)~ + @391 /* We certainly have the same capacity for cruelty as anything else. */ + t8.13
	+ ~!Race(Player1,HUMAN)~ + @392 /* Humans certainly have the same capacity for cruelty as anything else. */ + t8.13
	++ @393 /* Oh, I'd say this is just the benchmark. Your dread beasts are going to be *much* worse. */ + t8.14
END
 
IF ~~ t8.11
 SAY @394 /* No, it isn't as if I had never heard of such things before, but to consider and to witness are two separate things entirely. I fear I have been more... sheltered than I had realized. */ 
IF ~~ + t8.15
END
 
IF ~~ t8.12
 SAY @395 /* To consider and to witness are two separate things entirely, and I have been... more sheltered than I had realized. */ 
IF ~~ + t8.15
END
 
IF ~~ t8.13
 SAY @396 /* I cannot deny that. And yet to know it and to witness are two separate things entirely. I fear I have been more... sheltered than I had realized. */
IF ~~ + t8.15
END
 
IF ~~ t8.14
 SAY @397 /* That is... horribly true, I suspect. And yet I still feel like I've been more... sheltered than I had realized. */
IF ~~ + t8.15
END

IF ~~ t8.15
 SAY @398 /* I'm... glad that I chose to accompany you, my <PRO_LADYLORD>. I don't believe that I will *ever* be able to erase the memory of what happened here, and truly, I have no wish to do so. */
 = @399 /* I think... I think I finally needed to see something like this for myself. */
	++ @400 /* I would happily never see something like this again. */ + t8.16
	++ @401 /* Please don't turn grim on me now, Isra. */ + t8.17
	++ @402 /* It's hard to believe in beauty if you've never seen true hideousness. */ + t8.18
 	++ @403 /* I think I had to see this as well. */ + t8.19
END

IF ~~ t8.16
 SAY @404 /* Aye, but the only way to do so in this world is to close one's eyes to reality. I would not do that even if I could. */
IF ~~ + t8.19
END

IF ~~ t8.17
 SAY @405 /* Sune forbid it! */
IF ~~ + t8.19
END

IF ~~ t8.18
 SAY @406 /* Aye, that may well be true. */
IF ~~ + t8.19
END

IF ~~ t8.19
 SAY @407 /* Excuse me, <CHARNAME>, but I need time to think... and to pray. I do not care for feeling like this. */
IF ~~ EXIT
END
END

// 9.
// --
CHAIN IF ~Global("rh#IsraTalksBG1Chapter5","GLOBAL",4)~ THEN RH#ISRAJ t9
@408 /* My <PRO_LADYLORD>, if I have been somewhat... quiet as of late, I apologize. */
DO ~IncrementGlobal("rh#IsraTalksBG1Chapter5","GLOBAL",1)
SetGlobal("rh#IsraTalksBG1Interrupted","GLOBAL",0)
RealSetGlobalTimer("rh#IsraTalksBG1Timer","GLOBAL",2700)~
END
	++ @409 /* I have rather missed the company. */ + t9.1
	++ @410 /* You have been a bit moody since Cloakwood. */ + t9.2
	++ @411 /* Are you feeling at all better about things now? */ + t9.2
	++ @412 /* Regardless of what Sunite dogma says, you are allowed to be less than amiable every so often. */ + t9.3
	++ @413 /* Actually, I could do with a bit of silence right now. */ + t9.4

APPEND RH#ISRAJ

IF ~~ t9.1
 SAY @414 /* *smile* Then I am sorry for that as well. */ 
 = @415 /* Truly, <CHARNAME>, I... never fully understood before why so many of us quickly become so grim, but in the wake of what we saw in Davaeorn's mines... 'twould be a simple thing, I think, to forget that there was anything but ugliness in this world. */ 
IF ~~ + t9.5
END

IF ~~ t9.2
 SAY @416 /* Aye. Truly, <CHARNAME>, I... never fully understood before why so many of us quickly become so grim, but in the wake of what we saw in Davaeorn's mines... 'twould be a simple thing, I think, to forget that there was anything but ugliness in this world. */ 
IF ~~ + t9.5
END

IF ~~ t9.3
 SAY @417 /* *smile* 'Tis impossible, mayhap, to adhere to any dogma perfectly, but I would be remiss if I did not try. */
 = @415 /* Truly, <CHARNAME>, I... never fully understood before why so many of us quickly become so grim, but in the wake of what we saw in Davaeorn's mines... 'twould be a simple thing, I think, to forget that there was anything but ugliness in this world. */ 
IF ~~ + t9.5
END

IF ~~ t9.4
 SAY @418 /* Oh. I see. Very well, then. */
IF ~~ EXIT
END

IF ~~ t9.5
 SAY @419 /* To feel the Firehair's touch in such a moment... my <PRO_LADYLORD>, her love can be... overwhelming. I won't say that the horror of what we witnessed has been in any way lessened, and yet... mayhap it only serves to make whatever is beautiful in this world more precious. */
 = @420 /* As much as I respect those who follow Torm or Tyr, but I often think it a shame that more paladins do not follow Sune instead. This path is harsh enough as it is. */
	++ @421 /* You do seem happier than most. */ + t9.6
	++ @422 /* Different people find satisfaction in different things. */ + t9.7
	++ @423 /* Few paths through life are anything but harsh. */ + t9.8
	++ @424 /* I doubt a Tyrran or Tormite would think highly of that sentiment. */ + t9.9
	+ ~OR(3) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,NEUTRAL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @425 /* I don't appreciate the insinuation, Isra, nor would other members of my church. */ + t9.10
END

IF ~~ t9.6
 SAY @426 /* For the most part, perhaps. */
IF ~~ + t9.11
END

IF ~~ t9.7
 SAY @427 /* Aye, sometimes I forget that, I suppose. */ 
IF ~~ + t9.11
END

IF ~~ t9.8
 SAY @428 /* Aye, perhaps that is true. */
IF ~~ + t9.11
END

IF ~~ t9.9
 SAY @429 /* Likely not, and such comments are ingracious of me anyway. */
IF ~~ + t9.11
END

IF ~~ t9.10
 SAY @430 /* My apologies, <CHARNAME>. That was ungracious of me. */
IF ~~ + t9.11
END

IF ~~ t9.11
 SAY @431 /* Regardless, I had not meant to turn this into a discussion on theology. I confess, I was... somewhat too angry to think straight when we first found Davaeorn's documents, but the mention of the Sythillisian Empire... troubles me, to say the least. */
 = @432 /* Certainly, it has always been rather obvious that this... conspiracy involved Amn as well as Baldur's Gate, but given the evidence of how widespread it is, I think mayhap... mayhap I should write to my father. */
 = @433 /* *sigh* At this rate, however, a declaration of war may well reach Eshpurta first. */
	++ @434 /* That isn't going to happen. */ + t9.12
	++ @435 /* You don't sound thrilled at the thought of writing to him anyway. */ + t9.13
	++ @436 /* The more people with an idea of what's going on, the better. */ + t9.14
	++ @437 /* Isra, given your ties to the Amnish military, you're not going to be in trouble in Baldur's Gate if war does break out, are you? */ + t9.15
END

IF ~~ t9.12
 SAY @438 /* I pray that you are right, <CHARNAME>. */
IF ~~ + t9.16
END 

IF ~~ t9.13
 SAY @439 /* We... haven't spoken in almost a year now, and I don't think that he even knows where I am. It would upset him, I think, to know that I'm not hidden away in Crimmor. */
IF ~~ + t9.16
END 

IF ~~ t9.14
 SAY @440 /* I agree, though truly, I cannot see it making a difference in the outcome. */
IF ~~ + t9.16
END 

IF ~~ t9.15
 SAY @441 /* I... do not expect to be, no. It should be understood in any country that paladins are not employed as spies. Truly, that should be the least of our concerns right now. */
IF ~~ + t9.16
END  
 
IF ~~ t9.16
 SAY @442 /* War with Baldur's Gate... I know that I should not focus so upon how it would affect my own family, but 'twould be a falsehood to claim that such concerns do not weigh upon me. The thought of my father cutting short his retirement from military service... frightens me more than I would like. */
 = @443 /* I'm afraid that I do not entirely care for who he becomes with the force of an army behind him. */
	++ @444 /* Oh. So I take it he isn't a paladin after all. */ + t9.17
	++ @445 /* Is that the real root of your current estrangement? */ + t9.18
	++ @446 /* In that case, we'd best move on if we want to prevent this war. */ + t9.19
	++ @447 /* What do you mean by that? */ + t9.20
END

IF ~~ t9.17
 SAY @448 /* Ah... no. No, he isn't. */
IF ~~ + t9.20
END

IF ~~ t9.18
 SAY @449 /* On my part... aye, it may well be. */
IF ~~ + t9.20
END   

IF ~~ t9.19
 SAY @450 /* You are correct, of course. */
IF ~~ EXIT
END   

IF ~~ t9.20
 SAY @451 /* My father is by any definition a decent man. He is a good husband and a loving father, certainly, and he did see to it that his daughters were raised properly. Truly, I cannot imagine that I would be where I am today if not for his influence. */
 = @452 /* But his values can often become... negotiable during times of conflict. I have seen it happen before, and it has... damaged our relationship enough as it is. I know that I should not let things fester so between us, but I can see very little alternative. */
	++ @453 /* I don't know the man, Isra. I can't help you. */ + t9.21
	++ @454 /* Avoiding the problem doesn't seem to be helping very much. */ + t9.22
	++ @455 /* On the positive side, if we all die tomorrow, it won't matter anymore. */ + t9.23
	++ @456 /* Sometimes we ask more of other people than they are willing or able to give. */ + t9.24
	+ ~!Class(Player1,PALADIN_ALL)~ + @457 /* Only a paladin would make such an issue of this. Maybe you should stop demanding perfection and just accept him as he is. */ + t9.25
END   

IF ~~ t9.21
 SAY @458 /* No, I did not expect that you could. */
IF ~~ + t9.26
END

IF ~~ t9.22
 SAY @459 /* No, mayhap not. And truly, I should not be avoiding problems anyway. */
IF ~~ + t9.26
END

IF ~~ t9.23
 SAY @460 /* *laugh* That is remarkably discouraging, <CHARNAME>. */
IF ~~ + t9.26
END

IF ~~ t9.24
 SAY @406 /* Aye, that may well be true. */
IF ~~ + t9.26
END

IF ~~ t9.25
 SAY @461 /* ... You are too quick to cast judgment yourself to criticize others for doing the same, <CHARNAME>. */
IF ~~ + t9.26
END

IF ~~ t9.26
 SAY @462 /* Regardless, we have enough concerns to worry over as it is. I should not burden you with minor ones. */
IF ~~ EXIT
END
END

// 10. at rest in an inn, post Cloakwood
// -------------------------------------
CHAIN IF ~Global("rh#IsraTalksBG1","GLOBAL",16)~ THEN RH#ISRAJ t10
@463 /* 'Tis always such a welcome surprise to find true talent in establishments such as this, my <PRO_LADYLORD>. I trust you enjoyed the last performance. */
DO ~IncrementGlobal("rh#IsraTalksBG1","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksBG1Timer","GLOBAL",2700)~
END
	++ @464 /* You're starting to get a bit starry-eyed there, Isra. */ + t10.1
	++ @465 /* Good music, better company... */ + t10.2
	++ @466 /* Are you sure you wouldn't like a drink? I'd be happy to order something. */ + t10.3
	++ @467 /* Isra, you're watching that bard so intently, it's a wonder she's not getting nervous. */ + t10.4
	++ @468 /* As enjoyable as this evening has been, I need to get some sleep. */ + t10.5

APPEND RH#ISRAJ

IF ~~ t10.1
 SAY @469 /* *laugh* Aye, I do not doubt it. */
IF ~~ + t10.6
END

IF ~~ t10.2
 SAY @470 /* *laugh* I appreciate the sentiment, <CHARNAME>. */
IF ~~ + t10.6
END

IF ~~ t10.3
 SAY @471 /* Quite sure, thank you. I've long since learned not to touch the stuff. */
IF ~~ + t10.6
END

IF ~~ t10.4
 SAY @472 /* *laugh* You have an odd definition of nervous, <CHARNAME>. She is quite clearly reveling in the attention. */
IF ~~ + t10.6
END

IF ~~ t10.5
 SAY @473 /* That would no doubt be a wise decision. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t10.6
 SAY @474 /* We spend so much time in combat, I find it all too easy to forget how many other ways there are to bring a touch of brightness into this darkened world. Better ways, mayhap. Ways well worth defending, at the very least. */
 = @475 /* That we can still enjoy evenings such as this is a victory in and of itself, I think. */
	++ @476 /* And one I wish we could indulge in more often these days. */ + t10.7
	++ @477 /* I'm too worried nowadays to have much of a taste for music. */ + t10.8
	++ @478 /* I'm surprised I've never seen you play an instrument yourself. */ + t10.9
	++ @479 /* Sometimes I'm amazed that you're still such a hopeless romantic. */ + t10.10
END
 
IF ~~ t10.7
 SAY @480 /* The music still plays, <CHARNAME>, even if we are not always so fortunate as to enjoy it. If we fail in our endeavors, however... there will be precious little music in this country for anyone to appreciate. */
IF ~~ + t10.13
END

IF ~~ t10.8
 SAY @481 /* I do not blame you for that, <CHARNAME>, though cultivating an appreciation would likely do you well, particularly in times such as this. */
IF ~~ + t10.13
END

IF ~~ t10.9
 SAY @482 /* *laugh* I would never inflict such horror upon you, <CHARNAME>. */
IF ~~ + t10.13
END

IF ~~ t10.10
 SAY @483 /* I am devoted to the Firehair, my <PRO_LADYLORD>, and I would ask you to respect that. */
	++ @484 /* I'm sorry. I didn't mean to offend. */ + t10.11
	++ @485 /* I was only joking, Isra. Calm down. */ + t10.11
	++ @486 /* So like a paladin to take offense at the slightest of provocation. */ + t10.12
END

IF ~~ t10.11
 SAY @487 /* *sigh* Very well. */
IF ~~ + t10.13
END

IF ~~ t10.12
 SAY @488 /* If that is how you feel, <CHARNAME>, then I shall leave you be. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceCheck","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ t10.13
 SAY @489 /* Truly, sometimes I wish I were a better musician myself. My mother was a bard in her youth, aye, though I like to jest that my elder sisters inherited so much of her talent, there was little enough left over for me. */
 = @490 /* I do not begrudge them their superior skill, of course, though I admit that I would rather they had better nurtured their gifts. */
	++ @491 /* You've never said much about your sisters. */ + t10.14
	++ @492 /* Not everyone does exactly what we want them to. */ + t10.15
	++ @493 /* If they're anything like Imoen, they must be nothing but disappointment. */ + t10.16
	++ @494 /* What are they doing instead? */ + t10.17
	++ @495 /* Lovely as this is, I should probably get to bed now. */ + t10.5
END
 
IF ~~ t10.14
 SAY @496 /* I don't think I have. We have little in common these days, unfortunately. */
IF ~~ + t10.17
END
 
IF ~~ t10.15
 SAY @497 /* Aye, my <PRO_LADYLORD>, I am well aware of that. */
IF ~~ + t10.17
END
 
IF ~~ t10.16
 SAY @498 /* That is most uncharitable, my <PRO_LADYLORD>. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceCheck","GLOBAL",2) RestParty()~ EXIT
END 
 
IF ~~ t10.17
 SAY @499 /* When last I spoke with Alia, she had become involved with local Sharessan cultists. I am... not entirely sure what to make of that. As for our elder sister Rana... much to our father's pleasure, she agreed to an advantageous marriage proposal with House Jysstev several years back. */
 = @500 /* I... haven't spoken to her since the wedding. */
	++ @501 /* What happened at the wedding? */ + t10.18
	++ @502 /* Wait. Sharessan cultists? */ + t10.19
	++ @503 /* Your father's pleasure? Does he want you to marry too? */ + t10.20
	++ @504 /* You certainly have a more colorful family than I might have expected. */ + t10.21
END
 
IF ~~ t10.18
 SAY @505 /* Suffice it to say that her husband and I argued. Vehemently. He is... not the type of man I would have wished to see her wed. */
IF ~~ + t10.22
END

IF ~~ t10.19
 SAY @506 /* My sister was always somewhat... wild. There were certainly worse possibilities. */
IF ~~ + t10.22
END

IF ~~ t10.20
 SAY @507 /* Very much so, I'm afraid. */
IF ~~ + t10.22
END

IF ~~ t10.21
 SAY @508 /* 'Tis fairly common in Amn. */
IF ~~ + t10.22
END
 
IF ~~ t10.22
 SAY @509 /* But this evening is too pleasant by far to focus on such thoughts, and as it is, I can spare only a few more minutes before I should retire. */ 
	+ ~Gender(Player1,MALE) Global("rh#IsraRomanceCheck","GLOBAL",1) !Global("P#BranwenRomanceActive","GLOBAL",2) !Global("X#DynaheirRomanceActive","GLOBAL",2)~ + @510 /* Would you at least care for a dance first? */ + t10.23
	+ ~Gender(Player1,FEMALE) Global("rh#IsraRomanceCheck","GLOBAL",1)
	!Global("B!GavinRomanceActive","GLOBAL",2)  !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#XARomanceActive","GLOBAL",2) OR(2) !GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoranRomanceInactive","GLOBAL",1)~ + @510 /* Would you at least care for a dance first? */ + t10.24
	+ ~!Global("rh#IsraRomanceCheck","GLOBAL",1)~ + @510 /* Would you at least care for a dance first? */ + t10.25
	+ ~Global("rh#IsraRomanceCheck","GLOBAL",1) OR(5) Global("P#BranwenRomanceActive","GLOBAL",2) Global("X#DynaheirRomanceActive","GLOBAL",2)
	Global("B!GavinRomanceActive","GLOBAL",2)  Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#XARomanceActive","GLOBAL",2)~ + @510 /* Would you at least care for a dance first? */ + t10.25
	+ ~Global("rh#IsraRomanceCheck","GLOBAL",1) GlobalGT("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1)~ + @510 /* Would you at least care for a dance first? */ + t10.25
	+ ~Gender(Player1,MALE) Global("rh#IsraRomanceCheck","GLOBAL",1) !Global("P#BranwenRomanceActive","GLOBAL",2) !Global("X#DynaheirRomanceActive","GLOBAL",2)~ + @511 /* You certainly don't have to retire alone, my lady. */ + t10.26
 	+ ~Gender(Player1,FEMALE) Global("rh#IsraRomanceCheck","GLOBAL",1) 	!Global("B!GavinRomanceActive","GLOBAL",2)  !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#XARomanceActive","GLOBAL",2) OR(2) !GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoranRomanceInactive","GLOBAL",1)~ + @511 /* You certainly don't have to retire alone, my lady. */ + t10.27
 	+ ~!Global("rh#IsraRomanceCheck","GLOBAL",1)~ + @511 /* You certainly don't have to retire alone, my lady. */ + t10.28
	+ ~Global("rh#IsraRomanceCheck","GLOBAL",1) OR(5) Global("P#BranwenRomanceActive","GLOBAL",2) Global("X#DynaheirRomanceActive","GLOBAL",2) Global("B!GavinRomanceActive","GLOBAL",2)  Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#XARomanceActive","GLOBAL",2)~ + @511 /* You certainly don't have to retire alone, my lady. */ + t10.31
	+ ~Global("rh#IsraRomanceCheck","GLOBAL",1) GlobalGT("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1)~ + @511 /* You certainly don't have to retire alone, my lady. */ + t10.31
	++ @512 /* So soon? The night is still young! */ + t10.29
	++ @513 /* It is getting a bit late. */ + t10.30
END

IF ~~ t10.23
 SAY @514 /* *smile* I think I would like that, my Lord. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ t10.24
 SAY @515 /* *laugh* And who would lead and who would follow, my Lady? */
 = @516 /* No, you have led well enough thus far, <CHARNAME>. You might as well continue a while longer. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ t10.25
 SAY @517 /* You flatter me, <CHARNAME>, but I'm afraid I must decline. Have a good night. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ t10.26
 SAY @518 /* *smile* You're a handsome man, <CHARNAME>, in more ways than one, but I must decline. With matters this serious... it would not be right. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ t10.27
 SAY @519 /* *smile* You're a beautiful woman, <CHARNAME>, in more ways than one, but I must decline. With matters this serious... it would not be right. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ t10.28
 SAY @520 /* *laugh* You flatter me, <CHARNAME>, but I must decline. Have a good night. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t10.29
 SAY @521 /* *laugh* For you, mayhap. I am not in the habit of spending the morning abed. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t10.30
 SAY @522 /* Aye, so it is. I bid you a good night, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t10.31
 SAY @523 /* That would be highly inappropriate, <CHARNAME>, given your current attachments. Good night. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceCheck","GLOBAL",2) RestParty()~ EXIT
END  
END

// 11. Candlekeep
// --------------
CHAIN IF ~Global("rh#IsraTalksBG1Candlekeep","GLOBAL",2)~ THEN RH#ISRAJ t11
@524 /* <CHARNAME>, that letter... */
DO ~SetGlobal("rh#IsraTalksBG1Candlekeep","GLOBAL",3)
RealSetGlobalTimer("rh#IsraTalksBG1Timer","GLOBAL",2700)~
END
	++ @525 /* Says that I'm a monster. Yes, I'm well aware of that. */ + t11.1
	++ @526 /* It means absolutely nothing. I'm the same person I was yesterday. */ + t11.2
	++ @527 /* Can you really say you're surprised? */ + t11.3
	++ @528 /* Why do you look so shaken? This isn't happening to you. */ + t11.4
	++ @529 /* I don't want to talk about it, Isra. */ + t11.5

APPEND RH#ISRAJ

IF ~~ t11.1
 SAY @530 /* Bhaal was the monster, my <PRO_LADYLORD>. But you? I don't believe it. */
IF ~~ + t11.6
END

IF ~~ t11.2
 SAY @531 /* Are you so certain of that? Bhaal was... evil, my <PRO_LADYLORD>. Unspeakably so. */
IF ~~ + t11.6
END

IF ~~ t11.3
 SAY @532 /* I am as aware as anyone of the curious abilities you've developed, but Bhaal was... evil, my <PRO_LADYLORD>. Unspeakably so. */
IF ~~ + t11.6
END

IF ~~ t11.4
 SAY @533 /* Mayhap not, but Bhaal was... evil, my <PRO_LADYLORD>. Unspeakably so. */
IF ~~ + t11.6
END

IF ~~ t11.5
 SAY @534 /* It isn't something you can simply ignore. Bhaal was... evil, my <PRO_LADYLORD>. Unspeakably so. */
IF ~~ + t11.6
END

IF ~~ t11.6
 SAY @535 /* I... truly, I don't know what to make of this, <CHARNAME>. I... I simply do not know. */
	++ @536 /* Getting hysterical isn't going to help me, you know. */ + t11.7
	++ @537 /* You've studied religion. Surely you have something to offer? */ + t11.8
	++ @538 /* Do I look unhappy about this? As far as I'm concerned, it's a blessing. */ + t11.9
	++ @539 /* Just stop. I really don't care what you have to say about this. */ + t11.10
END

IF ~~ t11.7
 SAY @540 /* I... no, you are right. */ 
IF ~~ + t11.11
END

IF ~~ t11.8
 SAY @541 /* I don't like it. Beyond that... I can say little for certain. */
IF ~~ + t11.11
END

IF ~~ t11.9
 SAY @542 /* A blessing? It may well be that you think you can somehow turn this power to your benefit, despite its dark origins, but this is *Bhaal*, my <PRO_LADYLORD>. */ 
IF ~~ + t11.11
END

IF ~~ t11.10
 SAY @543 /* Very well. Then I can only warn you to take this seriously. With such a heritage... you could very easily become something you would not wish to be. */
IF ~~ EXIT
END

IF ~~ t11.11
 SAY @544 /* Would that I could advise you better, but I've never made a study of prophecy. As for Bhaal... I have heard enough about the Dead Three to know not to make light of their schemes, even now. Gods may be slain as surely as mortals, but their plans don't founder quite as easily. */ 
 = @545 /* This... power inside of you, <CHARNAME>. It does not have your best interests at heart. */
	++ @546 /* What do you think is going to happen now? */ + t11.12
	++ @547 /* Well, I kind of gathered that from the sinister dreams. */ + t11.13
	++ @548 /* That doesn't mean I can simply pretend it isn't there. */ + t11.14
	++ @549 /* Power is power. Intentions are more important than origins. */ + t11.15
	++ @550 /* Enough. I refuse to talk about this. */ + t11.10
END

IF ~~ t11.12
 SAY @551 /* I... truly, I could not begin to guess. */
IF ~Alignment(Player1,MASK_GOOD) ReputationGT(Player1,11)~ + t11.16
IF ~OR(2) !Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,11)~ + t11.17
END

IF ~~ t11.13
 SAY @552 /* Aye. You will need to recount those dreams again for me at some point, I think. I would never have considered something like this. */
IF ~Alignment(Player1,MASK_GOOD) ReputationGT(Player1,11)~ + t11.16
IF ~OR(2) !Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,11)~ + t11.17
END

IF ~~ t11.14
 SAY @553 /* No, mayhap not, but neither should you simply accept it. */ 
IF ~Alignment(Player1,MASK_GOOD) ReputationGT(Player1,11)~ + t11.16
IF ~OR(2) !Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,11)~ + t11.17
END

IF ~~ t11.15
 SAY @554 /* Pardon my vehemence, but you would be a fool to believe that when the origin is as dark as this. */
IF ~Alignment(Player1,MASK_GOOD) ReputationGT(Player1,11)~ + t11.16
IF ~OR(2) !Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,11)~ + t11.17
END

IF ~~ t11.16
 SAY @555 /* You are a good <PRO_MANWOMAN>, <CHARNAME>, despite this... heritage. Gorion raised you well, and in some ways, he is as much your father as Bhaal is. That does not need to change. Perhaps it has even insulated you in some small way from the realities of your... parentage. */
IF ~~ + t11.18
END

IF ~~ t11.17
 SAY @556 /* You may not be the most righteous of people, <CHARNAME>, and while I have had little quarrel with that in the past, perhaps you would be wise now to... reconsider your commitments and ideals. I pray that it doesn't come to pass, but if you falter even a bit, you may yet find yourself sinking into the darkness instead. */
IF ~~ + t11.18
END
 
IF ~~ t11.18
 SAY @557 /* <CHARNAME>, please, do not let your blood dictate your fate. */
	++ @558 /* I have no intention of giving in to this, and I've never said otherwise. */ + t11.19
	++ @559 /* And if I'm not strong enough to fight it? */ + t11.20
	++ @560 /* You're beginning to scare me more than the letter itself did! */ + t11.21
	++ @561 /* I neither need nor want your counsel, Isra. */ + t11.22
END

IF ~~ t11.19
 SAY @562 /* That is... most encouraging. */
IF ~~ + t11.23
END

IF ~~ t11.20
 SAY @563 /* Then... then it will surely destroy you. You will *have* to be strong enough. */
IF ~~ + t11.23
END

IF ~~ t11.21
 SAY @564 /* Then mayhap you were not as frightened as you should have been. */
IF ~~ + t11.23
END

IF ~~ t11.22
 SAY @565 /* I cannot force it upon you, certainly, but please, do not simply discount what I have said. */
IF ~~ EXIT
END

IF ~~ t11.23
 SAY @566 /* *sigh* My words have been... overly harsh, I think. This revelation has been terrifying, truly, but I should also say that I believe that you *do* have the strength necessary to survive... everything that it entails. */
 = @567 /* And I assure you, <CHARNAME>, so long as you do not prove me wrong, I shall of course continue to stand beside you. */
	++ @568 /* Thank you, Isra. */ + t11.24
	++ @569 /* And if I do prove you wrong? */ + t11.25
	++ @570 /* Oh, good. I wasn't sure there for a moment. */ + t11.26
	++ @571 /* I think that's the first encouraging thing you've said to<DAYNIGHT>. */ + t11.26
END

IF ~~ t11.24
 SAY @572 /* For all but panicking? I'm sure that this discovery is discouraging enough as it is without my adding to it, my <PRO_LADYLORD>. There is little need for thanks. */
IF ~~ EXIT
END

IF ~~ t11.25
 SAY @573 /* ... We should not worry about that possibility until it comes to pass, my <PRO_LADYLORD>. */
IF ~~ EXIT
END

IF ~~ t11.26
 SAY @574 /* I am sorry, my <PRO_LADYLORD>. I know that I should not have panicked so. I'm sure that this discovery is discouraging enough as it is. */
IF ~~ EXIT
END
END

// 12. Post-Candlekeep, in Baldur's Gate
// -------------------------------------
CHAIN IF ~Global("rh#IsraTalksBG1","GLOBAL",18)~ THEN RH#ISRAJ t12
@575 /* I could quickly come to *hate* this city if we cannot untangle this conspiracy soon. */
= @576 /* Truly, <CHARNAME>, absurd though it may be, every day I find myself missing the kobolds and gnolls and bandits that we once hunted just a little bit more. */
DO ~IncrementGlobal("rh#IsraTalksBG1","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksBG1Timer","GLOBAL",2700)~
END
	++ @577 /* Personally, I'd take gibberlings anyday. */ + t12.1
	++ @578 /* I, for one, enjoy matching wits with these bastards. */ + t12.2
	++ @579 /* I'd have thought you'd prefer the chance to tackle something bigger. */ + t12.3
	++ @580 /* The sooner we get it over with, the better. */ + t12.4
	++ @581 /* We don't have the time for this right now, Isra. */ + t7.11
	
APPEND RH#ISRAJ

IF ~~ t12.1
 SAY @582 /* You do yourself too little credit with that desire, I think. */
IF ~~ + t12.5
END

IF ~~ t12.2
 SAY @583 /* I would enjoy it better were they not quite so good at it. */
IF ~~ + t12.5
END

IF ~~ t12.3
 SAY @584 /* It is not the magnitude of the situation that troubles me, per se. */
IF ~~ + t12.5
END

IF ~~ t12.4
 SAY @585 /* Aye, we have little time to lose as it is. */
IF ~~ + t12.5
END

IF ~~ t12.5
 SAY @586 /* I have known that matters were serious ever since we eliminated Davaeorn and his... his disgusting operation. But this accursed city... */
 = @587 /* Every time we think that we've unraveled this plot, it only becomes that much more complicated instead! I am growing tired of it, to say the least. */
	++ @588 /* Tell me about it. */ + t12.9
	++ @589 /* Well, you can't wave a sword at all of your problems. */ + t12.6
	++ @590 /* Really? Personally, I'm finding it more exciting by the minute! */ + t12.7
	++ @591 /* Evil plots tend to be complicated. The unsubtle villains don't make it this far. */ + t12.8
END

IF ~~ t12.6
 SAY @592 /* I should certainly like to. */
IF ~~ + t12.9
END

IF ~~ t12.7
 SAY @593 /* *laugh* Pardon me, my <PRO_LADYLORD>, but sometimes I fear that you are really quite mad. */
IF ~~ + t12.9
END

IF ~~ t12.8
 SAY @594 /* Would that NO villain made it this far. */
IF ~~ + t12.9
END

IF ~~ t12.9
 SAY @595 /* Schemes within schemes... somehow I always thought that evil would be... uncomplicated, I would say, but that is too simplistic. Mayhap I simply assumed that with enough passion, one could tear through any form of opposition. */
 = @596 /* I was wrong, clearly. We've been lead round in circles ever since stepping foot in Baldur's Gate, and I can only pray that we work ourselves free of this wretched maze before it destroys us. */
	++ @597 /* We will. I can't see things getting much worse than they are right now. */ + t12.10
	++ @598 /* You'd almost prefer a good old-fashioned demonic summoning, wouldn't you? */ + t12.11
	++ @599 /* We're still alive. I can't say the same for our foes. */ + t12.12
	++ @600 /* Evil doesn't mean stupid. Our enemies have no reason to make things easy for us. */ + t12.13
END

IF ~~ t12.10
 SAY @601 /* Nor can I, though I don't consider that reassuring. */
IF ~~ + t12.14
END

IF ~~ t12.11
 SAY @602 /* *laugh* No. No, truly, I would not. */
IF ~~ + t12.14
END

IF ~~ t12.12
 SAY @603 /* That is true, yes. */
IF ~~ + t12.14
END

IF ~~ t12.13
 SAY @604 /* No... you are quite right. */
IF ~~ + t12.14
END

IF ~~ t12.14
 SAY @605 /* I suppose I have simply been... ill at ease since we fled Candlekeep. I have never been accused of murder before, my <PRO_LADYLORD>... never seen the force of law wielded so deftly by the *enemy* instead. */
 = @606 /* Everything feels so backwards now, <CHARNAME>, and now with the whispers of Bhaal's involvement... I cannot understand it. */
	++ @607 /* Laws can be manipulated by anyone with the skill and incentive. */ + t12.15
	++ @608 /* At least rivers aren't running red just yet. */ + t12.16
	++ @609 /* I can tell you where to aim, and you won't have to think about the hard stuff anymore. */ + t12.17
	++ @610 /* I can barely keep up with events myself. */ + t12.18
END

IF ~~ t12.15
 SAY @611 /* Aye, my <PRO_LADYLORD>. I am Amnish. I am no stranger to corruption. */
IF ~~ + t12.19
END

IF ~~ t12.16
 SAY @612 /* ... Aye. 'Tis a... horrific thought indeed. Mayhap I should be grateful that 'tis mere conspiracy we face for now. */
IF ~~ + t12.19
END

IF ~~ t12.17
 SAY @613 /* Please, my <PRO_LADYLORD>, I don't appreciate the condescension. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceCheck","GLOBAL",2)~ EXIT
END
 
IF ~~ t12.18
 SAY @614 /* You have acquitted yourself reasonably well thus far, my <PRO_LADYLORD>. Far better than I have, certainly. */
IF ~~ + t12.19
END
 
IF ~~ t12.19
 SAY @615 /* Sometimes I wish that I had spent some time in Athkatla. Enough even to know how to simply avoid such intrigue. I find myself... ill-equipped to navigate these schemes, to say the least. */
	++ @616 /* Really, Isra. I'm doing fine, and I was raised in a library. */ + t12.20
	++ @617 /* It's almost over now. I'm sure of it. */ + t12.21
	++ @618 /* Intrigue can't be wholely bad anyway. Just look at the Harpers. */ + t12.22
	++ @619 /* Well, you certainly have more than enough of an opportunity to learn now. */ + t12.23
END
 
IF ~~ t12.20
 SAY @620 /* Then perhaps 'tis simply a matter of nature. */
IF ~~ + t12.24
END
 
IF ~~ t12.21
 SAY @621 /* I pray that you are right. */
IF ~~ + t12.24
END
 
IF ~~ t12.22
 SAY @622 /* And their myriad deceits? No, I have no use for such methods. */
IF ~~ + t12.24
END
 
IF ~~ t12.23
 SAY @623 /* More than I would ever want. */
IF ~~ + t12.24
END

IF ~~ t12.24
 SAY @624 /* But I have no wish to be a drain on morale. I shall simply have to trust you to see where I am so obviously blind, 'twould seem. */
 = @625 /* That much, <CHARNAME>, I am sure I can manage. */ 
IF ~~ EXIT
END
END

// 13.
// ---
CHAIN IF ~Global("rh#IsraTalksBG1","GLOBAL",20)~ THEN RH#ISRAJ t13
@626 /* <CHARNAME>, before we finish this once and for all, I wanted to make sure that you knew how much I have enjoyed your company... and how much I would rather stay, given the choice. */
DO ~IncrementGlobal("rh#IsraTalksBG1","GLOBAL",1)~
END
	++ @627 /* This is a terrible time to point out that you're leaving. */ + t13.1
	++ @628 /* I knew you'd have to go back to Amn eventually. */ + t13.2
	++ @629 /* You do have the choice, you know. You just refuse to take it. */ + t13.3
	++ @630 /* It's been an honor to know you too, Isra. */ + t13.4

APPEND RH#ISRAJ

IF ~~ t13.1
 SAY @631 /* Perhaps I should have done so earlier, but I'm afraid I didn't entirely realize that it needed to be said. */ 
IF ~~ + t13.5
END

IF ~~ t13.2
 SAY @632 /* Aye. I have numerous obligations there, both religious and familial. */
IF ~~ + t13.5
END

IF ~~ t13.3
 SAY @633 /* The choice to be weak enought to forsake all of my obligations, perhaps. I must return to Amn, my <PRO_LADYLORD>. */
IF ~~ + t13.5
END

IF ~~ t13.4
 SAY @634 /* *smile* Thank you. */
IF ~~ + t13.5
END

IF ~~ t13.5
 SAY @635 /* I have let far too many of my relationships grow cold... whether out of pride or cowardice, I could not say, though 'tis a situation I feel compelled to remedy. No servant of the Firehair should give up on love so easily. */
 = @636 /* After that, mayhap I shall feel worthy enough to stand vigil for full knighthood. I will be expected back by my order regardless. */
	++ @637 /* You should feel worthy enough as it is. */ + t13.6
	++ @638 /* So you'll kindle old relationships and let a new one die? */ + t13.7
	++ @639 /* You've got a handful of burnt bridges there, Isra. Good luck. */ + t13.8
	++ @640 /* You don't need to explain yourself to me. */ + t13.9
END

IF ~~ t13.6
 SAY @641 /* I would be remiss to ignore what I knew needed to be done. */
IF ~~ + t13.10
END

IF ~~ t13.7
 SAY @642 /* There is no sorrow in parting... simply in staying away. */
IF ~~ + t13.10
END

IF ~~ t13.8
 SAY @643 /* Truly, I don't believe there's any such thing as a burnt bridge. */
IF ~~ + t13.10
END

IF ~~ t13.9
 SAY @644 /* I am not always as skilled a communicator as I think I am, so I would rather be clear. */
IF ~~ + t13.10
END

IF ~~ t13.10
 SAY @645 /* If you ever have the chance to visit Amn, <CHARNAME>, you would be most welcome in Crimmor. I think you would find it very much to your liking. */
	++ @646 /* Athkatla seems more my speed, really. */ + t13.11
	++ @647 /* Aren't you forgetting the epic battles in front of us? */ + t13.12
	++ @648 /* I think I'd like that too. */ + t13.13
	+ ~Global("rh#IsraRomanceCheck","GLOBAL",1) !Global("P#BranwenRomanceActive","GLOBAL",2) !Global("X#DynaheirRomanceActive","GLOBAL",2) !Global("B!GavinRomanceActive","GLOBAL",2)  !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#XARomanceActive","GLOBAL",2) OR(2) !GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoranRomanceInactive","GLOBAL",1)~ + @649 /* Welcome as more than simply friends, perhaps? */ + t13.14
	++ @650 /* After this mess, a vacation with Sunites and Lliirans seems a delightful plan. */ + t13.13
END

IF ~~ t13.11
 SAY @651 /* *laugh* If you insist. */
IF ~~ + t13.15
END

IF ~~ t13.12
 SAY @652 /* *smile* I see little point in considering defeat. */
IF ~~ + t13.15
END

IF ~~ t13.13
 SAY @653 /* *smile* I expected as much. */
IF ~~ + t13.15
END

IF ~~ t13.14
 SAY @654 /* *smile* There is nothing simple about friendship, but... aye, mayhap. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1)~ + t13.15
END

IF ~~ t13.15
 SAY @655 /* But I have taken up too much time with such talk as it is, my <PRO_LADYLORD>. Once this is over, we will have time to speak once more. */
IF ~~ EXIT
END
END


/* --------------- *
 *  INTERJECTIONS  *
 * --------------- */

// Tranzig
// -------
I_C_T ~%tutu_var%TRANZI~ 7 rh#int.tranzig
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@656 /* I have no wish to murder a man who has surrendered, <CHARNAME>, granted he can be trusted not to return to his former masters. */
DO ~SetGlobal("rh#IsraTranzigSpared","GLOBAL",1)~
== ~%tutu_var%TRANZI~ @657 /* I swear it! He'd kill me himself if I tried! */
END

// Edwin
// -----
I_C_T ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState0% rh#int.edwin1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@658 /* And who is this woman that she deserves death? */
== ~%tutu_var%EDWIN%eet_var%~ @659 /* A most deceitful creature, I assure you. One whose depravity would shock even you. (Though many things would likely shock this one.) */
END

I_C_T ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState1% rh#int.edwin2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@658 /* And who is this woman that she deserves death? */
== ~%tutu_var%EDWIN%eet_var%~ @659 /* A most deceitful creature, I assure you. One whose depravity would shock even you. (Though many things would likely shock this one.) */
END

I_C_T ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState2% rh#int.edwin3
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@658 /* And who is this woman that she deserves death? */
== ~%tutu_var%EDWIN%eet_var%~ @659 /* A most deceitful creature, I assure you. One whose depravity would shock even you. (Though many things would likely shock this one.) */
END

// Eldoth
// ------
I_C_T ~%tutu_var%ELDOTH~ 7 rh#int.eldoth1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@660 /* Kidnapping? Blackmail? And seduction as well, 'twould seem. You would allow this viper into our company, <CHARNAME>? */
== ~%tutu_var%ELDOTH~ @661 /* Don't worry your pretty little head about it, my lady. */
END

I_C_T ~%tutu_var%ELDOTH~ 8 rh#int.eldoth2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@662 /* An excursion to the local prison would be more to my liking. Eldoth would be more at home amongst the rest of his ilk, I think. */
== ~%tutu_var%ELDOTH~ @663 /* Fortunately, my lady, the choice does not lie in your hands. */
END

// Joseph's wife
// -------------
I_C_T ~%tutu_scriptbg%FTOWN2%eet_var%~ 3 rh#int.joe
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@664 /* I see. My lady, I assure you, we will do everything that we can to see your husband returned to you. */
== ~%tutu_scriptbg%FTOWN2%eet_var%~ @665 /* Thank you for this. */
END

// Samantha & Jamie
// ----------------
I_C_T ~%tutu_var%JAMIE~ 0 rh#int.jamie
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@666 /* Calm down a moment, sir! I apologize for any inappropriate flirtation, but we have not touched Samantha, nor do we intend to! I assure you, we mean neither of you any harm! */
== ~%tutu_var%JAMIE~ @667 /* Yeah? And any damn brigand could say that too! */
END

APPEND RH#ISRAJ

// Brage
// -----
IF ~Global("rh#IsraBrageFound","GLOBAL",1)~ rh#brage
 SAY @668 /* I can only pray that the poor man manages to find at least some measure of peace, though even that will likely prove a... difficult road indeed. */
 = @669 /* Let us be gone from this place of sorrow, my <PRO_LADYLORD>. */
IF ~~ DO ~SetGlobal("rh#IsraBrageFound","GLOBAL",2)~ EXIT
END

// Girdle of Masculinity
// ---------------------
IF ~Global("rh#IsraGirdle","GLOBAL",1)~ rh#girdle
 SAY @670 /* By Sune, <CHARNAME>, get this wretched thing *off* of me! */
IF ~~ DO ~SetGlobal("rh#IsraGirdle","GLOBAL",2)~ EXIT
END

// Dynaheir Attacked
// -----------------
IF ~Global("rh#IsraDynaheirHostile","GLOBAL",1) InParty("Edwin")~ rh#dynattack1
 SAY @671 /* You would side with the wizard in this!? Do not expect me to simply stand aside and watch! */
IF ~~ DO ~SetGlobal("rh#IsraDynaheirAttacked","GLOBAL",2) SetGlobal("rh#IsraJoinedBG1","GLOBAL",0) LeaveParty() Enemy()~ EXIT
END

IF ~Global("rh#IsraDynaheirHostile","GLOBAL",1)~ rh#dynattack2
 SAY @672 /* You would murder this woman!? Do not expect me to simply stand aside and watch! */
IF ~~ DO ~SetGlobal("rh#IsraDynaheirAttacked","GLOBAL",2) SetGlobal("rh#IsraJoinedBG1","GLOBAL",0) LeaveParty() Enemy()~ EXIT
END
END

I_C_T ~%EDWIN_JOINED%~ %BGTEDWINJState7% rh#int.dyna2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@673 /* This... so-called deal to commit murder is no true deal at all. Let the wretched Red Wizard find his own way home, <CHARNAME>. */
END

// Viconia
// -------
I_C_T ~%tutu_var%FLAM2~ 1 rh#int.viccy
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@674 /* You mean to say that Baldur's Gate has no more civilized procedure for situations like this? */
== ~%tutu_var%FLAM2~ @675 /* I am the law here, and she has already been sentenced to death. */
END

// Gallor
// ------
I_C_T ~%tutu_var%GALLOR~ 1 rh#int.gallor1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@676 /* You would commit murder over some magical item and a handful of coin? <CHARNAME>,  scum like this deserves only one answer. */
== ~%tutu_var%GALLOR~ @677 /* Er... let's not be hasty now. */
END

APPEND RH#ISRAJ

IF ~Global("rh#IsraGallorHelped","GLOBAL",1)~ rh#int.gallor2
 SAY @678 /* I had thought better of you, <CHARNAME>. Don't expect me to follow you in this. */
IF ~~ DO ~SetGlobal("rh#IsraGallorHelped","GLOBAL",2) SetGlobal("rh#IsraJoinedBG1","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END
END

// Sonner & Tenya
// --------------
I_C_T ~%tutu_var%TENYA~ 5 rh#int.tenya
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@679 /* Loath as I am to aid one of Umberlee's ilk, if this story is actually true-- */
== ~%tutu_var%TENYA~ @680 /* It IS true! I am NOT your enemy here. */
END

I_C_T ~%tutu_var%SONNER~ 14 rh#int.sonner
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@681 /* Are you truly so vain that you think Talos himself has any significant interest in how this petty scheme of yours plays out? */
== ~%tutu_var%SONNER~ @682 /* Maybe not, but his clerics are nothing to laugh at. Even for one like you, ma'am. */
END

// Firewine Bridge
// ---------------
I_C_T ~%tutu_var%POE~ 0 rh#int.poe1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@683 /* Could we not spare a few moments, my <PRO_LADYLORD>? A stirring tale would be very welcome to<DAYNIGHT>. */
== ~%tutu_var%POE~ @684 /* And this one will be stirring indeed, my friends, if I have done it any justice. */
END

I_C_T ~%tutu_var%POE~ 15 rh#int.poe2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)
Global("MACFirewineKnights","GLOBAL",0)~ THEN 
@685 /* A... troubling tale, to say the least. */
== ~%tutu_var%POE~ @686 /* Not all stories are pleasant, my lady. */
== RH#ISRAJ @687 /* No... no, they are not. */
== ~%tutu_var%POE~ @688 /* In any case, I hope you found it satisfying, my friends. */
END

I_C_T ~%tutu_scriptbg%KNIGHT%eet_var%~ 0 rh#int.knights1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@689 /* Surely we can find some way to help these knights find peace, <CHARNAME>. */
END

I_C_T ~%tutu_scriptbg%KNIGHT%eet_var%~ 1 rh#int.knights2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@690 /* May you... may you rest in peace, my friends. */
== ~%tutu_scriptbg%KNIGHT%eet_var%~ @691 /* So we shall... */
END

I_C_T ~%tutu_var%OGRMA3~ 1 rh#int.firewine1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@692 /* The only thing you're going to get from this, ogre, is a painful death! */
== ~%tutu_var%OGRMA3~ @693 /* HAH HAH! So you say! */
END

I_C_T ~%tutu_var%OGRMA3~ 2 rh#int.firewine2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@692 /* The only thing you're going to get from this, ogre, is a painful death! */
== ~%tutu_var%OGRMA3~ @693 /* HAH HAH! So you say! */
END

I_C_T ~%tutu_var%OGRMA3~ 3 rh#int.firewine3
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@692 /* The only thing you're going to get from this, ogre, is a painful death! */
== ~%tutu_var%OGRMA3~ @693 /* HAH HAH! So you say! */
END

// Korax
// -----
I_C_T ~%tutu_var%KORAX~ 3 rh#int.korax
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@694 /* You... you would accept help from this revolting creature? It will no doubt turn on us soon enough anyway. */
== ~%tutu_var%KORAX~ @695 /* Me good boy! */
END

// Bassilus
// --------
I_C_T ~%tutu_var%BASSIL~ 2 rh#int.bassilus
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@696 /* By Sune, this Cyricist is as mad as his god! We had best destroy him quickly, <CHARNAME>. */
END

// Lena & Samuel
// -------------
I_C_T ~%tutu_var%LENA~ 3 rh#int.lena
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@697 /* We must help them, <CHARNAME>. By Sune, I can only pray that he still has the strength to survive the journey. */
== ~%tutu_var%LENA~ @698 /* I... I know, it's no sure thing. But please help! */
END

// Albert
// ------
I_C_T ~%tutu_var%ALBERT~ 10 rh#int.albert
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@699 /* By Sune! What wretched fiend did we just aid!? */
== ~%tutu_var%ALBERT~ @700 /* Hmm? Oh, calm down, lady. I don't want to fight you. */
END

// Sendai
// ------
INTERJECT ~%tutu_scriptbg%SENDAI%eet_var%~ 0 rh#int.sendai
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@701 /* My lady, you dishonor both your house and our nation with such an appalling lack of courtesy. */
== ~%tutu_scriptbg%SENDAI%eet_var%~ @702 /* Is that so? No amount of acquired class could erase your accent entirely. Is Eshpurta not enough of a backwater for you that you feel compelled to traipse around with these barbarians instead? */
END
	++ @703 /* You insult your own countrywoman, and then have the nerve to call us barbarians? */ + rh#int.sendai2
	++ @704 /* I am tired of being insulted by every pompous idiot that I come across. Draw steel! */ + 2
	++ @705 /* Who are you, and what do you want? */ + 3

CHAIN ~%tutu_scriptbg%SENDAI%eet_var%~ rh#int.sendai2
@706 /* I would not expect you to understand, given your boorish upbringing. A person is no better than the company she keeps, and your company, peasant, is lacking indeed. */
EXTERN ~%tutu_scriptbg%SENDAI%eet_var%~ 3

// Random Commoner
// ---------------
I_C_T ~%tutu_var%MTOB3~ 0 rh#int.commoner
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@707 /* You will keep a courteous tongue in your mouth! */
== ~%tutu_var%MTOB3~ @708 /* Apologies, m'lady. */
END

// Cloakwood
// ---------
I_C_T ~%tutu_var%TIBER~ 1 rh#int.tiber1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@709 /* <CHARNAME>, I know we have other tasks here, but we could have spared the time. */
== ~%tutu_var%TIBER~ @710 /* I'm... I'm sorry... */
END

I_C_T ~%tutu_var%TIBER~ 3 rh#int.tiber2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@711 /* I assure you, we will do whatever we can. */
END

// Rill
// ----
I_C_T ~%tutu_scripts%LAVLEAD~ 2 rh#int.rill1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@712 /* It seems as feasible a plan to get these people out of here as we're likely to come across, <CHARNAME>. */
== ~%tutu_scripts%LAVLEAD~ @713 /* I'm sure it'll work. */
END

INTERJECT ~%tutu_scripts%LAVLEAD~ 3 rh#int.rill2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@714 /* <CHARNAME>, have you no compassion at all!? We can easily spare 100 gold. */
EXTERN ~%tutu_scripts%LAVLEAD~ 4

APPEND ~%tutu_var%MINEC2~

IF WEIGHT #-100 ~PartyHasItem("%tutu_scriptbg%MISC83") InParty("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN BEGIN rh#8
  SAY @715 /* Hey there again. I see that you have the key. It must have been a bloody battle with the master, and you must be tough ones to have lived through it. All right then, give the key and let's be done with this. Oh, one more thing, you did talk to Rill, didn't you? So that all of the slaves could get out of here alive. */
  ++ @716 /* Who cares about the other slaves! Just open the plug so that we can flood this place and get out of here. */ + 9
  + ~!Global("FREESLAV","GLOBAL",1) !Global("rh#IsraCloakwoodDrowned","GLOBAL",1)~ + @717 /* Yes, we talked to Rill. You don't have to worry about your friends. They'll all be safe. Here's the key, now let's do it. */ DO ~SetGlobal("rh#IsraCloakwoodDrowned","GLOBAL",1)~ EXTERN RH#ISRAJ slaveinterjection
  + ~Global("FREESLAV","GLOBAL",1)~ + @717 /* Yes, we talked to Rill. You don't have to worry about your friends. They'll all be safe. Here's the key, now let's do it. */ + 10
  ++ @718 /* We don't want to drown the mine just yet. Stay around here, and we might come back for you later. */ + 11
END
END

APPEND RH#ISRAJ

IF ~~ slaveinterjection
 SAY @719 /* Are you mad, <CHARNAME>, or really so callous? We haven't spoken to Rill yet, and I certainly won't be party to a massacre! */
IF ~~ THEN EXTERN ~%tutu_var%MINEC2~ 9
END

IF ~Global("rh#IsraCloakwoodDrowned","GLOBAL",2)~ slaves
  SAY @720 /* You were really going to murder all of those slaves, weren't you? No, don't even speak. I don't want to hear more of your lies, <CHARNAME>. Nor do I wish to keep your company any longer. */
IF ~~ DO ~SetGlobal("rh#CloakwoodDrowned","GLOBAL",3) SetGlobal("rh#IsraJoinedBG1","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END
END

I_C_T ~%tutu_scripts%LAVFREE~ 0 rh#int.slavefree
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@721 /* Then Rill's plan worked... 'tis something positive, at least. Sune's blessing upon you, and Ilmater's mercy as well. */
== ~%tutu_scripts%LAVFREE~ @722 /* Thank you, m'lady. */
END

// Scar
// ----
I_C_T ~%tutu_var%SCAR~ 2 rh#int.scar1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@723 /* 'Twould seem that matters are even uglier in Baldur's Gate than we had realized, if the Flaming Fist can no longer even trust its own. <CHARNAME>, this does seem important. */
== ~%tutu_var%SCAR~ @724 /* Very much so, I'm afraid. Are you interested? */
END

// Ogre Mage
// ---------
I_C_T ~%tutu_var%OGRMBA~ 0 rh#int.ogremage
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@725 /* By Sune, there is nothing about this scene that isn't utterly revolting! You will die for this travesty, ogre! */
END

// Lady Hannah
// -----------
I_C_T ~%tutu_var%HANNAH~ 1 rh#int.hannah
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@726 /* 'Tis a rather... distasteful idea, my lady. */
== ~%tutu_var%HANNAH~ @727 /* Hmph! The gallant ones are hard to come by outside of a bardic story. */
END

// Alatos, Thieves Guild
// ---------------------
I_C_T ~%tutu_var%ALATOS~ 10 rh#int.alatos
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@728 /* 'Twas foolish of us to step foot in this building at all, <CHARNAME>. I trust that this piece of petty mischief is not about to become a hobby for you. */
END

// Brevlick
// --------
I_C_T ~%tutu_var%BREVLI~ 0 rh#int.brevlick1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@729 /* I already don't care for the sound of this. */
END

I_C_T ~%tutu_var%BREVLI~ 14 rh#int.brevlick2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@730 /* If I didn't know better, I would think you were utterly enamored of this thing. */
== ~%tutu_var%BREVLI~ @731 /* Oh, that is the PERFECT way to describe this! */
END

I_C_T ~%tutu_var%BREVLI~ 17 rh#int.brevlick3
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@732 /* 'Tis certainly like no song of legend that I've ever enjoyed. <CHARNAME>, truly, are you out of your mind? */
== ~%tutu_var%BREVLI~ @733 /* Hee hee, aren't we all at least a little bit? */
END

// Varci
// -----
I_C_T ~%tutu_var%VARCI~ 4  rh#int.varci1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@734 /* You could have spared the time at least to speak with the child's guardian. */
END

// Tremain
// -------
I_C_T ~%tutu_var%TREMAI~ 4  rh#int.varci2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@735 /* I'm inclined to agree. If the local Tymorans have lost their thirst for danger, 'tis no fault of the child's. The wrath of the Umberlants is the last thing I would consider here, <CHARNAME>, though the decision is obviously yours. */
== ~%tutu_var%TREMAI~ @736 /* So it is. */
END

I_C_T ~%tutu_var%TREMAI~ 15  rh#int.varci3
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@737 /* *laugh* Love in all of its forms, my <PRO_LADYLORD>... 'tis a beautiful thing indeed. */
END

// Ocellis
// -------
I_C_T ~%tutu_var%OCELLI~ 0 rh#int.ocellis
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN
@738 /* Then... then 'tis more than mere rumor now. Eldath grant us peace, at least a while longer. */
== ~%tutu_var%OCELLI~ @739 /* Hopefully the Dukes will feel the same way. */
END

// Ragefast, Ramazith, and Abela
// -----------------------------
I_C_T ~%tutu_var%RAMAZI~ 6 rh#int.ramazith
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@740 /* Nymphs are beautiful beyond measure, aye, but useful and productive... I do not care for the words this mage uses, <CHARNAME>. Nor do I care for his company. */
== ~%tutu_var%RAMAZI~ @741 /* Forgive my clinical phrasing, my lady. I am a scholar, after all. Does my offer interest you? */
END

I_C_T ~%tutu_var%RAGEFA~ 6 rh#int.ragefast
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@742 /* Love? This is not love, wizard; 'tis mere slavery! You make a mockery of the Lady Firehair with such claims! */
== ~%tutu_var%RAGEFA~ @743 /* You're wrong, woman! */
END

I_C_T ~%tutu_var%ABELA~ 4 rh#int.abela
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@744 /* You handled that very wisely, <CHARNAME>... and more calmly by far than I would have done myself, I fear. 'Twas a pleasure simply to listen. */
== ~%tutu_var%ABELA~ @745 /* Thank you all again. */
END

I_C_T ~%tutu_var%ABELA~ 8 rh#int.abela2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@746 /* <CHARNAME>, whatever plan Ramazith has for this nymph, I fear that it is dark indeed. Do NOT follow through with this. */
== ~%tutu_var%ABELA~ @747 /* Please! */
END

I_C_T ~%tutu_var%RAMAZI~ 15 rh#int.abela3
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@748 /* <CHARNAME>, this is utterly monstrous! You cannot mean to simply stand by! */ 
== ~%tutu_var%RAMAZI~ @749 /* Are you still here? Please leave. */
DO ~SetGlobal("rh#IsraRamazith","GLOBAL",1)~
END

I_C_T ~%tutu_var%ABELA~ 12 rh#int.abela4
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@750 /* By Sune, are you mad!? I have had enough of this farce! */
DO ~SetGlobal("rh#IsraJoinedBG1","GLOBAL",0) LeaveParty() EscapeArea()~
== ~%tutu_var%ABELA~ @751 /* I am finished with mortals! */
END

APPEND RH#ISRAJ

IF ~Global("rh#IsraRamazith","GLOBAL",2)~ rh#int.abela4
 SAY @752 /* You would truly leave her with that mad wizard, <CHARNAME>? This is cruelty I had not expected of you, and a wrong I feel compelled to right, even if you don't. */
IF ~~ DO ~SetGlobal("rh#IsraRamazith","GLOBAL",3) SetGlobal("rh#IsraJoinedBG1","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END
END

// Undercellar
// -----------
CHAIN IF ~Global("rh#IsraUndercellar","GLOBAL",2)~ THEN RH#ISRAJ rh#int.cellar1
@753 /* By Sune, this place is utterly disgusting. I hope you don't plan to linger here any longer than necessary, my <PRO_LADYLORD>. */
DO ~SetGlobal("rh#IsraUndercellar","GLOBAL",3)~
END
	++ @754 /* We've been here longer than I would have liked already. */ + rh#int.cellar2
	++ @755 /* You're making the guards a bit nervous, Isra. */ + rh#int.cellar3
	++ @756 /* You won't catch anything simply by breathing the same air. */ + rh#int.cellar4
	++ @757 /* Come now! I thought that you would be a bit more tolerant when it comes to pleasure and passion. */ + rh#int.cellar5

CHAIN RH#ISRAJ rh#int.cellar2	
@758 /* Then mayhap we should be as quick as possible. */
EXIT

CHAIN RH#ISRAJ rh#int.cellar3	
@759 /* If it compels then to reconsider their current employment, so be it. */
EXIT

CHAIN RH#ISRAJ rh#int.cellar4	
@760 /* ... I hadn't even considered that. */
EXIT

CHAIN RH#ISRAJ rh#int.cellar5
@761 /* If this level of depravity and abuse is dedicated to any goddess, 'twould be Shar or Loviatar. I would ask you not to imply otherwise. */
EXIT

// Priest of Ilmater
// -----------------
I_C_T ~%tutu_var%PRIILMU~ 2 rh#int.ilmater1
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@762 /* Passion is not evil, sir, and I shall not stand by while you vilify the Lady Firehair by comparing her to succubi and erinyes! */
== ~%tutu_var%PRIILMU~ @763 /* I mean no disrespect to your faith, m'lady. Ahh... quite the opposite indeed! */
END

I_C_T ~%tutu_var%PRIILMU~ 4 rh#int.ilmater2
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@764 /* You despicable fraud! */
END

// Areana
// ------
I_C_T ~%tutu_var%NOBW8~ 3 rh#int.areana
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@765 /* Help you? You speak as if you think this an act of chivalry, not of murder. You should be utterly ashamed of yourself, my lady. */ 
== ~%tutu_var%NOBW8~ @766 /* I... I know it is unsavory, but meet him for yourself and you will see who is in the right here! */
END

// Neb
// ---
I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 6 rh#int.neb
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@767 /* The only thing I want from you, butcher, is to put a blade through your loathsome heart! */
== ~%tutu_scriptbg%NEB%eet_var%~ @768 /* Heh heh, but there's a whole wide world of people outside of these walls to slay instead. */
END

// Krystin & Slythe
// ----------------
APPEND RH#ISRAJ

IF ~Global("rh#IsraKrystinSlythe","GLOBAL",1)~ rh#int.slythe
 SAY @769 /* Madness and cruelty masquerading as love and devotion... I don't whether I should feel pity or disgust. */
 = @770 /* Would that they could finally learn in death what they failed to appreciate in life, though I find it rather unlikely. */
IF ~~ DO ~SetGlobal("rh#IsraKrystinSlythe","GLOBAL",2)~ EXIT
END
END

// Tamoko
// ------
I_C_T ~%tutu_var%TAMOKO~ 16 rh#int.tamoko
== RH#ISRAJ IF ~InParty("rh#Isra") InMyArea("rh#Isra") !StateCheck("rh#Isra",CD_STATE_NOTVALID)~ THEN 
@771 /* My lady, if I might ask, does Sarevok share your affections? */
== ~%tutu_var%TAMOKO~ @772 /* He... he did once, and he could again, if he is pulled back from this ledge-- */
== RH#ISRAJ @773 /* But you cannot say that he loves you right now. Truly, I would be surprised if he even could. */
== ~%tutu_var%TAMOKO~ @774 /* It does not matter. */
END

// Low Reputation
// --------------
CHAIN IF ~Global("rh#IsraLowRep","GLOBAL",1)~ THEN RH#ISRAJ rh#int.rep1
@775 /* <CHARNAME>, I should like to warn you that I don't care for some of the decisions that you have been making. I trust that you will rectify matters as quickly as possible? */
DO ~SetGlobal("rh#IsraLowRep","GLOBAL",2)~
END
	+ ~InParty("Viconia")~ + @776 /* If people look at us poorly, it's only because of Viconia. */ + rh#int.rep2
	++ @777 /* I'm afraid this is how I operate. */ + rh#int.rep3
	++ @778 /* Don't worry, I intend to. */ + rh#int.rep4

CHAIN RH#ISRAJ rh#int.rep2
@779 /* Then see to it that we compensate properly for the Sharran's presence. */
EXIT

CHAIN RH#ISRAJ rh#int.rep3
@780 /* I see. Then I'm afraid I have little choice but to take my leave of your company. */
DO ~SetGlobal("rh#IsraJoinedBG1","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

CHAIN RH#ISRAJ rh#int.rep4
@781 /* I certainly hope so. */
EXIT

CHAIN IF ~Global("rh#IsraRepBreak","GLOBAL",1)~ THEN RH#ISRAJ rh#int.repbreak
@782 /* I had thought you better than this, <CHARNAME>, but I see that I was mistaken. In honor of our former friendship, I won't take action against you now, but I pray our paths don't meet again. */
DO ~SetGlobal("rh#IsraRepBreak","GLOBAL",2) SetGlobal("rh#IsraJoinedBG1","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT


/* --------------------------- *
 *  Player Initiated Dialogue  *
 * --------------------------- */

APPEND RH#ISRAJ

IF ~IsGabber(Player1)~ THEN BEGIN pid
 SAY @783 /* Yes, what is it? */
	+ ~RandomNum(4,1)~ + @784 /* How are you? */ + howru1
	+ ~RandomNum(4,2)~ + @784 /* How are you? */ + howru2
	+ ~RandomNum(4,3)~ + @784 /* How are you? */ + howru3
	+ ~RandomNum(4,4)~ + @784 /* How are you? */ + howru4
	+ ~RandomNum(4,1)~ + @785 /* What are you thinking about? */ + think1
	+ ~RandomNum(4,2)~ + @785 /* What are you thinking about? */ + think2
	+ ~RandomNum(4,3)~ + @785 /* What are you thinking about? */ + think3
	+ ~RandomNum(4,4)~ + @785 /* What are you thinking about? */ + think4
	++ @786 /* Could you tell me about your religion? */ + religion
	++ @787 /* What do you think about our quest? */ + quest
	++ @788 /* Could you tell me about your family? */ + family
	++ @789 /* I'd like to hear more about Amn. */ + amn
	++ @790 /* What's Crimmor like? */ + crimmor
	++ @791 /* You're a Sunite. Have you ever been in love before? */ + love
	+ ~OR(2) !Global("rh#IsraRomanceCheck","GLOBAL",1) GlobalLT("rh#IsraTalksBG1","GLOBAL",10) !Global("P#BranwenRomanceActive","GLOBAL",2) !Global("X#DynaheirRomanceActive","GLOBAL",2) !Global("B!GavinRomanceActive","GLOBAL",2)  !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#XARomanceActive","GLOBAL",2) OR(2) !GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoranRomanceInactive","GLOBAL",1)~ + @792 /* Are you sure you wouldn't want to get to know each other a little better? */ + romance1
	+ ~Global("rh#IsraRomanceCheck","GLOBAL",1) GlobalGT("rh#IsraTalksBG1","GLOBAL",10)
	GlobalLT("rh#IsraTalksBG1","GLOBAL",16) !Global("P#BranwenRomanceActive","GLOBAL",2) !Global("X#DynaheirRomanceActive","GLOBAL",2) !Global("B!GavinRomanceActive","GLOBAL",2)  !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#XARomanceActive","GLOBAL",2) OR(2) !GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoranRomanceInactive","GLOBAL",1)~ + @792 /* Are you sure you wouldn't want to get to know each other a little better? */ + romance2
	+ ~Global("rh#IsraRomanceCheck","GLOBAL",1) 
	GlobalGT("rh#IsraTalksBG1","GLOBAL",16) !Global("B!GavinRomanceActive","GLOBAL",2) !Global("P#BranwenRomanceActive","GLOBAL",2) !Global("X#DynaheirRomanceActive","GLOBAL",2) !Global("X#AjantisRomanceActive","GLOBAL",2)
	!Global("X#XARomanceActive","GLOBAL",2)
	!Global("P#BranwenRomanceActive","GLOBAL",2) !Global("X#DynaheirRomanceActive","GLOBAL",2) !Global("B!GavinRomanceActive","GLOBAL",2)  !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#XARomanceActive","GLOBAL",2) OR(2) !GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoranRomanceInactive","GLOBAL",1)~ + @792 /* Are you sure you wouldn't want to get to know each other a little better? */ + romance3
	+ ~OR(5) Global("B!GavinRomanceActive","GLOBAL",2) Global("P#BranwenRomanceActive","GLOBAL",2) Global("X#DynaheirRomanceActive","GLOBAL",2) Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#XARomanceActive","GLOBAL",2)~ + @792 /* Are you sure you wouldn't want to get to know each other a little better? */ + romance4
	+ ~GlobalGT("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1)~ + @792 /* Are you sure you wouldn't want to get to know each other a little better? */ + romance4	
	++ @793 /* What do you think about our companions? */ + companions
	++ @794 /* Is there something wrong with your voice? */ + stringfix	
	++ @795 /* Not at the moment. */ EXIT
END

IF ~~ howru1
 SAY @796 /* I am quite well, thank you. */
IF ~~ EXIT
END

IF ~~ howru2
 SAY @797 /* Somewhat bewildered by local customs, truth be told. */
IF ~~ EXIT
END

IF ~~ howru3
 SAY @798 /* 'Tis a question that perhaps I should ask of you instead, my <PRO_LADYLORD>. */
	++ @799 /* I'm perfectly alright. */ + howru3.1
	+ ~ReputationGT(Player1,11)~ + @800 /* I'm feeling slightly overwhelmed by things, truthfully. */ + howru3.2
	+ ~!ReputationGT(Player1,11)~ + @800 /* I'm feeling slightly overwhelmed by things, truthfully. */ + howru3.3
	++ @801 /* I've never been so exhausted in my life. */ + howru3.4
	++ @802 /* I've been missing Gorion a bit. */ + howru3.5
END

IF ~~ howru3.1
 SAY @803 /* I am glad to hear it. */
IF ~~ EXIT
END

IF ~~ howru3.2
 SAY @804 /* Then know that you have been doing an admirable job of things thus far. */
IF ~~ EXIT
END

IF ~~ howru3.3
 SAY @805 /* Aye, I had thought as much. */
IF ~~ EXIT
END

IF ~~ howru3.4
 SAY @806 /* Aye, it certainly takes some getting used to. */
IF ~~ EXIT
END

IF ~~ howru3.5
 SAY @807 /* Keep him in your heart, <CHARNAME>. 'Tis better than letting go of him entirely. */
IF ~~ EXIT
END

IF ~~ howru4
 SAY @808 /* Slightly nostalgic at the moment, mayhap. */
IF ~~ EXIT
END

IF ~~ think1
 SAY @809 /* Battle strategy, as it so happens. */
IF ~~ EXIT
END

IF ~~ think2
 SAY @810 /* The infrastructural differences between Amn and the Sword Coast. This whole region could be run somewhat more efficiently, I think. */
IF ~~ EXIT
END

IF ~~ think3
 SAY @811 /* *smile* The Lady Firehair. If I look somewhat enraptured, my <PRO_LADYLORD>, I assure you, I am still paying attention. */
IF ~~ EXIT
END

IF ~~ think4
 SAY @812 /* *smile* I was humming, wasn't I? I suppose I do that on occasion. */
IF ~~ EXIT
END

IF ~~ religion
 SAY @813 /* I would be happy to, of course. What would you care to know? */ 
	++ @814 /* I don't know that much about Sune. */ + sune
	++ @815 /* I didn't know there were paladin orders other than the Radiant Heart. */ + orders
	++ @816 /* Could you tell me about your novitiate? */ + novice
	++ @817 /* What is your church like? */ + church
	++ @818 /* Actually, never mind. */ EXIT 
END 

IF ~~ sune
 SAY @819 /* Aye, her worship is not nearly as widespread here as I would like. Sune is the fairest of the gods: beautiful, passionate, and boundlessly loving. She cares for her followers on a level that is somewhat unusual for a deity, mayhap, and asks only the same in return. */
	++ @820 /* Isn't she a strange choice for a paladin? */ + sune1
	++ @821 /* Could you tell me her dogma? */ + sune2
	++ @822 /* Do you need to be beautiful to worship her? */ + sune3
	++ @823 /* Is she very popular in Amn? */ + sune4
END

IF ~~ sune1
 SAY @824 /* I do not think so, though others might disagree. We define our devotions to our gods in so many different ways, but at heart... 'tis based either in love or fear, I believe. I have no use for the latter. */ 
IF ~~ EXIT
END

IF ~~ sune2
 SAY @825 /* She asks us to encourage love and beauty, in ourselves, in others, and in the world at large. What exactly that means... there are as many interpretations of beauty as there are Sunites, I think. We all believe that beauty is more than skin deep, that the imprint of one's soul can be seen in one's features. Some take this to literal extremes, 'tis true, but I have always felt that external beauty is marred by a poor temper or evil intent. */
 = @826 /* We cherish art and do whatever we can to sponsor and protect its creators, and we dislike it when people hide themselves, their skills, or their treasures away. Beauty that is concealed does little to enrich Faerun in its entirety, nor does it truly even benefit its possessor. Enriching one another's lives... aye, for me, that is the key to understanding the Firehair's dogma, though others, even amongst the faithful, may well interpret it differently. */
IF ~~ EXIT
END

IF ~~ sune3
 SAY @827 /* Yes and no, I would say. There is more to beauty than mere flesh, though we are all expected to cultivate our appearances to the best of our abilities. But no, nobody with love in their heart would be turned from her worship. */
IF ~~ EXIT
END

IF ~~ sune4
 SAY @828 /* Exceedingly so, yes, though... not entirely for the reasons I would like, I admit. */
IF ~~ EXIT
END

IF ~~ orders
 SAY @829 /* A small handful, certainly. Sune, Lathander, and Milil each sponsor orders, though none are as large or well-organized as the Radiant Heart. */
	++ @830 /* You never considered Torm or Tyr instead? */ + orders1
	++ @831 /* Would the Radiant Heart turn people away on religious grounds? */ + orders2
	++ @832 /* Milil? The god of poetry? */ + orders3
	++ @833 /* Those are all allied churches, aren't they? */ + orders4
END

IF ~~ orders1
 SAY @834 /* No. Their faiths do important work, but duty and justice, without anything else behind them... I could never serve that. */
IF ~~ EXIT
END

IF ~~ orders2
 SAY @835 /* Not explicitly, I do not think, though 'twould be somewhat difficult for a member of a different faith to find patronage. */
IF ~~ EXIT
END 

IF ~~ orders3
 SAY @836 /* Aye. Most songs concerning knights are inspired by those of his order... they tend to prefer to travel with bards, and seldom simply for the pleasure of their company. */ 
IF ~~ EXIT
END

IF ~~ orders4
 SAY @837 /* Aye. 'Tis why I know more about them. Lathander, Milil, Lliira, Selûne, Sharess, and several deities amongst the elven pantheon as well, though I am somewhat less familiar with the Seldarine. */
IF ~~ EXIT
END 

IF ~~ novice
 SAY @838 /* 'Twas... trying at times, mayhap, but ultimately rewarding. I was twelve when I was entrusted to the Order of the Ruby Rose, and I had already spent several years studying under Eshpurta's finest military instructors, so weapons training was nothing out of the ordinary for me. As for religious training... in the church of Sune, 'tis more an endeavor of love than a chore. */
	++ @839 /* Was it different than it would have been in another order? */ + novice1 
	++ @840 /* What was your actual squiredom like? */ + novice2
	++ @841 /* Did they teach you to talk like that too? */ + novice3
	++ @842 /* How cloistered was it? */ + novice4
END

IF ~~ novice1
 SAY @843 /* I should think so, aye. Discipline, honor, courtesy, and the other virtues are as important to us as they are to any other order, but we are also expected to be able to coexist with the rest of our church, and Heartwarders can be some of the staunchest individualists in the Realms. 'Twas a difficult lesson at times, but one better learned as a child than as an adult. */
IF ~~ EXIT
END  
 
IF ~~ novice2
 SAY @844 /* Not quite as eventful as you might expect. Sir Evendur took me on when I was a teenager, though I cannot say that I personally saw a great deal of battle. Unlike the Radiant Heart, we do not have a standing army, and tend to focus upon larger, more terrible evils in any case. Truly, a dragon's den is no place for a squire, though waiting outside with the horses has its own lessons on patience, bravery, and humility to impart. */ 
IF ~~ EXIT
END

IF ~~ novice3
 SAY @845 /* *laugh* Not as such, no, but after eight years, one begins to pick up such habits. Friends and family have made jests about it in the past, but I can only manage to slip out of it for a few moments before reverting. */ 
IF ~~ EXIT
END

IF ~~ novice4
 SAY @846 /* I... truly would not be the best judge of that. The Firehair expects us not to hide ourselves away, and we take that commandment very seriously. Whether we entirely succeed, I could not say. */ 
IF ~~ EXIT
END

IF ~~ church
 SAY @847 /* *laugh* It very nearly changes from one tenday to the next, I must admit. Our clerics are... unpredictable, to say the least. In Crimmor, 'tis even more evident, as we share our temple with the faithful of Lliira and Milil as well. */ 
	++ @848 /* Does working with such a chaotic church ever get irritating? */ + church1
 	++ @849 /* Who else worships her? */ + church2
 	++ @850 /* The rumors of wild Sunite revelry aren't exaggerated, I take it. */ + church3
	++ @851 /* That sounds like an odd set-up. */ + church4
END
 
IF ~~ church1
 SAY @852 /* It has its own trials and rewards, I should think. */
IF ~~ EXIT
END

IF ~~ church2
 SAY @853 /* Lovers, artists, bards and minstrels, and far more adventurers than one might have expected. */
IF ~~ EXIT
END

IF ~~ church3
 SAY @854 /* That would depend upon the rumor in question, I think. There is revelry, aye, and some of it is certainly too wild for my tastes, but the most sacred of our festivals are actually quite quiet affairs. */
IF ~~ EXIT
END

IF ~~ church4
 SAY @855 /* Sune holds sway in the morn, Milil in the afternoon, and Lliira in the evening. The arrangement is... strangely casual, aye, though it does seem to work out well enough. */
IF ~~ EXIT
END

IF ~~ quest
 SAY @856 /* I'm growing increasingly more concerned about what we might find at the end of it, truly. Still, every step that we have taken has pushed back the darkness just a little bit more. */
IF ~~ EXIT
END 

IF ~~ family
 SAY @857 /* *smile* I am Amnish, <CHARNAME>. Do you mean to ask about my immediate family or lineage? */
	+ ~GlobalLT("rh#IsraTalksBG1","GLOBAL",12)~ + @858 /* I meant your immediate, yes. */ + family1
	+ ~GlobalGT("rh#IsraTalksBG1","GLOBAL",12)
	GlobalLT("rh#IsraTalksBG1","GLOBAL",16)~ + @858 /* I meant your immediate, yes. */ + family2
	+ ~GlobalGT("rh#IsraTalksBG1","GLOBAL",16)~ + @858 /* I meant your immediate, yes. */ + family3
	++ @859 /* I meant ancestry. Your name is Calishite, isn't it? */ + family4
END 

IF ~~ family1
 SAY @860 /* My father was a general, and my mother was once a bard. They are both living in Eshpurta now in semi-retirement, though I know my mother loathes it and would much rather return to Crimmor. I have two older sisters as well, both of whom are currently in Athkatla, as far as I know. */
IF ~~ EXIT
END

IF ~~ family2
 SAY @861 /* I am sure you have already heard more than enough about my father. Mother was a bard once... an odd match, mayhap, but they have made it work for the most part. My older sisters are currently both living in Athkatla, I believe. */
IF ~~ EXIT
END 

IF ~~ family3
 SAY @862 /* We were all quite close once, as impossible as that might now seem. I... truly would rather not speak of them at present, <CHARNAME>. */
IF ~~ EXIT
END 
 
IF ~~ family4
 SAY @863 /* Aye, my father's ancestors were Calishite warlords, I have been told. Unfortunately, our family has never entirely lost its militant edge. My mother, however, is a member of the Crytrapper family, one of Amn's major noble mercantile houses. */
IF ~~ EXIT
END  

IF ~~ amn
 SAY @864 /* Amn is an... extravagant land, to say the least, though we are somewhat more generous in our passion for wealth than we could be. Status in Amn comes from displaying prosperity rather than through simply having it, so our nobles compete by throwing the most lavish celebrations they can afford. Whatever else can be said about the practice, money that would otherwise have been hoarded away does instead find its way to those who need it more, and I have no quarrel with that much. */
IF ~~ EXIT
END

IF ~~ crimmor
 SAY @865 /* Lovely, truly, though it can grow slightly loud during caravan season. It may well be that every caravan in Faerun passes through the city at some point... some people certainly claim as much. */
 = @866 /* The mayor is a good man, supported by equally good people, and the faiths of Sune, Lliira, Milil, and Chauntea hold sway above others. Whether Crimmor's prosperity is due to good leadership or caring religions, I could not say. Mayhap some combination of the two. */
 = @867 /* There is very little crime -- some say that the Shadow Thieves owe a favor to my mother's family and have forbidden thievery within the city, as a result. I don't care for the implications, of course, but the evidence is clear enough. */
 = @868 /* Not everybody within Crimmor is pleasant, however, and there have been Athkatlan powers who have tried to increase their influence within the city. So far to relatively little success, and I pray it remains that way. */ 
IF ~~ EXIT
END

IF ~~ love
 SAY @869 /* *laugh* I love easily enough, my <PRO_LADYLORD>, though this life does not make such things simple. Mayhap 'tis somewhat faint-hearted of me, but I would not wish to burden a potential spouse with my death. */
IF ~~ EXIT
END

IF ~~ romance1
 SAY @870 /* *smile* I won't pretend that I don't enjoy the attention, my <PRO_LADYLORD>, but I am a paladin of Sune. I have no wish to reinforce certain... conceptions about my church. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1)~ EXIT
END 

IF ~~ romance2
 SAY @871 /* *smile* Your interest is appreciated, my <PRO_LADYLORD>, but 'twould be somewhat inappropriate, I think. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1)~ EXIT
END 

IF ~~ romance3
 SAY @872 /* Under other circumstances, <CHARNAME>... well, it makes little difference, truly. I do not think that either of us can afford to think about such things right now. */
IF ~~ DO ~IncrementGlobal("rh#IsraFlirtBG1","GLOBAL",1)~ EXIT
END 

IF ~~ romance4
 SAY @873 /* 'Twould be highly inappropriate, <CHARNAME>, given your current attachments. I am disappointed that you would even make such a suggestion. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceCheck","GLOBAL",2)~ EXIT
END  
 
IF ~~ companions
 SAY @874 /* 'Twould depend upon the person in question. */
	+ ~InParty("Ajantis")~ + @875 /* Ajantis? */ + Ajantis
	+ ~InParty("Alora")~ + @876 /* Alora? */ + Alora
	+ ~InParty("Branwen")~ + @877 /* Branwen? */ + Branwen
	+ ~InParty("Coran")~ + @878 /* Coran? */ + Coran
	+ ~InParty("Dorn")~ + @879 /* Dorn? */ + Edwin
	+ ~InParty("Dynaheir")~ + @880 /* Dynaheir? */ + Dynaheir
	+ ~InParty("Edwin")~ + @881 /* Edwin? */ + Edwin
	+ ~InParty("Eldoth")~ + @882 /* Eldoth? */ + Edwin
	+ ~InParty("Faldorn")~ + @883 /* Faldorn? */ + Faldorn
	+ ~InParty("sufinch")~ + @884 /* Finch? */ + Jaheira
	+ ~InParty("Garrick")~ + @885 /* Garrick? */ + Garrick
	+ ~InParty("b!gavin")~ + @886 /* Gavin? */ + Gavin
	+ ~InParty("%IMOEN_DV%")~ + @887 /* Imoen? */ + Alora
	+ ~InParty("J#Indi")~ + @888 /* Indira? */ + Jaheira
	+ ~InParty("Jaheira")~ + @889 /* Jaheira? */ + Jaheira
	+ ~InParty("Kagain")~ + @890 /* Kagain? */ + Edwin
	+ ~InParty("Khalid")~ + @891 /* Khalid? */ + Khalid
	+ ~InParty("Kivan")~ + @892 /* Kivan? */ + Kivan
	+ ~InParty("Minsc")~ + @893 /* Minsc? */ + Minsc
	+ ~InParty("Montaron")~ + @894 /* Montaron? */ + Edwin
	+ ~InParty("a#murn")~ + @895 /* Mur'Neth? */ + Edwin
	+ ~InParty("Quayle")~ + @896 /* Quayle? */ + Xan
	+ ~InParty("Neera")~ + @897 /* Neera? */ + Neera
	+ ~InParty("Rasaad")~ + @898 /* Rasaad? */ + Gavin
	+ ~InParty("Safana")~ + @899 /* Safana? */ + Faldorn
	+ ~InParty("Sharteel")~ + @900 /* Shar-Teel? */ + Faldorn
	+ ~InParty("Skie")~ + @901 /* Skie? */ + Skie
	+ ~InParty("Tiax")~ + @902 /* Tiax? */ + Xan
	+ ~InParty("t2Val")~ + @903 /* Valerie? */ + Valerie
	+ ~InParty("Viconia")~ + @904 /* Viconia? */ + Viconia
	+ ~InParty("Xan")~ + @905 /* Xan? */ + Xan
	+ ~InParty("Xzar")~ + @906 /* Xzar? */ + Edwin
	+ ~InParty("Yeslick")~ + @907 /* Yeslick? */ + Yeslick
END

IF ~~ Ajantis
 SAY @908 /* He is an admirable man and a stalwart ally, to say the least. I like him well enough, even if our faiths are too disparate to give us a great deal of common ground. */
IF ~~ EXIT
END

IF ~~ Alora
 SAY @909 /* I pray that this world does not strip her of that innocence. */
IF ~~ EXIT
END

IF ~~ Branwen
 SAY @910 /* I am opposed to her faith, though I have nothing but respect for the priestess herself. */
IF ~~ EXIT
END

IF ~~ Coran
 SAY @911 /* *laugh* He is far too charming for me to be impartial, I'm afraid. */
IF ~~ EXIT
END

IF ~~ Dynaheir
 SAY @912 /* Having made her acquaintance, I cannot help but wonder what other treasures Rashemen is hiding away from the world. */
IF ~~ EXIT
END

IF ~~ Edwin
 SAY @913 /* Anything I have to say concerning him, my <PRO_LADYLORD>, I shall say to his face. */
IF ~~ EXIT
END

IF ~~ Faldorn
 SAY @914 /* Anything I have to say concerning her, my <PRO_LADYLORD>, I shall say to her face. */
IF ~~ EXIT
END

IF ~~ Garrick
 SAY @915 /* He has a good heart but could do with some more direction. Mayhap his experiences with this group will prove beneficial. */
IF ~~ EXIT
END

IF ~~ Gavin
 SAY @916 /* I have nothing but respect for both him and his faith. I do appreciate his company. */
IF ~~ EXIT
END

IF ~~ Jaheira
 SAY @917 /* I have no quarrel with her. */
IF ~~ EXIT
END

IF ~~ Khalid
 SAY @918 /* He is a good man, a staunch ally, and a dedicated husband. I really do quite like him. */
IF ~~ EXIT
END

IF ~~ Kivan
 SAY @919 /* Tragedy ways heavily upon him, aye, but he remains a good man despite it. */
IF ~~ EXIT
END

IF ~~ Minsc
 SAY @920 /* His heart is truer than most. */
IF ~~ EXIT
END

IF ~~ Neera
 SAY @921 /* I have no great love for wild magic, though she herself is pleasant enough company. */
IF ~~ EXIT
END

IF ~~ Skie
 SAY @922 /* Truly, I think it utterly irresponsible that we haven't yet returned her to her home. That is all I am willing to say about her, however. */
IF ~~ EXIT
END

IF ~~ Valerie
 SAY @923 /* I have nothing against her. */
IF ~~ EXIT
END

IF ~~ Viconia
 SAY @924 /* The Sharran? I prefer her where I can see her, but I must warn you never to trust a word that she says. */
IF ~~ EXIT
END

IF ~~ Xan
 SAY @925 /* I do not know what to make of him, truth be told. */
IF ~~ EXIT
END

IF ~~ Yeslick
 SAY @926 /* I have very little familiarity with his people, though I'm grateful for the chance to rectify that. I can imagine few worthier than Yeslick. */
IF ~~ EXIT
END

IF ~~ stringfix 
SAY @927 /* I... don't believe so. */ 
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("rh#isfix")~ EXIT 
END
END