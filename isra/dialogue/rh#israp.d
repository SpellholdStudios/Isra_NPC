BEGIN RH#ISRAP

IF ~Global("rh#IsraJoinedBG1","GLOBAL",1)~ p1
 SAY @0 /* You truly wish to part company, my <PRO_LADYLORD>? */
 	++ @1 /* For the moment, yes. */ + p2
 	++ @2 /* Sorry, no. I'd rather not. */ + p3
END
 
IF ~~ p2
 SAY @3 /* I see. I shall have to return to Amn, then. Should you change your mind, you may yet be able to find me in Nashkel for a time. */
IF ~~ DO ~SetGlobal("rh#IsraJoinedBG1","GLOBAL",0) EscapeAreaMove("%Nashkel_Inn%",609,463,3)~ EXIT
END

IF ~~ p3
 SAY @4 /* Very well. I am pleased to hear it. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("rh#IsraJoinedBG1","GLOBAL",0)~ p4
 SAY @5 /* Hello, <CHARNAME>. Truly, 'tis a pleasure to see you. */
	++ @6 /* Would you care to join up with me again? */ + p5
	++ @7 /* Hello, Isra. I was just checking to see how you were. */ + p6
	++ @8 /* You're still here? Shouldn't you be heading home? */ + p7
END

IF ~~ p5
 SAY @9 /* Certainly, my <PRO_LADYLORD>. */
IF ~~ DO ~SetGlobal("rh#IsraJoinedBG1","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ p6
 SAY @10 /* Quite well, thank you, though I mean to head south as soon as possible. */
IF ~~ EXIT
END

IF ~~ p7
 SAY @11 /* Aye, I intend to as soon as possible. */
IF ~~ EXIT
END