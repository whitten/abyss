;"***************************************************************************"
; "game : Abyss"
; "file : SYNTAX.ZIL"
; "auth :   $Author:   DEB  $"
; "date :     $Date:   20 Mar 1989  8:44:54  $"
; "rev  : $Revision:   1.17  $"
; "vers : 1.0"
;"---------------------------------------------------------------------------"
; "Syntax"
; "Copyright (C) 1988 Infocom, Inc.  All rights reserved."
;"***************************************************************************"
 
<SYNONYM WITH USING>
<SYNONYM TO TOWARD TOWARDS>
<SYNONYM AROUND ALONG>
<SYNONYM ALL BOTH>
<SYNONYM THROUGH THRU>
;<SYNONYM UNDER UNDERNEATH BENEATH>
<SYNONYM IN INTO INSIDE>
;<SYNONYM OUT OUTSIDE>
<SYNONYM ON ONTO>
 
<DIR-SYNONYM FORE F>
<DIR-SYNONYM AFT A>
<DIR-SYNONYM PORT P>
<DIR-SYNONYM STARBOARD SB>
 
<DIR-SYNONYM NORTH N>
<DIR-SYNONYM SOUTH S>
<DIR-SYNONYM EAST E>
<DIR-SYNONYM WEST W>
 
<DIR-SYNONYM DOWN D>
<DIR-SYNONYM DOWN DOWNSTAIRS>
<DIR-SYNONYM UP U>
<DIR-SYNONYM UP UPSTAIRS>
 
<BUZZ	NOW SOON THERE PLEASE BACK ANYWAY OH>
 
;"---------------------------------------------------------------------------"
; "Game verbs"
;"---------------------------------------------------------------------------"
 
<SYNTAX $REFRESH = V-$REFRESH>
<VERB-SYNONYM $REFRESH R>
<SYNTAX $VERIFY = V-VERIFY>
<SYNTAX $VERIFY OBJECT = V-VERIFY>
 
%<DEBUG-CODE <SYNTAX \#COMMAND = V-COMMAND>>
%<DEBUG-CODE <SYNTAX \#RECORD = V-RECORD>>
%<DEBUG-CODE <SYNTAX \#UNRECORD = V-UNRECORD>>
 
<VERB-SYNONYM BRIEF VERBOSE SUPER SUPERBRIEF>
<SYNTAX BRIEF = V-DESC-LEVEL>
<VERB-SYNONYM QUIT Q>
<SYNTAX QUIT = V-QUIT>
<SYNTAX RESTART = V-RESTART>
<SYNTAX RESTORE = V-RESTORE>
<SYNTAX SAVE = V-SAVE>
<SYNTAX START OVER OBJECT (FIND FL-ROOMS) = V-RESTART>
<VERB-SYNONYM SCRIPT UNSCRIPT>
<SYNTAX SCRIPT = V-SCRIPT>
<SYNTAX UNDO = V-UNDO>
<VERB-SYNONYM VERSION $VERSION>
<SYNTAX VERSION = V-VERSION>
<SYNTAX SCORE = V-SCORE>
<SYNTAX DIAGNOSE = V-DIAGNOSE>
 
;"---------------------------------------------------------------------------"
; "A"
;"---------------------------------------------------------------------------"
 
<SYNTAX ASK OBJECT (ON-GROUND IN-ROOM) ABOUT OBJECT (EVERYWHERE) = V-ASK-ABOUT>
;<SYNTAX ASK OBJECT (ON-GROUND IN-ROOM) FOR OBJECT (EVERYWHERE) = V-ASK-FOR>
 
;<VERB-SYNONYM ATTACK KILL FIGHT HURT STAB SLAY STUN>
;<SYNTAX ATTACK OBJECT (ON-GROUND IN-ROOM) WITH OBJECT (FIND FL-WEAPON) (HELD CARRIED HAVE) = V-ATTACK>
 
<VERB-SYNONYM ATTACH CONNECT>
<SYNTAX ATTACH OBJECT TO OBJECT = V-ATTACH>
 
;"---------------------------------------------------------------------------"
; "B"
;"---------------------------------------------------------------------------"
 
