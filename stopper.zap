

	.FUNCT	RT-RM-TRI-MIX-STORAGE:ANY:0:1,CONTEXT
	EQUAL?	CONTEXT,M-F-LOOK,M-V-LOOK,M-LOOK \?CCL3
	PRINTI	"	You "
	EQUAL?	CONTEXT,M-LOOK \?CCL6
	PRINTI	"are in"
	JUMP	?CND4
?CCL6:	PRINTI	"enter"
?CND4:	PRINTI	" the tri-mix storage room. There are three huge steel tanks here, each welded to a sturdy base that sits about an inch off the floor. The tanks look like giant beer kegs and this similarity is heightened by the k-valves on the front that look like beer taps. Exits here lead fore and aft.
"
	RFALSE	
?CCL3:	EQUAL?	CONTEXT,M-ENTERED \?CCL8
	ZERO?	GL-NITROGEN-LEAK? /FALSE
	PRINT	K-HISS-MSG
	RTRUE	
?CCL8:	EQUAL?	CONTEXT,M-BEG \?CCL13
	EQUAL?	PRSA,V?LISTEN \FALSE
	EQUAL?	PRSO,ROOMS \FALSE
	ZERO?	GL-NITROGEN-LEAK? /FALSE
	PRINT	K-HISS-MSG
	RTRUE	
?CCL13:	ZERO?	CONTEXT \FALSE
	RFALSE	


	.FUNCT	RT-TH-NITROGEN-TANK:ANY:0:1,CONTEXT
	ZERO?	CONTEXT \FALSE
	EQUAL?	PRSA,V?LISTEN \?CCL5
	ZERO?	GL-NITROGEN-LEAK? /?CCL8
	PRINT	K-HISS-MSG
	RTRUE	
?CCL8:	PRINTR	"You don't hear anything unusual."
?CCL5:	EQUAL?	PRSA,V?EXAMINE \?CCL10
	CALL	NOUN-USED?,TH-NITROGEN-TANK,W?BASE
	ZERO?	STACK /?CCL13
	PRINTR	"The base is raised up off the floor by about an inch."
?CCL13:	PRINT	K-GAS-TANK-MSG
	ZERO?	GL-NITROGEN-LEAK? /?CND14
	PRINTR	" The hissing sound seems to be coming from here."
?CND14:	CRLF	
	RTRUE	
?CCL10:	EQUAL?	PRSA,V?LOOK-UNDER \?CCL17
	GETP	TH-NIT-STOPPER,P?OWNER
	EQUAL?	STACK,TH-NITROGEN-TANK \FALSE
	FSET	TH-NIT-STOPPER,FL-SEEN
	FCLEAR	TH-NIT-STOPPER,FL-INVISIBLE
	PRINTR	"	You lie down on the floor and peer under the base of the tank. Back out of reach you see the steel gleam of the stopper. It must have rolled there after working itself loose from the k-valve."
?CCL17:	EQUAL?	PRSA,V?REACH-UNDER \FALSE
	GETP	TH-NIT-STOPPER,P?OWNER
	EQUAL?	STACK,TH-NITROGEN-TANK \FALSE
	EQUAL?	PRSI,TH-MAGNET \?CCL28
	CALL1	RT-GET-STOPPER
	RSTACK	
?CCL28:	EQUAL?	PRSI,FALSE-VALUE,ROOMS,TH-HANDS \FALSE
	PRINTR	"	You can't quite reach the stopper."


	.FUNCT	RT-TH-NIT-VALVE:ANY:0:1,CONTEXT
	ZERO?	CONTEXT \FALSE
	ZERO?	NOW-PRSI /?CCL5
	EQUAL?	PRSA,V?ATTACH,V?PUT-IN \FALSE
	EQUAL?	PRSO,TH-NIT-STOPPER \FALSE
	MOVE	TH-NIT-STOPPER,TH-NIT-VALVE
	PRINTR	"	You screw the stopper into the k-valve. The valve is still hissing."
?CCL5:	EQUAL?	PRSA,V?LISTEN \?CCL13
	IN?	TH-NIT-STOPPER,TH-NIT-VALVE /?CCL16
	PRINT	K-HISS-MSG
	RTRUE	
?CCL16:	PRINTR	"	You don't hear anything unusual."
?CCL13:	EQUAL?	PRSA,V?EXAMINE \?CCL18
	PRINTI	"	The k-valve is a small device that controls the flow of the nitrogen."
	IN?	TH-NIT-STOPPER,TH-NIT-VALVE /?CND19
	PRINTI	" The valve's stopper seems to be missing"
	ZERO?	GL-NITROGEN-LEAK? /?CND19
	PRINTI	", and the hissing sound is definitely coming from here"
?CND19:	PRINTR	"."
?CCL18:	EQUAL?	PRSA,V?OPEN \?CCL24
	FSET?	TH-NIT-VALVE,FL-ON \?CCL27
	CALL2	RT-ALREADY-MSG,STR?93
	RSTACK	
?CCL27:	IN?	TH-NIT-STOPPER,TH-NIT-VALVE \?CCL29
	PRINTR	"	You decide not to open the valve, since that might cause problems."
?CCL29:	PRINTR	"	The stopper is missing, so the valve can't be opened."
?CCL24:	EQUAL?	PRSA,V?CLOSE \FALSE
	FSET?	TH-NIT-VALVE,FL-ON /?CCL34
	CALL2	RT-ALREADY-MSG,STR?79
	RSTACK	
