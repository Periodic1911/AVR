
t13dump.i:     file format ihex


Disassembly of section .sec1:

00000000 <.sec1>:
   0:	09 c0       	rjmp	.+18     	;  0x14
   2:	16 c0       	rjmp	.+44     	;  0x30
   4:	15 c0       	rjmp	.+42     	;  0x30
   6:	14 c0       	rjmp	.+40     	;  0x30
   8:	13 c0       	rjmp	.+38     	;  0x30
   a:	12 c0       	rjmp	.+36     	;  0x30
   c:	25 c0       	rjmp	.+74     	;  0x58
   e:	10 c0       	rjmp	.+32     	;  0x30
  10:	0f c0       	rjmp	.+30     	;  0x30
  12:	0e c0       	rjmp	.+28     	;  0x30
  14:	11 24       	eor	r1, r1
  16:	1f be       	out	0x3f, r1	; 63
  18:	cf e9       	ldi	r28, 0x9F	; 159
  1a:	cd bf       	out	0x3d, r28	; 61
  1c:	10 e0       	ldi	r17, 0x00	; 0
  1e:	a0 e6       	ldi	r26, 0x60	; 96
  20:	b0 e0       	ldi	r27, 0x00	; 0
  22:	01 c0       	rjmp	.+2      	;  0x26
  24:	1d 92       	st	X+, r1
  26:	a5 36       	cpi	r26, 0x65	; 101
  28:	b1 07       	cpc	r27, r17
  2a:	e1 f7       	brne	.-8      	;  0x24
  2c:	41 d0       	rcall	.+130    	;  0xb0
  2e:	af c0       	rjmp	.+350    	;  0x18e
  30:	e7 cf       	rjmp	.-50     	;  0x0
  32:	97 b1       	in	r25, 0x07	; 7
  34:	90 7f       	andi	r25, 0xF0	; 240
  36:	97 b9       	out	0x07, r25	; 7
  38:	97 b1       	in	r25, 0x07	; 7
  3a:	98 2b       	or	r25, r24
  3c:	97 b9       	out	0x07, r25	; 7
  3e:	36 9a       	sbi	0x06, 6	; 6
  40:	36 99       	sbic	0x06, 6	; 6
  42:	fe cf       	rjmp	.-4      	;  0x40
  44:	85 b1       	in	r24, 0x05	; 5
  46:	08 95       	ret
  48:	80 91 64 00 	lds	r24, 0x0064
  4c:	8f 59       	subi	r24, 0x9F	; 159
  4e:	09 f4       	brne	.+2      	;  0x52
  50:	80 e2       	ldi	r24, 0x20	; 32
  52:	80 93 64 00 	sts	0x0064, r24
  56:	08 95       	ret
  58:	1f 92       	push	r1
  5a:	0f 92       	push	r0
  5c:	0f b6       	in	r0, 0x3f	; 63
  5e:	0f 92       	push	r0
  60:	11 24       	eor	r1, r1
  62:	2f 93       	push	r18
  64:	3f 93       	push	r19
  66:	8f 93       	push	r24
  68:	9f 93       	push	r25
  6a:	80 91 62 00 	lds	r24, 0x0062
  6e:	90 91 63 00 	lds	r25, 0x0063
  72:	20 91 60 00 	lds	r18, 0x0060
  76:	30 91 61 00 	lds	r19, 0x0061
  7a:	82 0f       	add	r24, r18
  7c:	93 1f       	adc	r25, r19
  7e:	90 93 61 00 	sts	0x0061, r25
  82:	80 93 60 00 	sts	0x0060, r24
  86:	20 91 64 00 	lds	r18, 0x0064
  8a:	30 e0       	ldi	r19, 0x00	; 0
  8c:	89 2f       	mov	r24, r25
  8e:	99 27       	eor	r25, r25
  90:	82 17       	cp	r24, r18
  92:	93 07       	cpc	r25, r19
  94:	10 f4       	brcc	.+4      	;  0x9a
  96:	82 e0       	ldi	r24, 0x02	; 2
  98:	01 c0       	rjmp	.+2      	;  0x9c
  9a:	80 e0       	ldi	r24, 0x00	; 0
  9c:	88 bb       	out	0x18, r24	; 24
  9e:	9f 91       	pop	r25
  a0:	8f 91       	pop	r24
  a2:	3f 91       	pop	r19
  a4:	2f 91       	pop	r18
  a6:	0f 90       	pop	r0
  a8:	0f be       	out	0x3f, r0	; 63
  aa:	0f 90       	pop	r0
  ac:	1f 90       	pop	r1
  ae:	18 95       	reti
  b0:	82 e0       	ldi	r24, 0x02	; 2
  b2:	87 bb       	out	0x17, r24	; 23
  b4:	86 b1       	in	r24, 0x06	; 6
  b6:	86 68       	ori	r24, 0x86	; 134
  b8:	86 b9       	out	0x06, r24	; 6
  ba:	3d 9a       	sbi	0x07, 5	; 7
  bc:	8f b5       	in	r24, 0x2f	; 47
  be:	82 60       	ori	r24, 0x02	; 2
  c0:	8f bd       	out	0x2f, r24	; 47
  c2:	83 b7       	in	r24, 0x33	; 51
  c4:	82 60       	ori	r24, 0x02	; 2
  c6:	83 bf       	out	0x33, r24	; 51
  c8:	89 b7       	in	r24, 0x39	; 57
  ca:	84 60       	ori	r24, 0x04	; 4
  cc:	89 bf       	out	0x39, r24	; 57
  ce:	86 b7       	in	r24, 0x36	; 54
  d0:	81 60       	ori	r24, 0x01	; 1
  d2:	86 bf       	out	0x36, r24	; 54
  d4:	78 94       	sei
  d6:	8a e2       	ldi	r24, 0x2A	; 42
  d8:	48 2e       	mov	r4, r24
  da:	55 24       	eor	r5, r5
  dc:	53 94       	inc	r5
  de:	9a e1       	ldi	r25, 0x1A	; 26
  e0:	69 2e       	mov	r6, r25
  e2:	77 24       	eor	r7, r7
  e4:	73 94       	inc	r7
  e6:	cb ef       	ldi	r28, 0xFB	; 251
  e8:	d0 e0       	ldi	r29, 0x00	; 0
  ea:	00 ee       	ldi	r16, 0xE0	; 224
  ec:	10 e0       	ldi	r17, 0x00	; 0
  ee:	27 ec       	ldi	r18, 0xC7	; 199
  f0:	e2 2e       	mov	r14, r18
  f2:	f1 2c       	mov	r15, r1
  f4:	3c eb       	ldi	r19, 0xBC	; 188
  f6:	c3 2e       	mov	r12, r19
  f8:	d1 2c       	mov	r13, r1
  fa:	48 ea       	ldi	r20, 0xA8	; 168
  fc:	a4 2e       	mov	r10, r20
  fe:	b1 2c       	mov	r11, r1
 100:	56 e9       	ldi	r21, 0x96	; 150
 102:	85 2e       	mov	r8, r21
 104:	91 2c       	mov	r9, r1
 106:	81 e0       	ldi	r24, 0x01	; 1
 108:	94 df       	rcall	.-216    	;  0x32
 10a:	8a 31       	cpi	r24, 0x1A	; 26
 10c:	10 f4       	brcc	.+4      	;  0x112
 10e:	13 be       	out	0x33, r1	; 51
 110:	fa cf       	rjmp	.-12     	;  0x106
 112:	88 33       	cpi	r24, 0x38	; 56
 114:	28 f4       	brcc	.+10     	;  0x120
 116:	90 92 63 00 	sts	0x0063, r9
 11a:	80 92 62 00 	sts	0x0062, r8
 11e:	30 c0       	rjmp	.+96     	;  0x180
 120:	86 34       	cpi	r24, 0x46	; 70
 122:	28 f4       	brcc	.+10     	;  0x12e
 124:	b0 92 63 00 	sts	0x0063, r11
 128:	a0 92 62 00 	sts	0x0062, r10
 12c:	29 c0       	rjmp	.+82     	;  0x180
 12e:	82 36       	cpi	r24, 0x62	; 98
 130:	28 f4       	brcc	.+10     	;  0x13c
 132:	d0 92 63 00 	sts	0x0063, r13
 136:	c0 92 62 00 	sts	0x0062, r12
 13a:	22 c0       	rjmp	.+68     	;  0x180
 13c:	8a 37       	cpi	r24, 0x7A	; 122
 13e:	28 f4       	brcc	.+10     	;  0x14a
 140:	f0 92 63 00 	sts	0x0063, r15
 144:	e0 92 62 00 	sts	0x0062, r14
 148:	1b c0       	rjmp	.+54     	;  0x180
 14a:	87 39       	cpi	r24, 0x97	; 151
 14c:	28 f4       	brcc	.+10     	;  0x158
 14e:	10 93 63 00 	sts	0x0063, r17
 152:	00 93 62 00 	sts	0x0062, r16
 156:	14 c0       	rjmp	.+40     	;  0x180
 158:	87 3b       	cpi	r24, 0xB7	; 183
 15a:	28 f4       	brcc	.+10     	;  0x166
 15c:	d0 93 63 00 	sts	0x0063, r29
 160:	c0 93 62 00 	sts	0x0062, r28
 164:	0d c0       	rjmp	.+26     	;  0x180
 166:	89 3c       	cpi	r24, 0xC9	; 201
 168:	28 f4       	brcc	.+10     	;  0x174
 16a:	70 92 63 00 	sts	0x0063, r7
 16e:	60 92 62 00 	sts	0x0062, r6
 172:	06 c0       	rjmp	.+12     	;  0x180
 174:	88 3e       	cpi	r24, 0xE8	; 232
 176:	40 f4       	brcc	.+16     	;  0x188
 178:	50 92 63 00 	sts	0x0063, r5
 17c:	40 92 62 00 	sts	0x0062, r4
 180:	83 b7       	in	r24, 0x33	; 51
 182:	82 60       	ori	r24, 0x02	; 2
 184:	83 bf       	out	0x33, r24	; 51
 186:	bf cf       	rjmp	.-130    	;  0x106
 188:	13 be       	out	0x33, r1	; 51
 18a:	5e df       	rcall	.-324    	;  0x48
 18c:	bc cf       	rjmp	.-136    	;  0x106
 18e:	f8 94       	cli
 190:	ff cf       	rjmp	.-2      	;  0x190