<SYNTAX BLOW UP OBJECT = V-INFLATE> ; "DEB -- Do we need find tokens here?"
 
;<VERB-SYNONYM BREAK DESTROY DAMAGE SMASH WRECK>
;<SYNTAX BREAK OBJECT WITH OBJECT (FIND FL-BY-HAND) (HAVE HELD CARRIED) = V-BREAK>
;<SYNTAX BREAK OFF OBJECT WITH OBJECT (FIND FL-BY-HAND) (HAVE HELD CARRIED) = V-BREAK>
;<SYNTAX BREAK DOWN OBJECT WITH OBJECT (FIND FL-BY-HAND) (HAVE HELD CARRIED) = V-BREAK>
;<SYNTAX BREAK IN OBJECT (ON-GROUND IN-ROOM) WITH OBJECT (FIND FL-BY-HAND) (HAVE HELD CARRIED) = V-BREAK>
;<SYNTAX BREAK THROUGH OBJECT (ON-GROUND IN-ROOM) WITH OBJECT (FIND FL-BY-HAND) (HAVE HELD CARRIED) = V-BREAK>
;<SYNTAX BREAK OBJECT (ON-GROUND IN-ROOM) OFF OBJECT (ON-GROUND IN-ROOM) = V-BREAK>
 
;<VERB-SYNONYM BYE GOODBYE FAREWELL>
;<SYNTAX BYE OBJECT (FIND FL-ROOMS) = V-GOODBYE>
 
;"---------------------------------------------------------------------------"
; "C"
;"---------------------------------------------------------------------------"
 
<SYNTAX CLAMP OBJECT TO OBJECT = V-ATTACH>
 
<VERB-SYNONYM CLOSE SHUT>
<SYNTAX CLOSE OBJECT (FIND FL-OPENABLE) (HELD CARRIED ON-GROUND IN-ROOM) = V-CLOSE>
 
<SYNTAX CUT OBJECT WITH OBJECT (HELD HAVE TAKE) (FIND FL-KNIFE) = V-CUT>
 
;"---------------------------------------------------------------------------"
; "D"
;"---------------------------------------------------------------------------"
 
<SYNTAX DROP OBJECT (HELD CARRIED MANY HAVE TAKE) = V-DROP PRE-PUT>
<SYNTAX DROP OBJECT (HELD CARRIED MANY HAVE TAKE) DOWN OBJECT = V-PUT PRE-PUT>
<SYNTAX DROP OBJECT (HELD CARRIED MANY HAVE TAKE) IN OBJECT = V-PUT-IN PRE-PUT-IN>
<SYNTAX DROP OBJECT (HELD CARRIED MANY HAVE TAKE) ON OBJECT = V-PUT PRE-PUT>
 
;"---------------------------------------------------------------------------"
; "E"
;"---------------------------------------------------------------------------"
 
<VERB-SYNONYM EMPTY POUR>
<SYNTAX EMPTY OBJECT IN OBJECT (FIND FL-ROOMS) = V-EMPTY PRE-EMPTY>
<SYNTAX EMPTY OUT OBJECT IN OBJECT (FIND FL-ROOMS) = V-EMPTY PRE-EMPTY>
<SYNTAX EMPTY OBJECT ON OBJECT (FIND FL-ROOMS) = V-EMPTY PRE-EMPTY>
<SYNTAX EMPTY OUT OBJECT ON OBJECT (FIND FL-ROOMS) = V-EMPTY PRE-EMPTY>
<SYNTAX EMPTY OBJECT FROM OBJECT = V-EMPTY-FROM>
<SYNTAX EMPTY OUT OBJECT FROM OBJECT = V-EMPTY-FROM>
<SYNTAX EMPTY OBJECT OUT OBJECT = V-EMPTY-FROM>
 
<SYNTAX ENTER OBJECT (ON-GROUND IN-ROOM) = V-ENTER>
 
<VERB-SYNONYM EXAMINE X>
<SYNTAX EXAMINE OBJECT (HAVE EVERYWHERE) = V-EXAMINE ;PRE-EXAMINE>
 
<SYNTAX EXIT OBJECT (ON-GROUND IN-ROOM) = V-EXIT>
 
