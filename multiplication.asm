ORG 100

START:

MOV WORD PTR [210h], 0FE76h ;carpanin ust 16 biti
MOV WORD PTR [212h], 0FE76h ;carpanin alt 16 biti
MOV WORD PTR [214h], 0FE76h ;carpilanin ust 16 biti
MOV WORD PTR [216h], 0FE76h ;carpilanin ust 16 biti

MOV AX, [210h] ;carpanin alt ve ust bitlerini bellekten cagirma 
MOV BX, [212h]
MOV CX, [214h] ;carpilanin alt ve ust bitlerini bellekten cagirma
MOV DX, [216h]

MOV WORD PTR [304h], 0000h  ;carpma islemi sonucunda tutulan bellek adresleri
MOV WORD PTR [306h], 0000h
MOV WORD PTR [308h], 0000h
MOV WORD PTR [30Ah], 0000h  

SUB AX,AX
SUB BX,BX
SUB CX,CX
SUB DX,DX
SUB SI,SI
SUB DI,DI

MOV BYTE PTR [100h],20h  ;dongunun 32 kez donnmesi icin

tekrar:

MOV BX,[210h]  
AND BX,01H 	   ; carpanin LSB biti disindaki tum bitlerini 0'la
XOR BX,01H	   ; carpan LSB bitinin 0 konrolu 

JZ topla_kaydir  ; LSB == 1 ise topla_kaydir fonksiyonuna git
CLC	             ; LSB == 0 ise carry i temzile