?CCL34:	IN?	TH-NIT-STOPPER,TH-NIT-VALVE \?CCL36
	FCLEAR	TH-NIT-VALVE,FL-ON
	SET	'GL-NITROGEN-LEAK?,FALSE-VALUE
	ICALL2	RT-DEQUEUE,RT-I-NITROGEN-LEAK
	PRINTR	"	You close the k-valve. The hissing stops."
?CCL36:	PRINTR	"	The stopper is missing, so the valve can't be closed."


	.FUNCT	RT-TH-NIT-STOPPER:ANY:0:1,CONTEXT
	ZERO?	CONTEXT \FALSE
	EQUAL?	PRSA,V?TAKE \?CCL5
	GETP	TH-NIT-STOPPER,P?OWNER
	EQUAL?	STACK,TH-NITROGEN-TANK \FALSE
	PRINTR	"	You can't quite reach the stopper."
?CCL5:	EQUAL?	PRSA,V?TAKE-WITH \FALSE
	GETP	TH-NIT-STOPPER,P?OWNER
	EQUAL?	STACK,TH-NITROGEN-TANK \FALSE
	EQUAL?	PRSI,TH-MAGNET \FALSE
	CALL1	RT-GET-STOPPER
	RSTACK	


	.FUNCT	RT-GET-STOPPER:ANY:0:0
	MOVE	TH-NIT-STOPPER,TH-MAGNET
	PUTP	TH-NIT-STOPPER,P?OWNER,FALSE-VALUE
	PRINTR	"	You slide the magnet under the base and hear a satisfying 'click.' When you pull it out again, the stopper is stuck to the end."


	.FUNCT	RT-I-NITROGEN-LEAK:ANY:0:0
	SET	'GL-NITROGEN-LEAK?,TRUE-VALUE
	ADD	GL-MOVES,1
	ICALL	RT-QUEUE,RT-I-NITROGEN-LEAK,STACK
	LESS?	GL-NITROGEN-QTY,K-NIT-HIGH-1 \?CCL4
	SET	'GL-NITROGEN-QTY,K-NIT-HIGH-1
	JUMP	?CND2
?CCL4:	ADD	GL-NITROGEN-QTY,47 >GL-NITROGEN-QTY
?CND2:	CALL1	RT-NITROGEN-MSG
	RSTACK	


	.FUNCT	RT-TH-NIT-BASE:ANY:0:1,CONTEXT
	RFALSE	


	.FUNCT	RT-TH-OXYGEN-TANK:ANY:0:1,CONTEXT
	ZERO?	CONTEXT \FALSE
	EQUAL?	PRSA,V?EXAMINE \FALSE
	PRINT	K-GAS-TANK-MSG
	CRLF	
	RTRUE	


	.FUNCT	RT-TH-OXY-VALVE:ANY:0:1,CONTEXT
	RFALSE	


	.FUNCT	RT-TH-OXY-STOPPER:ANY:0:1,CONTEXT
	RFALSE	


	.FUNCT	RT-TH-OXY-BASE:ANY:0:1,CONTEXT
	RFALSE	


	.FUNCT	RT-TH-HELIUM-TANK:ANY:0:1,CONTEXT
	ZERO?	CONTEXT \FALSE
	EQUAL?	PRSA,V?EXAMINE \FALSE
	PRINT	K-GAS-TANK-MSG
	CRLF	
	RTRUE	


	.FUNCT	RT-TH-HEL-VALVE:ANY:0:1,CONTEXT
	RFALSE	


	.FUNCT	RT-TH-HEL-STOPPER:ANY:0:1,CONTEXT
	RFALSE	


	.FUNCT	RT-TH-HEL-BASE:ANY:0:1,CONTEXT
	RFALSE	


	.FUNCT	RT-GN-TANK:ANY:2:2,TBL,FINDER,PTR,N
	ADD	TBL,8 >PTR
	GET	TBL,1 >N
	INTBL?	TH-NITROGEN-TANK,PTR,N \FALSE
	PRINTI	"[the nitrogen tank]
"
	RETURN	TH-NITROGEN-TANK


	.FUNCT	RT-GN-VALVE:ANY:2:2,TBL,FINDER,PTR,N
	ADD	TBL,8 >PTR
	GET	TBL,1 >N
	INTBL?	TH-NIT-VALVE,PTR,N \FALSE
	PRINTI	"[the nitrogen k-valve]
"
	RETURN	TH-NIT-VALVE


	.FUNCT	RT-GN-STOPPER:ANY:2:2,TBL,FINDER,PTR,N
	ADD	TBL,8 >PTR
	GET	TBL,1 >N
	INTBL?	TH-NIT-STOPPER,PTR,N \FALSE
	PRINTI	"[the nitrogen stopper]
"
	RETURN	TH-NIT-STOPPER


	.FUNCT	RT-RM-TOOL-ROOM:ANY:0:1,CONTEXT
	EQUAL?	CONTEXT,M-F-LOOK,M-V-LOOK,M-LOOK \?CCL3
	PRINTI	"	You "
	EQUAL?	CONTEXT,M-LOOK \?CCL6
	PRINTI	"are in"
	JUMP	?CND4
?CCL6:	PRINTI	"enter"
?CND4:	PRINTI	" the tool room, which lies between your office on the port side and the drill room to starboard. Bins here contain the various specialized tools of your trade.
"
	RFALSE	
?CCL3:	ZERO?	CONTEXT \FALSE
	RFALSE	


	.FUNCT	RT-TH-BIN:ANY:0:1,CONTEXT
	RFALSE	


	.FUNCT	RT-TH-MAGNET:ANY:0:1,CONTEXT
	RFALSE	

	.ENDI