<SYNTAX EXTINGUISH OBJECT = V-EXTINGUISH>
 
;"---------------------------------------------------------------------------"
; "F"
;"---------------------------------------------------------------------------"
 
<VERB-SYNONYM FOLLOW CHASE TAIL>
<SYNTAX FOLLOW OBJECT (EVERYWHERE) = V-FOLLOW>
<SYNTAX FOLLOW AFTER OBJECT (EVERYWHERE) = V-FOLLOW>
 
;"---------------------------------------------------------------------------"
; "G"
;"---------------------------------------------------------------------------"
 
<SYNTAX GET OBJECT (FIND FL-TAKEABLE) (ON-GROUND IN-ROOM MANY) = V-TAKE PRE-TAKE>
<SYNTAX GET OBJECT (IN-ROOM CARRIED MANY) FROM OBJECT = V-TAKE PRE-TAKE>
<SYNTAX GET OBJECT (IN-ROOM CARRIED MANY) IN OBJECT = V-TAKE PRE-TAKE>
<SYNTAX GET OBJECT (CARRIED IN-ROOM MANY) OFF OBJECT = V-TAKE PRE-TAKE>
<SYNTAX GET OBJECT (CARRIED IN-ROOM MANY) OUT OBJECT = V-TAKE PRE-TAKE>
<SYNTAX GET OBJECT WITH OBJECT (HELD) = V-TAKE-WITH PRE-TAKE>
<SYNTAX GET RID OBJECT = V-DROP PRE-PUT>
<SYNTAX GET IN OBJECT (ON-GROUND IN-ROOM) = V-ENTER>
<SYNTAX GET FROM OBJECT (FIND FL-ROOMS) = V-EXIT>
<SYNTAX GET OUT OBJECT (FIND FL-ROOMS) = V-EXIT>
<SYNTAX GET THROUGH OBJECT = V-ENTER>
 
<VERB-SYNONYM GIVE HAND GRANT DELIVER OFFER LOAN LEND>
<SYNTAX GIVE OBJECT (HELD CARRIED HAVE TAKE MANY) TO OBJECT (FIND FL-PERSON) (IN-ROOM ON-GROUND) = V-GIVE ;PRE-GIVE>
<SYNTAX GIVE OBJECT (ON-GROUND IN-ROOM) OBJECT (HELD CARRIED HAVE TAKE MANY) = V-GIVE-SWP>
 
;"---------------------------------------------------------------------------"
; "H"
;"---------------------------------------------------------------------------"
 
;<VERB-SYNONYM HELLO HI GREETINGS GREET SALUTE>
;<SYNTAX HELLO OBJECT (FIND FL-ROOMS) = V-HELLO>
 
<SYNTAX HOLD OBJECT (FIND FL-TAKEABLE) (ON-GROUND IN-ROOM MANY) = V-TAKE PRE-TAKE>
 
<VERB-SYNONYM HIT SLAP WHACK SWAT STRIKE PUNCH>
<SYNTAX HIT OBJECT (ON-GROUND IN-ROOM) WITH OBJECT (FIND FL-BY-HAND) (HELD CARRIED HAVE) = V-HIT>
<SYNTAX HIT AT OBJECT (ON-GROUND IN-ROOM) WITH OBJECT (FIND FL-BY-HAND) (HELD CARRIED HAVE) = V-HIT>
 
;"---------------------------------------------------------------------------"
; "I"
;"---------------------------------------------------------------------------"
 
<SYNTAX INFLATE OBJECT = V-INFLATE>
 
<VERB-SYNONYM INVENTORY I INVENT>
<SYNTAX INVENTORY = V-INVENTORY>
 
;"---------------------------------------------------------------------------"
; "J"
;"---------------------------------------------------------------------------"
 
<SYNTAX JUMP FROM OBJECT = V-EXIT>
<SYNTAX JUMP IN OBJECT (FIND FL-ROOMS) = V-ENTER>
<SYNTAX JUMP OUT OBJECT (FIND FL-ROOMS) = V-EXIT>
<SYNTAX JUMP TO OBJECT = V-ENTER>
<SYNTAX JUMP THROUGH OBJECT = V-ENTER>
 
