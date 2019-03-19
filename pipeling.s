	.text
main:
		lwu r21,CONTROL(r0)
		lwu r22,DATA(r0)

		daddi r4,r0,400 	; r4 metritis gia epanalipseis sto loop
		
		; r5 deiktis ston pinaka
		; r6 metritis gia ta X opou exei ises monades sto diadiko me ton antitheto tou
		; r7 metritis gia ta Z opou exei megalytero apo 10 midenika sto diadiko
		; r8 metritis gia ta B opou exei apoliti timi megalyteri apo 1000
		; r9 metritis gia ta C opou o arithmos antistrofa isoute me ton arithmo
		; r10 P h thesi tou pinaka me to megalytero akeraio
		
		daddi r1,r0,1
		daddi r2,r0,2

		ld r11,array(r5)
		nop
		dadd r25,r0,r11		;r25 o megistos arithmos estw oti einai o protos tou pinaka
	
LOOP:	beq r26,r4,EXIT

		dadd r15,r0,r0		; se kathe epanalipsi to athroisma ton monadon tou arithmou isoute me 0
		dadd r16,r0,r0	  	; se kathe epanalipsi to athroisma ton monadon tou antithetou isoute me 0
	
		ld r11,array(r5)	; ston r11 fortonete se kathe epanalipsi o epomenos akeraios tou pinaka
		nop
		dadd r12,r11,r0
		dadd r13,r11,r0
		dadd r14,r12,r0

		
		daddi r3,r0,2		; ypologismos ton monadon ston arithmo
		nop
B:		beqz r3, exit

		andi r12,r12,0x00005555
		dsrl r14,r14,16
		andi r14,r14,0x00005555
		dsll r14,r14,16
		or r12,r12,r14

		dsrl r13,r13,1		
		dadd r14,r0,r13			
		andi r13,r13,0x00005555
		dsrl r14,r14,16
		andi r14,r14,0x00005555
		dsll r14,r14,16
		or r13,r13,r14
		dadd r12,r12,r13				
		dadd r13,r12,r0		;;;;;;;;;;;;(1)


		dadd r14,r0,r12

		andi r12,r12,0x00003333
		dsrl r14,r14,16
		andi r14,r14,0x00003333
		dsll r14,r14,16
		or r12,r12,r14

		dsrl r13,r13,2		
		dadd r14,r0,r13			
		andi r13,r13,0x00003333
		dsrl r14,r14,16
		andi r14,r14,0x00003333
		dsll r14,r14,16
		or r13,r13,r14
		dadd r12,r12,r13				
		dadd r13,r12,r0      ;;;;;;;;;;;;;;;;;(2)

		dadd r14,r0,r12

		andi r12,r12,0x00000f0f
		dsrl r14,r14,16
		andi r14,r14,0x00000f0f
		dsll r14,r14,16
		or r12,r12,r14

		dsrl r13,r13,4		
		dadd r14,r0,r13			
		andi r13,r13,0x00000f0f					
		dsrl r14,r14,16						
		andi r14,r14,0x00000f0f
		dsll r14,r14,16
		or r13,r13,r14
		dadd r12,r12,r13				
		dadd r13,r12,r0    ;;;;;;;;;;;;;;;;;;;(3)

		dadd r14,r0,r12
		
		andi r12,r12,0x000000ff
		dsrl r14,r14,16
		andi r14,r14,0x000000ff
		dsll r14,r14,16
		or r12,r12,r14

		dsrl r13,r13,8		
		dadd r14,r0,r13			
		andi r13,r13,0x000000ff
		dsrl r14,r14,16
		andi r14,r14,0x000000ff
		dsll r14,r14,16
		or r13,r13,r14
		dadd r12,r12,r13				
		dadd r13,r12,r0   ;;;;;;;;;;;;;;;;;(4)
	
		
		andi r12,r12,0x0ffff
		dsrl r13,r13,16
		andi r13,r13,0x0ffff
		dadd r12,r12,r13		;r15 count 1
		dadd r15,r15,r12   ;;;;;;;;;;;;;;;(5)
		
		dadd r12,r11,r0
		dsrl r12,r12,16
		dsrl r12,r12,16
		dadd r13,r12,r0
		dadd r14,r12,r0
		daddi r3,r3,-1
		j B
					; edw teleionei o ypologismos ton monadon tou arithmou