;"---------------------------------------------------------------------------"
; "K"
;"---------------------------------------------------------------------------"
 
;<SYNTAX KICK OBJECT (ON-GROUND IN-ROOM) = V-ATTACK>
;<SYNTAX KICK AT OBJECT (ON-GROUND IN-ROOM) = V-ATTACK>
 
;<SYNTAX KNOCK DOWN OBJECT (ON-GROUND IN-ROOM) WITH OBJECT (FIND FL-WEAPON) (HELD CARRIED HAVE) = V-ATTACK>
;<SYNTAX KNOCK OBJECT (ON-GROUND IN-ROOM) WITH OBJECT (FIND FL-WEAPON) (HELD CARRIED HAVE) = V-ATTACK>
;<SYNTAX KNOCK OUT OBJECT (ON-GROUND IN-ROOM) WITH OBJECT (FIND FL-WEAPON) (HELD CARRIED HAVE) = V-ATTACK>
 
;"---------------------------------------------------------------------------"
; "L"
;"---------------------------------------------------------------------------"
 
<SYNTAX LET GO OBJECT (HELD) = V-DROP PRE-PUT>
 
<VOC "LIE">
;<SYNTAX LIE = V-FOO>
 
<VERB-SYNONYM LIFT RAISE>
<SYNTAX LIFT OBJECT WITH OBJECT (HELD HAVE) (FIND FL-BY-HAND) = V-LIFT>
 
<SYNTAX LISTEN OBJECT (FIND FL-ROOMS) = V-LISTEN>
<SYNTAX LISTEN AT OBJECT = V-LISTEN>
<SYNTAX LISTEN THROUGH OBJECT = V-LISTEN>
<SYNTAX LISTEN TO OBJECT = V-LISTEN>
 
<SYNTAX LOCK OBJECT WITH OBJECT (HELD HAVE TAKE) (FIND FL-KEY) = V-LOCK>
 
<VERB-SYNONYM LOOK L>
<SYNTAX LOOK = V-LOOK>
<SYNTAX LOOK OBJECT (HAVE EVERYWHERE) = V-EXAMINE ;PRE-EXAMINE>
<SYNTAX LOOK AROUND OBJECT (FIND FL-ROOMS) = V-LOOK>
<SYNTAX LOOK AT OBJECT (HAVE EVERYWHERE) = V-EXAMINE ;PRE-EXAMINE>
<SYNTAX LOOK IN OBJECT (HELD CARRIED ON-GROUND IN-ROOM) (FIND FL-ROOMS) = V-LOOK-IN ;PRE-LOOK-IN>
<SYNTAX LOOK ON OBJECT (ON-GROUND IN-ROOM) = V-LOOK-ON>
<SYNTAX LOOK OVER OBJECT = V-EXAMINE ;PRE-EXAMINE>
;<SYNTAX LOOK UP OBJECT (FIND FL-ROOMS) = V-LOOK-UP>
;<SYNTAX LOOK DOWN OBJECT (FIND FL-ROOMS) = V-LOOK-DOWN>
<SYNTAX LOOK BEHIND OBJECT = V-LOOK-BEHIND>
<SYNTAX LOOK UNDER OBJECT = V-LOOK-UNDER>
 
;"---------------------------------------------------------------------------"
; "M"
;"---------------------------------------------------------------------------"
 
<SYNTAX MOVE OBJECT WITH OBJECT (HELD HAVE) (FIND FL-BY-HAND) = V-MOVE>
 
;"---------------------------------------------------------------------------"
; "N"
;"---------------------------------------------------------------------------"
 
;<VERB-SYNONYM NO N>
<SYNTAX NO = V-NO>
 
;"---------------------------------------------------------------------------"
; "O"
;"---------------------------------------------------------------------------"
 
<SYNTAX OPEN OBJECT (FIND FL-OPENABLE) = V-OPEN>
<SYNTAX OPEN UP OBJECT (FIND FL-OPENABLE) = V-OPEN>
<SYNTAX OPEN OBJECT (FIND FL-OPENABLE) WITH OBJECT (FIND FL-KEY) (HAVE TAKE) = V-OPEN>
 
;"---------------------------------------------------------------------------"
; "P"
;"---------------------------------------------------------------------------"
 
<SYNTAX PICK OBJECT (FIND FL-TAKEABLE) (ON-GROUND MANY) = V-TAKE PRE-TAKE>
<SYNTAX PICK UP OBJECT (FIND FL-TAKEABLE) (ON-GROUND MANY) = V-TAKE PRE-TAKE>
 
<SYNTAX PLUG IN OBJECT = V-PLUG-IN>
 
;<SYNTAX POKE OBJECT WITH OBJECT (FIND FL-WEAPON) = V-ATTACK>
 
<SYNTAX PRESS OBJECT = V-PUSH>
 
<SYNTAX PULL OBJECT = V-PULL>
 
<SYNTAX PULL OBJECT (CARRIED IN-ROOM MANY) OFF OBJECT = V-TAKE PRE-TAKE>
<SYNTAX PULL OUT OBJECT (CARRIED IN-ROOM MANY) = V-TAKE PRE-TAKE>
<SYNTAX PULL OBJECT (CARRIED IN-ROOM MANY) FROM OBJECT = V-TAKE PRE-TAKE>
<SYNTAX PULL OBJECT (CARRIED IN-ROOM MANY) OUT OBJECT = V-TAKE PRE-TAKE>
 
<SYNTAX PUSH OBJECT (HELD CARRIED MANY HAVE TAKE) IN OBJECT = V-PUT-IN PRE-PUT-IN>
<SYNTAX PUSH OBJECT = V-PUSH>
 
<VERB-SYNONYM PUT PLACE>
<SYNTAX PUT OBJECT (HELD MANY HAVE TAKE) ON OBJECT (FIND FL-SURFACE) = V-PUT PRE-PUT>
<SYNTAX PUT OBJECT (HELD MANY HAVE TAKE) ACROSS OBJECT = V-PUT PRE-PUT>
<SYNTAX PUT OBJECT (HELD MANY HAVE TAKE) AROUND OBJECT = V-PUT PRE-PUT>
<SYNTAX PUT OBJECT (HELD MANY HAVE TAKE) DOWN OBJECT = V-PUT PRE-PUT>
<SYNTAX PUT OBJECT (HELD MANY HAVE TAKE) IN OBJECT = V-PUT-IN PRE-PUT-IN>
<SYNTAX PUT OBJECT (HELD MANY HAVE TAKE) OVER OBJECT = V-PUT PRE-PUT>
<SYNTAX PUT AWAY OBJECT(HELD MANY HAVE TAKE) IN OBJECT = V-PUT-IN PRE-PUT-IN>
<SYNTAX PUT DOWN OBJECT (HELD MANY HAVE) = V-DROP PRE-PUT>
<SYNTAX PUT ON OBJECT (HELD HAVE TAKE) = V-WEAR>
<SYNTAX PUT OUT OBJECT = V-EXTINGUISH>
 
;"---------------------------------------------------------------------------"
; "Q"
;"---------------------------------------------------------------------------"
 
;"---------------------------------------------------------------------------"
; "R"
;"---------------------------------------------------------------------------"
 
<SYNTAX REACH IN OBJECT = V-REACH-IN>
<SYNTAX REACH UNDER OBJECT WITH OBJECT (FIND FL-ROOMS) (HELD) = V-REACH-UNDER>
<SYNTAX REACH BEHIND OBJECT = V-REACH-BEHIND>
 
<VERB-SYNONYM READ SKIM BROWSE LEAF>
<SYNTAX READ OBJECT (TAKE) = V-READ>
<SYNTAX READ THROUGH OBJECT (TAKE) = V-READ>
 
<SYNTAX REMOVE OBJECT = V-UNWEAR>
<SYNTAX REMOVE OBJECT (IN-ROOM CARRIED MANY) FROM OBJECT = V-TAKE PRE-TAKE>
 
;"---------------------------------------------------------------------------"
; "S"
;"---------------------------------------------------------------------------"
 
<VOC "SAY">
 