exit:					
					; ypologismos ton monadon tou antithetou tou arithmou      
		dsub r18,r0,r11		; ypologismos tou antithetou apo to r0 = 0 afairo ton arithmo
		dadd r12,r0,r18 
		dadd r13,r0,r12
		dadd r17,r12,r0		

		daddi r3,r0,2
		nop
C:		beqz r3,exit2		; gia ton ypologismo ton monadon ginetai h idia diadikasia alla gia ton antitheto



		andi r12,r12,0x00005555
		dsrl r17,r17,16
		andi r17,r17,0x00005555
		dsll r17,r17,16
		or r12,r12,r17   ; ta 32 terma aristera bit

		dsrl r13,r13,1		
		dadd r17,r0,r13			
		andi r13,r13,0x00005555
		dsrl r17,r17,16
		andi r17,r17,0x00005555
		dsll r17,r17,16
		or r13,r13,r17
		dadd r12,r12,r13				
		dadd r13,r12,r0	 ;;;;;;;;;;;;;;;;;;;;


		dadd r17,r0,r12

		andi r12,r12,0x00003333
		dsrl r17,r17,16
		andi r17,r17,0x00003333
		dsll r17,r17,16
		or r12,r12,r17

		dsrl r13,r13,2		
		dadd r17,r0,r13			
		andi r13,r13,0x00003333
		dsrl r17,r17,16
		andi r17,r17,0x00003333
		dsll r17,r17,16
		or r13,r13,r17
		dadd r12,r12,r13				
		dadd r13,r12,r0    ;;;;;;;;;;;;;;;;;;;;;

		dadd r17,r0,r12

		andi r12,r12,0x00000f0f
		dsrl r17,r17,16
		andi r17,r17,0x00000f0f
		dsll r17,r17,16
		or r12,r12,r17

		dsrl r13,r13,4		
		dadd r17,r0,r13			
		andi r13,r13,0x00000f0f					
		dsrl r17,r17,16						
		andi r17,r17,0x00000f0f
		dsll r17,r17,16
		or r13,r13,r17
		dadd r12,r12,r13				
		dadd r13,r12,r0   ;;;;;;;;;;;;;;;;;;;;;;;;;

		dadd r17,r0,r12
		
		andi r12,r12,0x000000ff
		dsrl r17,r17,16
		andi r17,r17,0x000000ff
		dsll r17,r17,16
		or r12,r12,r17

		dsrl r13,r13,8		
		dadd r17,r0,r13			
		andi r13,r13,0x000000ff
		dsrl r17,r17,16
		andi r17,r17,0x000000ff
		dsll r17,r17,16
		or r13,r13,r17
		dadd r12,r12,r13				
		dadd r13,r12,r0  ;;;;;;;;;;;;;;;;;;;;;
	
		
		andi r12,r12,0x0ffff
		dsrl r13,r13,16
		andi r13,r13,0x0ffff
		dadd r12,r12,r13		;r16 apothikeuw to athroisma ton manadon ton 32 dexia bit 
		dadd r16,r16,r12  ;;;;;;;;;;;;;;;;;;;;  sti prwti epanalipsi kai sti deuteri to auroisma ton 32 aristera
		
		dadd r12,r18,r0
		dsrl r12,r12,16
		dsrl r12,r12,16


		dadd r13,r0,r12
		dadd r17,r0,r12
		daddi r3,r3,-1
		j C

exit2:					; edw teleionei o ypologismos ton monadon tou antithetou
		
				 
		bne r15,r16,step2
		daddi r6,r6,1
step2:					;;;;;;;;;;;;;;;;;;;;;;;;;;    X    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
					;;;;;;;;;;;;;;;;;;;;;;;;;;    Z    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		daddi r14,r0,64		; ypologismos
		dsub r14,r14,r15
		slti r12,r14,10
		nop
		bnez r12,step3
		daddi r7,r7,1
step3:					;;;;;;;;;;;;;;;;;;;;;;;;;;    Z     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
					;;;;;;;;;;;;;;;;;;;;;;;;;;    B     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		beqz r11,step4

		slti r12,r11,0		; ypologismos
		nop
		bnez r12,step33
		slti r12,r11,1000
		nop
		bnez r12,step4
		daddi r8,r8,1
		j step4
		