<SYNTAX SET OBJECT TO OBJECT = V-TURN-TO>
<SYNTAX SET OBJECT (HELD MANY HAVE TAKE) ON OBJECT = V-PUT PRE-PUT>
<SYNTAX SET OBJECT (HELD MANY HAVE TAKE) IN OBJECT = V-PUT-IN PRE-PUT-IN>
 
<SYNTAX SHOW OBJECT TO OBJECT = V-SHOW>
<SYNTAX SHOW OBJECT OBJECT = V-SHOW-SWP>
 
<SYNTAX SIT ON OBJECT (FIND FL-ROOMS) (ON-GROUND IN-ROOM) = V-SIT>
<SYNTAX SIT IN OBJECT (ON-GROUND IN-ROOM) = V-ENTER>
<SYNTAX SIT DOWN OBJECT (FIND FL-ROOMS) = V-SIT>
<SYNTAX SIT AT OBJECT (ON-GROUND IN-ROOM) = V-SIT>
 
<SYNTAX SLIDE OBJECT (HELD MANY HAVE TAKE) IN OBJECT = V-PUT-IN PRE-PUT-IN>
 
;<SYNTAX STICK OBJECT WITH OBJECT (FIND FL-WEAPON) (HELD CARRIED HAVE) = V-ATTACK>
<SYNTAX STICK OBJECT (HELD MANY HAVE TAKE) ON OBJECT = V-PUT PRE-PUT>
<SYNTAX STICK OBJECT (HELD MANY HAVE TAKE) IN OBJECT (FIND FL-ROOMS) = V-PUT-IN PRE-PUT-IN>
 
<SYNTAX SWITCH ON OBJECT = V-TURN-ON>
<SYNTAX SWITCH OBJECT ON OBJECT (FIND FL-ROOMS) = V-TURN-ON>
<SYNTAX SWITCH OFF OBJECT = V-TURN-OFF>
<SYNTAX SWITCH OBJECT OFF OBJECT (FIND FL-ROOMS) = V-TURN-OFF>
 
;"---------------------------------------------------------------------------"
; "T"
;"---------------------------------------------------------------------------"
 
<SYNTAX TELL OBJECT (FIND FL-PERSON) (ON-GROUND IN-ROOM MANY) = V-TELL>
<SYNTAX TELL OBJECT (FIND FL-PERSON) (ON-GROUND IN-ROOM) ABOUT OBJECT (EVERYWHERE) = V-TELL-ABOUT>
<SYNTAX TELL OBJECT (FIND FL-PERSON) (ON-GROUND IN-ROOM) OBJECT (EVERYWHERE) = V-TELL-ABOUT>
 
<VERB-SYNONYM TALK SPEAK CONVERSE>
<SYNTAX TALK TO OBJECT (FIND FL-PERSON) (ON-GROUND IN-ROOM) = V-TALK-TO>
<SYNTAX TALK WITH OBJECT (FIND FL-PERSON) (ON-GROUND IN-ROOM) = V-TALK-TO>
 
<VERB-SYNONYM TAKE CATCH GRAB PLUCK GRASP>
<SYNTAX TAKE OBJECT (FIND FL-TAKEABLE) (ON-GROUND IN-ROOM MANY) = V-TAKE PRE-TAKE>
<SYNTAX TAKE OBJECT (CARRIED IN-ROOM MANY) FROM OBJECT = V-TAKE PRE-TAKE>
<SYNTAX TAKE OBJECT (CARRIED IN-ROOM MANY) IN OBJECT = V-TAKE PRE-TAKE>
<SYNTAX TAKE OBJECT (CARRIED IN-ROOM MANY) OFF OBJECT = V-TAKE PRE-TAKE>
<SYNTAX TAKE OBJECT (CARRIED IN-ROOM MANY) ON OBJECT = V-TAKE PRE-TAKE>
<SYNTAX TAKE OBJECT (CARRIED IN-ROOM MANY) OUT OBJECT = V-TAKE PRE-TAKE>
<SYNTAX TAKE OBJECT WITH OBJECT (HELD) = V-TAKE-WITH PRE-TAKE>
<SYNTAX TAKE OUT OBJECT (CARRIED IN-ROOM MANY) = V-TAKE PRE-TAKE>
<SYNTAX TAKE UP OBJECT (ON-GROUND IN-ROOM MANY) = V-TAKE PRE-TAKE>
<SYNTAX TAKE OFF OBJECT (HELD HAVE) = V-UNWEAR>
 
<SYNTAX THANK OBJECT (FIND FL-PERSON) (ON-GROUND IN-ROOM) = V-THANK>
;<SYNTAX THANKS OBJECT (FIND FL-ROOMS) = V-THANK>	; "???"
 
<SYNTAX TIE OBJECT TO OBJECT = V-TIE-TO> ;"DEB -- Please check tokens"
 
<SYNTAX THROW AWAY OBJECT (HELD CARRIED HAVE) = V-DROP PRE-PUT>
<SYNTAX THROW OBJECT (HELD MANY HAVE TAKE) IN OBJECT = V-PUT-IN PRE-PUT-IN>
<SYNTAX THROW OBJECT (HELD MANY HAVE TAKE) ON OBJECT = V-PUT PRE-PUT>
<SYNTAX THROW OBJECT (HELD MANY HAVE TAKE) OVER OBJECT (ON-GROUND IN-ROOM) = V-PUT PRE-PUT>
;<SYNTAX THROW OBJECT (HELD CARRIED HAVE MANY) DOWN OBJECT (FIND FL-ROOMS) = V-DROP PRE-PUT>
 
<SYNTAX TURN OBJECT = V-TURN>
<SYNTAX TURN OBJECT TO OBJECT = V-TURN-TO>
<SYNTAX TURN OBJECT OBJECT = V-TURN-TO>	; ">turn object left"
<SYNTAX TURN ON OBJECT = V-TURN-ON>
<SYNTAX TURN OBJECT ON OBJECT (FIND FL-ROOMS) = V-TURN-ON>
<SYNTAX TURN OFF OBJECT = V-TURN-OFF>
<SYNTAX TURN OBJECT OFF OBJECT (FIND FL-ROOMS) = V-TURN-OFF>
 
;"---------------------------------------------------------------------------"
; "U"
;"---------------------------------------------------------------------------"
 
<SYNTAX UNLOCK OBJECT WITH OBJECT (HELD HAVE TAKE) (FIND FL-KEY) = V-UNLOCK>
 
;"---------------------------------------------------------------------------"
; "V"
;"---------------------------------------------------------------------------"
 
;"---------------------------------------------------------------------------"
; "W"
;"---------------------------------------------------------------------------"
 
<VERB-SYNONYM WAIT Z>
<SYNTAX WAIT = V-WAIT>
<SYNTAX WAIT OBJECT (EVERYWHERE) = V-WAIT>
<SYNTAX WAIT FOR OBJECT (EVERYWHERE) = V-WAIT>
 
<VERB-SYNONYM WALK HEAD GO RUN PROCEED SWIM>
<SYNTAX WALK OBJECT = V-WALK>
<SYNTAX WALK IN OBJECT = V-ENTER>
<SYNTAX WALK THROUGH OBJECT = V-ENTER>
<SYNTAX WALK TO OBJECT (EVERYWHERE) = V-WALK-TO ;PRE-WALK>
<SYNTAX WALK AFTER OBJECT (EVERYWHERE) = V-FOLLOW>
 
<VERB-SYNONYM WEAR DON>
<SYNTAX WEAR OBJECT (HELD ON-GROUND TAKE) = V-WEAR>
 
<SYNTAX WELD OBJECT = V-WELD>
 
;"---------------------------------------------------------------------------"
; "X"
;"---------------------------------------------------------------------------"
 
;"---------------------------------------------------------------------------"
; "Y"
;"---------------------------------------------------------------------------"
 
<VERB-SYNONYM YES Y>
<SYNTAX YES = V-YES>
 
;"---------------------------------------------------------------------------"
; "Z"
;"---------------------------------------------------------------------------"
 
;<VERB-SYNONYM ZORK XYZZY PLUGH YOHO OZMOO GNUSTO FROTZ QUENDOR FROBOZZ>
;<SYNTAX ZORK = V-ZORK>
 
;"***************************************************************************"
; "end of file"
;"***************************************************************************"
 