step33:		slti r12,r11,-1000
		nop
		beqz r12,step4
		daddi r8,r8,1
step4:				    ;;;;;;;;;;;;;;;;;;;;;;;;;;    B   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				    ;;;;;;;;;;;;;;;;;;;;;;;;;;	  C   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		
		dadd r12,r11,r0
		dadd r13,r11,r0
		dadd r17,r11,r0
		dadd r18,r11,r0
		
		daddi r3,r3,2
		nop
BB:		beqz r3, step5

		andi r12,r12,0x5555
		dsrl r13,r13,16
		andi r13,r13,0x5555
		dsll r13,r13,16
		or r12,r12,r13
		dsll r12,r12,1
		
		andi r17,r17,0xAAAA
		dsrl r18,r18,16
		andi r18,r18,0xAAAA
		dsll r18,r18,16
		or r17,r17,r18
		dsrl r17,r17,1
		
		or r12,r12,r17  ;;;;;;;;;;;;;;( 1 )
		dadd r13,r12,r0
		dadd r17,r12,r0
		dadd r18,r12,r0
		
		andi r12,r12,0x3333
		dsrl r13,r13,16
		andi r13,r13,0x3333
		dsll r13,r13,16
		or r12,r12,r13
		dsll r12,r12,2
		
		andi r17,r17,0xCCCC
		dsrl r18,r18,16
		andi r18,r18,0xCCCC
		dsll r18,r18,16
		or r17,r17,r18
		dsrl r17,r17,2
		
		or r12,r12,r17  ;;;;;;;;;;;;;;;;( 2 )
		dadd r13,r12,r0
		dadd r17,r12,r0
		dadd r18,r12,r0
		
		andi r12,r12,0x0F0F
		dsrl r13,r13,16
		andi r13,r13,0x0F0F
		dsll r13,r13,16
		or r12,r12,r13
		dsll r12,r12,4
		
		andi r17,r17,0xF0F0
		dsrl r18,r18,16
		andi r18,r18,0xF0F0
		dsll r18,r18,16
		or r17,r17,r18
		dsrl r17,r17,4
		
		or r12,r12,r17  ;;;;;;;;;;;;;;;;( 3 )
		dadd r13,r12,r0
		dadd r17,r12,r0
		dadd r18,r12,r0
		
		andi r12,r12,0x00FF
		dsrl r13,r13,16
		andi r13,r13,0x00FF
		dsll r13,r13,16
		or r12,r13,r12
		dsll r12,r12,8
		
		andi r17,r17,0xFF00
		dsrl r18,r18,16
		andi r18,r18,0xFF00
		dsll r18,r18,16
		or r17,r17,r18
		dsrl r17,r17,8
		
		or r12,r12,r17   ;;;;;;;;;;;;;;; ( 4 )
		dadd r13,r12,r0
		dadd r17,r12,r0
		dadd r18,r12,r0
		
		andi r12,r12,0xFFFF
		dsll r12,r12,16
		
		dsrl r17,r17,16
		andi r17,r17,0xFFFF
		dsll r17,r17,16
		dsrl r17,r17,16   
		
		or r12,r12,r17   ;;;;;;;;;;;;;;;;;;;;;;( 5 )
		bne r3,r2,sss
		dadd r15,r0,r12
		dsll r15,r15,16
		dsll r15,r15,16
sss:
		beq r3,r1,step5  ;an r3 = 1
		dadd r12,r11,r0
		dsrl r12,r12,16
		dsrl r12,r12,16
		dadd r13,r12,r0
		dadd r17,r12,r0
		dadd r18,r12,r0
		daddi r3,r3,-1
		j BB
step5:
		or r13,r12,r15

		nop
		bne r13,r11,step6
		daddi r9,r9,1
step6:					;;;;;;;;;;;;;;;;;;;;;;;;;    C    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
					;;;;;;;;;;;;;;;;;;;;;;;;;    P    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		bne r25,r11,go		; h thesi opou vriskete o megalyteros akeraios
		dadd r10,r0,r26		; an o akeraios einai isos me ton megalytero pou exei vrei mexri stigmis tote krata th thesi tou
		j go2
		
go:		slt r12,r11,r25		; 
		nop
		bnez r12,go2
		dadd r25,r0,r11
		dadd r10,r0,r26
go2:
					;;;;;;;;;;;;;;;;;;;;;;;;   P    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		daddi r26,r26,1
		daddi r5,r5,8
		j LOOP
		
EXIT:	;/-----------------------------------------------------------------------------------------------------------------------------------
		

		sd r6,X(r0) 		; apothikeusi to plithos ton arithmon me ises monades me ton antitheto
		sd r7,Z(r0)		; apothikeusi to plithos ton arithmon me perisotera apo 10 midenika
		sd r8,B(r0)		; apothikeusi to plithos ton arithmon me apolyti timi megalytari apo 1000
		sd r9,C(r0)		; apothikeusi to plithos ton arithmon pou isoute me ton arithmo an graftei antistrofa
		sd r10,P(r0)		; apothikeusi th thesi me to megalytero akeraio

	; akolouthoun oi ektipwseis

	daddi r12,r0,1
	daddi r13,r0,4


				     ; strX ektiposi
    	daddi r1,r0,strX   
    	sd r1,(r22)
    	sd r13,(r21)
	
				      ; X ektiposi
        sd r6,(r22)
        sd r12,(r21)

				      ; strZ ektiposi
    	daddi r1,r0,strZ   
    	sd r1,(r22)
    	sd r13,(r21)

				      ; Z ektiposi
        sd r7,(r22)
        sd r12,(r21)

				      ; strB ektiposi
    	daddi r1,r0,strB   
    	sd r1,(r22)
    	sd r13,(r21)

				      ; B ektiposi
        sd r8,(r22)
        sd r12,(r21)

				      ; strC ektiposi
    	daddi r1,r0,strC   
    	sd r1,(r22)
    	sd r13,(r21)

				      ; C ektiposi
        sd r9,(r22)
        sd r12,(r21)

				      ; strP ektiposi
    	daddi r1,r0,strP   
    	sd r1,(r22)
    	sd r13,(r21)

				      ; P ektiposi
        sd r10,(r22)
        sd r12,(r21)

	halt



	.data

X:	.word 0
Z:	.word 0
B:	.word 0
C:	.word 0
P:	.word 0


array: .word  0x0000000000000064,0x7A0B67101C85D9EE,0x5EF87A2B37CA911D,0x47EF58E8B7E01DD9,0x4F6961869342DC99,0x7A0B67101C85D9EE,0x5EF87A2B37CA911D,0x47EF58E8B7E01DD9
       .word  0x79A74EAB20CB53C9,0x6D26753D06F8E483,0x70F313AF126C0B47,0x745232A4035F1EF5,0x79A74EAB20CB53C9,0x6D26753D06F8E483,0x70F313AF126C0B47,0x745232A4035F1EF5
       .word  0x46036BDDE8D095FD,0x4DE3F1D89B5A43EA,0x5279659D102EABBA,0x4496CDA949E29089,0x46036BDDE8D095FD,0x4DE3F1D89B5A43EA,0x5279659D102EABBA,0x4496CDA949E29089
       .word  0x6D594E2009B7D04A,0x4CE57C0D55905DE5,0x4115A0AC78A1848B,0x5051DAA648B3BDA6,0x6D594E2009B7D04A,0x4CE57C0D55905DE5,0x4115A0AC78A1848B,0x5051DAA648B3BDA6
       .word  0x71C3730CE11593C0,0x425A9FAE68370FC5,0x6B265F8485354426,0x4E935A849C713D01,0x71C3730CE11593C0,0x425A9FAE68370FC5,0x6B265F8485354426,0x4E935A849C713D0
       .word  0x773110588E5170D7,0x5B133F183803A780,0x49A52D37525C362C,0x4A0C150C49D8A123,0x773110588E5170D7,0x5B133F183803A780,0x49A52D37525C362C,0x4A0C150C49D8A123
       .word  0x7962EC77A41FB066,0x5D3A087AF3417D04,0x7076F96031DC3B2E,0x404EC3D105D02FDD,0x7962EC77A41FB066,0x5D3A087AF3417D04,0x7076F96031DC3B2E,0x404EC3D105D02FDD
       .word  0x5484F578189A7A8B,0x65EA86F819037E03,0x4367E6F2AE35B27A,0x63C1CF869394DB43,0x5484F578189A7A8B,0x65EA86F819037E03,0x4367E6F2AE35B27A,0x63C1CF869394DB43
       .word  0x59421109269E583C,0x6B9F1B529C8598EF,0x4C877DCC129AF1BD,0x58401EDBF56D884F,0x5484F578189A7A8B,0x65EA86F819037E03,0x4367E6F2AE35B27A,0x63C1CF869394DB43F
       .word  0x754C5475E3F8BFCF,0x1111111111111111,0x786213BFF3FAE203,0x53F6C77223F8D4B5,0x754C5475E3F8BFCF,0x1111111111111111,0x786213BFF3FAE203,0x53F6C77223F8D4B5
       .word  0x5304A0C74815DFBF,0x701BFCF2B7E84DED,0x72C3DEDE1BA476AD,0xFFFFFFFFFFFFFFFF,0x5304A0C74815DFBF,0x701BFCF2B7E84DED,0x72C3DEDE1BA476AD,0x557C05371C0A436C
       .word  0x741CECCDBAEBBBB3,0x577156E9E5C72202,0x641D1FEFF6E59822,0x623B6D2C45E6AFC6,0x741CECCDBAEBBBB3,0x577156E9E5C72202,0x641D1FEFF6E59822,0x623B6D2C45E6AFC6
       .word  0x6976994C37A754F0,0x4CE48C6E6963A020,0x4EDDBCD1CF3CD3AC,0x706AAA8FC1AE08E4,0x6976994C37A754F0,0x4CE48C6E6963A020,0x4EDDBCD1CF3CD3AC,0x706AAA8FC1AE08E4
       .word  0x674DE62D8E4ACB59,0x791423B583AF7749,0x4589009608F70D0A,0x55159D9A3430F238,0x674DE62D8E4ACB59,0x791423B583AF7749,0x4589009608F70D0A,0x55159D9A3430F238
       .word  0x70BD250BE3048518,0x6D1B60128C603831,0x5397AB7F0E29CEE8,0x58EF0102374A9A97,0x70BD250BE3048518,0x6D1B60128C603831,0x5397AB7F0E29CEE8,0x58EF0102374A9A97
       .word  0x625D9DBD94D1E2D1,0x5E8439437165FDF6,0x4F621F3A37353266,0x426B3ACC1149F170,0x625D9DBD94D1E2D1,0x5E8439437165FDF6,0x4F621F3A37353266,0x426B3ACC1149F170
       .word  0x59D789FA7FA3F476,0x4C4353E0D30D6D4B,0x492F120FA02F0B1C,0x720DFD78A97CFF59,0x59D789FA7FA3F476,0x4C4353E0D30D6D4B,0x492F120FA02F0B1C,0x720DFD78A97CFF59
       .word  0x5BC2140E14551D39,0x68718C039D4656B9,0x7FFFFFFFFFFFFFFF,0x48F63330CBC9A739,0x5BC2140E14551D39,0x68718C039D4656B9,0x7FFFFFFFFFFFFFFF,0x48F63330CBC9A739
       .word  0x6E47955AFD5F8C20,0x44972B6AD10F9D2A,0x46578121CA1151A1,0x0000000000004400,0x6E47955AFD5F8C20,0x44972B6AD10F9D2A,0x46578121CA1151A1,0x46281A1E7672B320
       .word  0x4094CC803E05BD98,0x5FF5B63C7812A363,0x6AF41E217F7612C5,0x4B7B4452B1E208AC,0x4094CC803E05BD98,0x5FF5B63C7812A363,0x6AF41E217F7612C5,0x4B7B4452B1E208AC
       .word  0x750F8A67FA5E72E4,0x51C8ECF29B5E8AD1,0x580550353D81B486,0x668CD4C5F3970ABF,0x750F8A67FA5E72E4,0x51C8ECF29B5E8AD1,0x580550353D81B486,0x668CD4C5F3970ABF
       .word  0x480BEE00A16715AD,0x4888D5AC9EE02467,0x77C3DDBA62669040,0x48D55CDF7F706867,0x480BEE00A16715AD,0x4888D5AC9EE02467,0x77C3DDBA62669040,0x48D55CDF7F706867
       .word  0x720670341FE6E445,0x6CAE4383191C2CC9,0x4F9E28BAD0270344,0x46DAD4328A8A3979,0x720670341FE6E445,0x6CAE4383191C2CC9,0x4F9E28BAD0270344,0x46DAD4328A8A3979
       .word  0x55B7AEB598729716,0x76D0F139C5FF97C5,0x4B876EB39C2DC380,0x781ADC2AD91E6FDF,0x55B7AEB598729716,0x76D0F139C5FF97C5,0x4B876EB39C2DC380,0x781ADC2AD91E6FDF
       .word  0x53BDEAF8F4AA0625,0x624D7EA5B9A73772,0x75A02137A787850D,0x4259BDE1C33A32E6,0x53BDEAF8F4AA0625,0x624D7EA5B9A73772,0x75A02137A787850D,0x4259BDE1C33A32E6
       .word  0x4F6961869342DC99,0x7A0B67101C85D9EE,0x5EF87A2B37CA911D,0x47EF58E8B7E01DD9,0x4F6961869342DC99,0x7A0B67101C85D9EE,0x5EF87A2B37CA911D,0x47EF58E8B7E01DD9
       .word  0x79A74EAB20CB53C9,0x6D26753D06F8E483,0x70F313AF126C0B47,0x745232A4035F1EF5,0x79A74EAB20CB53C9,0x6D26753D06F8E483,0x70F313AF126C0B47,0x745232A4035F1EF5
       .word  0x46036BDDE8D095FD,0x4DE3F1D89B5A43EA,0x5279659D102EABBA,0x4496CDA949E29089,0x46036BDDE8D095FD,0x4DE3F1D89B5A43EA,0x5279659D102EABBA,0x4496CDA949E29089
       .word  0x6D594E2009B7D04A,0x4CE57C0D55905DE5,0x4115A0AC78A1848B,0x5051DAA648B3BDA6,0x6D594E2009B7D04A,0x4CE57C0D55905DE5,0x4115A0AC78A1848B,0x5051DAA648B3BDA6
       .word  0x71C3730CE11593C0,0x425A9FAE68370FC5,0x6B265F8485354426,0x4E935A849C713D01,0x71C3730CE11593C0,0x425A9FAE68370FC5,0x6B265F8485354426,0x4E935A849C713D0
       .word  0x773110588E5170D7,0x5B133F183803A780,0x49A52D37525C362C,0x4A0C150C49D8A123,0x773110588E5170D7,0x5B133F183803A780,0x49A52D37525C362C,0x4A0C150C49D8A123
       .word  0x7962EC77A41FB066,0x5D3A087AF3417D04,0x7076F96031DC3B2E,0x404EC3D105D02FDD,0x7962EC77A41FB066,0x5D3A087AF3417D04,0x7076F96031DC3B2E,0x404EC3D105D02FDD
       .word  0x5484F578189A7A8B,0x65EA86F819037E03,0x4367E6F2AE35B27A,0x63C1CF869394DB43,0x5484F578189A7A8B,0x65EA86F819037E03,0x4367E6F2AE35B27A,0x63C1CF869394DB43
       .word  0x59421109269E583C,0x6B9F1B529C8598EF,0x4C877DCC129AF1BD,0x58401EDBF56D884F,0x5484F578189A7A8B,0x65EA86F819037E03,0x4367E6F2AE35B27A,0x63C1CF869394DB43F
       .word  0x754C5475E3F8BFCF,0x1111111111111111,0x786213BFF3FAE203,0x53F6C77223F8D4B5,0x754C5475E3F8BFCF,0x1111111111111111,0x786213BFF3FAE203,0x53F6C77223F8D4B5
       .word  0x5304A0C74815DFBF,0x701BFCF2B7E84DED,0x72C3DEDE1BA476AD,0x557C05371C0A436C,0x5304A0C74815DFBF,0x701BFCF2B7E84DED,0x72C3DEDE1BA476AD,0x557C05371C0A436C
       .word  0x741CECCDBAEBBBB3,0x577156E9E5C72202,0x641D1FEFF6E59822,0x623B6D2C45E6AFC6,0x741CECCDBAEBBBB3,0x577156E9E5C72202,0x641D1FEFF6E59822,0x623B6D2C45E6AFC6
       .word  0x697699C37A754F0,0x4CE48C6E6963A020,0x4EDDBCD1CF3CD3AC,0x706AAA8FC1AE08E4,0x6976994C37A754F0,0x4CE48C6E6963A020,0x4EDDBCD1CF3CD3AC,0x706AAA8FC1AE08E4
       .word  0x674DE62D8E4ACB59,0x791423B583AF7749,0x4589009608F70D0A,0x55159D9A3430F238,0x674DE62D8E4ACB59,0x791423B583AF7749,0x4589009608F70D0A,0x55159D9A3430F238
       .word  0x70BD250BE3048518,0x6D1B60128C603831,0x5397AB7F0E29CEE8,0x58EF0102374A9A97,0x70BD250BE3048518,0x6D1B60128C603831,0x5397AB7F0E29CEE8,0x58EF0102374A9A97
       .word  0x625D9DBD94D1E2D1,0x5E8439437165FDF6,0x4F621F3A37353266,0x426B3ACC1149F170,0x625D9DBD94D1E2D1,0x5E8439437165FDF6,0x4F621F3A37353266,0x426B3ACC1149F170
       .word  0x59D789FA7FA3F476,0x4C4353E0D30D6D4B,0x492F120FA02F0B1C,0x720DFD78A97CFF59,0x59D789FA7FA3F476,0x4C4353E0D30D6D4B,0x492F120FA02F0B1C,0x720DFD78A97CFF59
       .word  0x5BC2140E14551D39,0x68718C039D4656B9,0x7FFFFFFFFFFFFFFF,0x48F63330CBC9A739,0x5BC2140E14551D39,0x68718C039D4656B9,0x7FFFFFFFFFFFFFFF,0x48F63330CBC9A739
       .word  0x6E47955AFD5F8C20,0x44972B6AD10F9D2A,0x46578121CA1151A1,0x46281A1E7672B320,0x6E47955AFD5F8C20,0x44972B6AD10F9D2A,0x46578121CA1151A1,0x46281A1E7672B320
       .word  0x4094CC803E05BD98,0x5FF5B63C7812A363,0x6AF41E217F7612C5,0x4B7B4452B1E208AC,0x4094CC803E05BD98,0x5FF5B63C7812A363,0x6AF41E217F7612C5,0x4B7B4452B1E208AC
       .word  0x750F8A67FA5E72E4,0x51C8ECF29B5E8AD1,0x580550353D81B486,0x668CD4C5F3970ABF,0x750F8A67FA5E72E4,0x51C8ECF29B5E8AD1,0x580550353D81B486,0x668CD4C5F3970ABF
       .word  0x480BEE00A16715AD,0x4888D5AC9EE02467,0x77C3DDBA62669040,0x48D55CDF7F706867,0x480BEE00A16715AD,0x4888D5AC9EE02467,0x77C3DDBA62669040,0x48D55CDF7F706867
       .word  0x720670341FE6E445,0x6CAE4383191C2CC9,0x4F9E28BAD0270344,0x46DAD4328A8A3979,0x720670341FE6E445,0x6CAE4383191C2CC9,0x4F9E28BAD0270344,0x46DAD4328A8A3979
       .word  0x55B7AEB598729716,0x76D0F139C5FF97C5,0x4B876EB39C2DC380,0x781ADC2AD91E6FDF,0x55B7AEB598729716,0x76D0F139C5FF97C5,0x4B876EB39C2DC380,0x781ADC2AD91E6FDF
       .word  0x53BDEAF8F4AA0625,0x624D7EA5B9A73772,0x75A02137A787850D,0x4259BDE1C33A32E6,0x53BDEAF8F4AA0625,0x624D7EA5B9A73772,0x75A02137A787850D,0x4259BDE1C33A32E6



strX:	.asciiz "X= "
strZ:	.asciiz ", Z= "
strB:	.asciiz ", B= "
strC:	.asciiz ", C= "
strP:	.asciiz ", P= "

CONTROL:	.word32 0x10000
DATA:		.word32 0x10008


