
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 00 02 20 5d 08 00 08 bd 08 00 08 bd 08 00 08     ... ]...........
 8000010:	bd 08 00 08 bd 08 00 08 bd 08 00 08 00 00 00 00     ................
	...
 800002c:	bd 08 00 08 bd 08 00 08 00 00 00 00 bd 08 00 08     ................
 800003c:	41 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     A...............
 800004c:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 800005c:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 800006c:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 800007c:	a5 30 00 08 bd 08 00 08 bd 08 00 08 e5 30 00 08     .0...........0..
 800008c:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 800009c:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 80000ac:	bd 08 00 08 1d 17 00 08 31 30 00 08 bd 08 00 08     ........10......
 80000bc:	91 34 00 08 a1 34 00 08 bd 08 00 08 bd 08 00 08     .4...4..........
 80000cc:	35 2d 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     5-..............
 80000dc:	99 1a 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 80000ec:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 80000fc:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 800010c:	bd 08 00 08 0d 0c 00 08 bd 08 00 08 bd 08 00 08     ................
 800011c:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 800012c:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 800013c:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 800014c:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 800015c:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 800016c:	bd 08 00 08 bd 08 00 08 bd 08 00 08 bd 08 00 08     ................
 800017c:	bd 08 00 08 bd 08 00 08 bd 08 00 08                 ............

08000188 <display_out>:
 8000188:	b480      	push	{r7}
 800018a:	b087      	sub	sp, #28
 800018c:	af00      	add	r7, sp, #0
 800018e:	60f8      	str	r0, [r7, #12]
 8000190:	60b9      	str	r1, [r7, #8]
 8000192:	607a      	str	r2, [r7, #4]
 8000194:	2300      	movs	r3, #0
 8000196:	617b      	str	r3, [r7, #20]
 8000198:	687b      	ldr	r3, [r7, #4]
 800019a:	009b      	lsls	r3, r3, #2
 800019c:	607b      	str	r3, [r7, #4]
 800019e:	2300      	movs	r3, #0
 80001a0:	617b      	str	r3, [r7, #20]
 80001a2:	e036      	b.n	8000212 <display_out+0x8a>
 80001a4:	697a      	ldr	r2, [r7, #20]
 80001a6:	68bb      	ldr	r3, [r7, #8]
 80001a8:	429a      	cmp	r2, r3
 80001aa:	d116      	bne.n	80001da <display_out+0x52>
 80001ac:	6879      	ldr	r1, [r7, #4]
 80001ae:	1c4b      	adds	r3, r1, #1
 80001b0:	607b      	str	r3, [r7, #4]
 80001b2:	68f8      	ldr	r0, [r7, #12]
 80001b4:	4b1b      	ldr	r3, [pc, #108]	; (8000224 <display_out+0x9c>)
 80001b6:	fba3 2300 	umull	r2, r3, r3, r0
 80001ba:	08da      	lsrs	r2, r3, #3
 80001bc:	4613      	mov	r3, r2
 80001be:	009b      	lsls	r3, r3, #2
 80001c0:	4413      	add	r3, r2
 80001c2:	005b      	lsls	r3, r3, #1
 80001c4:	1ac2      	subs	r2, r0, r3
 80001c6:	f002 030f 	and.w	r3, r2, #15
 80001ca:	4a17      	ldr	r2, [pc, #92]	; (8000228 <display_out+0xa0>)
 80001cc:	5cd3      	ldrb	r3, [r2, r3]
 80001ce:	f043 0308 	orr.w	r3, r3, #8
 80001d2:	b2da      	uxtb	r2, r3
 80001d4:	4b15      	ldr	r3, [pc, #84]	; (800022c <display_out+0xa4>)
 80001d6:	545a      	strb	r2, [r3, r1]
 80001d8:	e012      	b.n	8000200 <display_out+0x78>
 80001da:	6879      	ldr	r1, [r7, #4]
 80001dc:	1c4b      	adds	r3, r1, #1
 80001de:	607b      	str	r3, [r7, #4]
 80001e0:	68f8      	ldr	r0, [r7, #12]
 80001e2:	4b10      	ldr	r3, [pc, #64]	; (8000224 <display_out+0x9c>)
 80001e4:	fba3 2300 	umull	r2, r3, r3, r0
 80001e8:	08da      	lsrs	r2, r3, #3
 80001ea:	4613      	mov	r3, r2
 80001ec:	009b      	lsls	r3, r3, #2
 80001ee:	4413      	add	r3, r2
 80001f0:	005b      	lsls	r3, r3, #1
 80001f2:	1ac2      	subs	r2, r0, r3
 80001f4:	f002 030f 	and.w	r3, r2, #15
 80001f8:	4a0b      	ldr	r2, [pc, #44]	; (8000228 <display_out+0xa0>)
 80001fa:	5cd2      	ldrb	r2, [r2, r3]
 80001fc:	4b0b      	ldr	r3, [pc, #44]	; (800022c <display_out+0xa4>)
 80001fe:	545a      	strb	r2, [r3, r1]
 8000200:	68fa      	ldr	r2, [r7, #12]
 8000202:	4b08      	ldr	r3, [pc, #32]	; (8000224 <display_out+0x9c>)
 8000204:	fba3 1302 	umull	r1, r3, r3, r2
 8000208:	08db      	lsrs	r3, r3, #3
 800020a:	60fb      	str	r3, [r7, #12]
 800020c:	697b      	ldr	r3, [r7, #20]
 800020e:	3301      	adds	r3, #1
 8000210:	617b      	str	r3, [r7, #20]
 8000212:	697b      	ldr	r3, [r7, #20]
 8000214:	2b03      	cmp	r3, #3
 8000216:	ddc5      	ble.n	80001a4 <display_out+0x1c>
 8000218:	371c      	adds	r7, #28
 800021a:	46bd      	mov	sp, r7
 800021c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000220:	4770      	bx	lr
 8000222:	bf00      	nop
 8000224:	cccccccd 	.word	0xcccccccd
 8000228:	08003770 	.word	0x08003770
 800022c:	20000c88 	.word	0x20000c88

08000230 <log_channel>:
 8000230:	b590      	push	{r4, r7, lr}
 8000232:	b083      	sub	sp, #12
 8000234:	af00      	add	r7, sp, #0
 8000236:	4b32      	ldr	r3, [pc, #200]	; (8000300 <log_channel+0xd0>)
 8000238:	681b      	ldr	r3, [r3, #0]
 800023a:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 800023e:	0c9b      	lsrs	r3, r3, #18
 8000240:	607b      	str	r3, [r7, #4]
 8000242:	4b30      	ldr	r3, [pc, #192]	; (8000304 <log_channel+0xd4>)
 8000244:	681b      	ldr	r3, [r3, #0]
 8000246:	f503 7300 	add.w	r3, r3, #512	; 0x200
 800024a:	129b      	asrs	r3, r3, #10
 800024c:	482e      	ldr	r0, [pc, #184]	; (8000308 <log_channel+0xd8>)
 800024e:	4619      	mov	r1, r3
 8000250:	f000 fefc 	bl	800104c <xprintf>
 8000254:	4b2d      	ldr	r3, [pc, #180]	; (800030c <log_channel+0xdc>)
 8000256:	681b      	ldr	r3, [r3, #0]
 8000258:	482d      	ldr	r0, [pc, #180]	; (8000310 <log_channel+0xe0>)
 800025a:	4619      	mov	r1, r3
 800025c:	f000 fef6 	bl	800104c <xprintf>
 8000260:	4b2c      	ldr	r3, [pc, #176]	; (8000314 <log_channel+0xe4>)
 8000262:	681b      	ldr	r3, [r3, #0]
 8000264:	482c      	ldr	r0, [pc, #176]	; (8000318 <log_channel+0xe8>)
 8000266:	4619      	mov	r1, r3
 8000268:	f000 fef0 	bl	800104c <xprintf>
 800026c:	4b2b      	ldr	r3, [pc, #172]	; (800031c <log_channel+0xec>)
 800026e:	681b      	ldr	r3, [r3, #0]
 8000270:	0a9b      	lsrs	r3, r3, #10
 8000272:	482b      	ldr	r0, [pc, #172]	; (8000320 <log_channel+0xf0>)
 8000274:	4619      	mov	r1, r3
 8000276:	f000 fee9 	bl	800104c <xprintf>
 800027a:	4b2a      	ldr	r3, [pc, #168]	; (8000324 <log_channel+0xf4>)
 800027c:	681b      	ldr	r3, [r3, #0]
 800027e:	482a      	ldr	r0, [pc, #168]	; (8000328 <log_channel+0xf8>)
 8000280:	4619      	mov	r1, r3
 8000282:	f000 fee3 	bl	800104c <xprintf>
 8000286:	4b29      	ldr	r3, [pc, #164]	; (800032c <log_channel+0xfc>)
 8000288:	681b      	ldr	r3, [r3, #0]
 800028a:	4829      	ldr	r0, [pc, #164]	; (8000330 <log_channel+0x100>)
 800028c:	4619      	mov	r1, r3
 800028e:	f000 fedd 	bl	800104c <xprintf>
 8000292:	687a      	ldr	r2, [r7, #4]
 8000294:	4b27      	ldr	r3, [pc, #156]	; (8000334 <log_channel+0x104>)
 8000296:	fba3 1302 	umull	r1, r3, r3, r2
 800029a:	08dc      	lsrs	r4, r3, #3
 800029c:	6879      	ldr	r1, [r7, #4]
 800029e:	4b25      	ldr	r3, [pc, #148]	; (8000334 <log_channel+0x104>)
 80002a0:	fba3 2301 	umull	r2, r3, r3, r1
 80002a4:	08da      	lsrs	r2, r3, #3
 80002a6:	4613      	mov	r3, r2
 80002a8:	009b      	lsls	r3, r3, #2
 80002aa:	4413      	add	r3, r2
 80002ac:	005b      	lsls	r3, r3, #1
 80002ae:	1aca      	subs	r2, r1, r3
 80002b0:	4821      	ldr	r0, [pc, #132]	; (8000338 <log_channel+0x108>)
 80002b2:	4621      	mov	r1, r4
 80002b4:	f000 feca 	bl	800104c <xprintf>
 80002b8:	4b20      	ldr	r3, [pc, #128]	; (800033c <log_channel+0x10c>)
 80002ba:	681b      	ldr	r3, [r3, #0]
 80002bc:	f503 72fa 	add.w	r2, r3, #500	; 0x1f4
 80002c0:	4b1f      	ldr	r3, [pc, #124]	; (8000340 <log_channel+0x110>)
 80002c2:	fba3 1302 	umull	r1, r3, r3, r2
 80002c6:	099b      	lsrs	r3, r3, #6
 80002c8:	481e      	ldr	r0, [pc, #120]	; (8000344 <log_channel+0x114>)
 80002ca:	4619      	mov	r1, r3
 80002cc:	f000 febe 	bl	800104c <xprintf>
 80002d0:	4b1d      	ldr	r3, [pc, #116]	; (8000348 <log_channel+0x118>)
 80002d2:	681b      	ldr	r3, [r3, #0]
 80002d4:	481d      	ldr	r0, [pc, #116]	; (800034c <log_channel+0x11c>)
 80002d6:	4619      	mov	r1, r3
 80002d8:	f000 feb8 	bl	800104c <xprintf>
 80002dc:	4b1c      	ldr	r3, [pc, #112]	; (8000350 <log_channel+0x120>)
 80002de:	681b      	ldr	r3, [r3, #0]
 80002e0:	481c      	ldr	r0, [pc, #112]	; (8000354 <log_channel+0x124>)
 80002e2:	4619      	mov	r1, r3
 80002e4:	f000 feb2 	bl	800104c <xprintf>
 80002e8:	4b1b      	ldr	r3, [pc, #108]	; (8000358 <log_channel+0x128>)
 80002ea:	681b      	ldr	r3, [r3, #0]
 80002ec:	481b      	ldr	r0, [pc, #108]	; (800035c <log_channel+0x12c>)
 80002ee:	4619      	mov	r1, r3
 80002f0:	f000 feac 	bl	800104c <xprintf>
 80002f4:	481a      	ldr	r0, [pc, #104]	; (8000360 <log_channel+0x130>)
 80002f6:	f000 fea9 	bl	800104c <xprintf>
 80002fa:	370c      	adds	r7, #12
 80002fc:	46bd      	mov	sp, r7
 80002fe:	bd90      	pop	{r4, r7, pc}
 8000300:	20000234 	.word	0x20000234
 8000304:	20001ca4 	.word	0x20001ca4
 8000308:	08003780 	.word	0x08003780
 800030c:	20002cac 	.word	0x20002cac
 8000310:	08003788 	.word	0x08003788
 8000314:	20002cbc 	.word	0x20002cbc
 8000318:	08003790 	.word	0x08003790
 800031c:	20000c9c 	.word	0x20000c9c
 8000320:	0800379c 	.word	0x0800379c
 8000324:	20002cd0 	.word	0x20002cd0
 8000328:	080037a4 	.word	0x080037a4
 800032c:	20000238 	.word	0x20000238
 8000330:	080037b0 	.word	0x080037b0
 8000334:	cccccccd 	.word	0xcccccccd
 8000338:	080037bc 	.word	0x080037bc
 800033c:	2000023c 	.word	0x2000023c
 8000340:	10624dd3 	.word	0x10624dd3
 8000344:	080037c8 	.word	0x080037c8
 8000348:	20000230 	.word	0x20000230
 800034c:	080037d0 	.word	0x080037d0
 8000350:	20002cc0 	.word	0x20002cc0
 8000354:	080037dc 	.word	0x080037dc
 8000358:	20000240 	.word	0x20000240
 800035c:	080037e4 	.word	0x080037e4
 8000360:	080037ec 	.word	0x080037ec

08000364 <main>:
 8000364:	b580      	push	{r7, lr}
 8000366:	b0c8      	sub	sp, #288	; 0x120
 8000368:	af00      	add	r7, sp, #0
 800036a:	2300      	movs	r3, #0
 800036c:	f887 311f 	strb.w	r3, [r7, #287]	; 0x11f
 8000370:	2300      	movs	r3, #0
 8000372:	f8c7 3118 	str.w	r3, [r7, #280]	; 0x118
 8000376:	2300      	movs	r3, #0
 8000378:	f8c7 3114 	str.w	r3, [r7, #276]	; 0x114
 800037c:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000380:	f8a7 3112 	strh.w	r3, [r7, #274]	; 0x112
 8000384:	2300      	movs	r3, #0
 8000386:	f8a7 3110 	strh.w	r3, [r7, #272]	; 0x110
 800038a:	2364      	movs	r3, #100	; 0x64
 800038c:	f8a7 310e 	strh.w	r3, [r7, #270]	; 0x10e
 8000390:	2300      	movs	r3, #0
 8000392:	f8c7 3108 	str.w	r3, [r7, #264]	; 0x108
 8000396:	f000 f9cd 	bl	8000734 <system_init>
 800039a:	f000 faab 	bl	80008f4 <uart_init>
 800039e:	4b1b      	ldr	r3, [pc, #108]	; (800040c <main+0xa8>)
 80003a0:	4a1b      	ldr	r2, [pc, #108]	; (8000410 <main+0xac>)
 80003a2:	601a      	str	r2, [r3, #0]
 80003a4:	f001 f99c 	bl	80016e0 <adc_init>
 80003a8:	f001 fa4e 	bl	8001848 <dac_init>
 80003ac:	f001 faea 	bl	8001984 <modbus_init>
 80003b0:	f002 fb60 	bl	8002a74 <spi_master_init>
 80003b4:	f002 ff20 	bl	80031f8 <i2c_init>
 80003b8:	f002 fe8a 	bl	80030d0 <reg_init>
 80003bc:	4815      	ldr	r0, [pc, #84]	; (8000414 <main+0xb0>)
 80003be:	f000 fe45 	bl	800104c <xprintf>
 80003c2:	4b15      	ldr	r3, [pc, #84]	; (8000418 <main+0xb4>)
 80003c4:	881b      	ldrh	r3, [r3, #0]
 80003c6:	4618      	mov	r0, r3
 80003c8:	f002 faaa 	bl	8002920 <coll_pwm_set>
 80003cc:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80003d0:	f000 fa20 	bl	8000814 <sleep>
 80003d4:	4b11      	ldr	r3, [pc, #68]	; (800041c <main+0xb8>)
 80003d6:	681b      	ldr	r3, [r3, #0]
 80003d8:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 80003dc:	0c9b      	lsrs	r3, r3, #18
 80003de:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
 80003e2:	f7ff ff25 	bl	8000230 <log_channel>
 80003e6:	f8d7 0104 	ldr.w	r0, [r7, #260]	; 0x104
 80003ea:	2101      	movs	r1, #1
 80003ec:	2200      	movs	r2, #0
 80003ee:	f7ff fecb 	bl	8000188 <display_out>
 80003f2:	4b0b      	ldr	r3, [pc, #44]	; (8000420 <main+0xbc>)
 80003f4:	681b      	ldr	r3, [r3, #0]
 80003f6:	1d5a      	adds	r2, r3, #5
 80003f8:	4b0a      	ldr	r3, [pc, #40]	; (8000424 <main+0xc0>)
 80003fa:	fba3 1302 	umull	r1, r3, r3, r2
 80003fe:	08db      	lsrs	r3, r3, #3
 8000400:	4618      	mov	r0, r3
 8000402:	2102      	movs	r1, #2
 8000404:	2201      	movs	r2, #1
 8000406:	f7ff febf 	bl	8000188 <display_out>
 800040a:	e7df      	b.n	80003cc <main+0x68>
 800040c:	20000a58 	.word	0x20000a58
 8000410:	080009d9 	.word	0x080009d9
 8000414:	080037f0 	.word	0x080037f0
 8000418:	20000000 	.word	0x20000000
 800041c:	20000234 	.word	0x20000234
 8000420:	20000238 	.word	0x20000238
 8000424:	cccccccd 	.word	0xcccccccd

08000428 <NVIC_SetPriorityGrouping>:
 8000428:	b480      	push	{r7}
 800042a:	b085      	sub	sp, #20
 800042c:	af00      	add	r7, sp, #0
 800042e:	6078      	str	r0, [r7, #4]
 8000430:	687b      	ldr	r3, [r7, #4]
 8000432:	f003 0307 	and.w	r3, r3, #7
 8000436:	60fb      	str	r3, [r7, #12]
 8000438:	4b0c      	ldr	r3, [pc, #48]	; (800046c <NVIC_SetPriorityGrouping+0x44>)
 800043a:	68db      	ldr	r3, [r3, #12]
 800043c:	60bb      	str	r3, [r7, #8]
 800043e:	68ba      	ldr	r2, [r7, #8]
 8000440:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8000444:	4013      	ands	r3, r2
 8000446:	60bb      	str	r3, [r7, #8]
 8000448:	68fb      	ldr	r3, [r7, #12]
 800044a:	021a      	lsls	r2, r3, #8
 800044c:	68bb      	ldr	r3, [r7, #8]
 800044e:	4313      	orrs	r3, r2
 8000450:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8000454:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000458:	60bb      	str	r3, [r7, #8]
 800045a:	4b04      	ldr	r3, [pc, #16]	; (800046c <NVIC_SetPriorityGrouping+0x44>)
 800045c:	68ba      	ldr	r2, [r7, #8]
 800045e:	60da      	str	r2, [r3, #12]
 8000460:	3714      	adds	r7, #20
 8000462:	46bd      	mov	sp, r7
 8000464:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000468:	4770      	bx	lr
 800046a:	bf00      	nop
 800046c:	e000ed00 	.word	0xe000ed00

08000470 <NVIC_SetPriority>:
 8000470:	b480      	push	{r7}
 8000472:	b083      	sub	sp, #12
 8000474:	af00      	add	r7, sp, #0
 8000476:	4603      	mov	r3, r0
 8000478:	6039      	str	r1, [r7, #0]
 800047a:	71fb      	strb	r3, [r7, #7]
 800047c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000480:	2b00      	cmp	r3, #0
 8000482:	da0b      	bge.n	800049c <NVIC_SetPriority+0x2c>
 8000484:	490d      	ldr	r1, [pc, #52]	; (80004bc <NVIC_SetPriority+0x4c>)
 8000486:	79fb      	ldrb	r3, [r7, #7]
 8000488:	f003 030f 	and.w	r3, r3, #15
 800048c:	3b04      	subs	r3, #4
 800048e:	683a      	ldr	r2, [r7, #0]
 8000490:	b2d2      	uxtb	r2, r2
 8000492:	0112      	lsls	r2, r2, #4
 8000494:	b2d2      	uxtb	r2, r2
 8000496:	440b      	add	r3, r1
 8000498:	761a      	strb	r2, [r3, #24]
 800049a:	e009      	b.n	80004b0 <NVIC_SetPriority+0x40>
 800049c:	4908      	ldr	r1, [pc, #32]	; (80004c0 <NVIC_SetPriority+0x50>)
 800049e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80004a2:	683a      	ldr	r2, [r7, #0]
 80004a4:	b2d2      	uxtb	r2, r2
 80004a6:	0112      	lsls	r2, r2, #4
 80004a8:	b2d2      	uxtb	r2, r2
 80004aa:	440b      	add	r3, r1
 80004ac:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80004b0:	370c      	adds	r7, #12
 80004b2:	46bd      	mov	sp, r7
 80004b4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004b8:	4770      	bx	lr
 80004ba:	bf00      	nop
 80004bc:	e000ed00 	.word	0xe000ed00
 80004c0:	e000e100 	.word	0xe000e100

080004c4 <clock_PLL>:
 80004c4:	b480      	push	{r7}
 80004c6:	af00      	add	r7, sp, #0
 80004c8:	4b5b      	ldr	r3, [pc, #364]	; (8000638 <clock_PLL+0x174>)
 80004ca:	4a5b      	ldr	r2, [pc, #364]	; (8000638 <clock_PLL+0x174>)
 80004cc:	6812      	ldr	r2, [r2, #0]
 80004ce:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80004d2:	601a      	str	r2, [r3, #0]
 80004d4:	bf00      	nop
 80004d6:	4b58      	ldr	r3, [pc, #352]	; (8000638 <clock_PLL+0x174>)
 80004d8:	681b      	ldr	r3, [r3, #0]
 80004da:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80004de:	2b00      	cmp	r3, #0
 80004e0:	d0f9      	beq.n	80004d6 <clock_PLL+0x12>
 80004e2:	4b55      	ldr	r3, [pc, #340]	; (8000638 <clock_PLL+0x174>)
 80004e4:	4a54      	ldr	r2, [pc, #336]	; (8000638 <clock_PLL+0x174>)
 80004e6:	6812      	ldr	r2, [r2, #0]
 80004e8:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 80004ec:	601a      	str	r2, [r3, #0]
 80004ee:	4a52      	ldr	r2, [pc, #328]	; (8000638 <clock_PLL+0x174>)
 80004f0:	4b51      	ldr	r3, [pc, #324]	; (8000638 <clock_PLL+0x174>)
 80004f2:	6859      	ldr	r1, [r3, #4]
 80004f4:	4b51      	ldr	r3, [pc, #324]	; (800063c <clock_PLL+0x178>)
 80004f6:	400b      	ands	r3, r1
 80004f8:	6053      	str	r3, [r2, #4]
 80004fa:	4b4f      	ldr	r3, [pc, #316]	; (8000638 <clock_PLL+0x174>)
 80004fc:	4a4e      	ldr	r2, [pc, #312]	; (8000638 <clock_PLL+0x174>)
 80004fe:	6852      	ldr	r2, [r2, #4]
 8000500:	f442 42a8 	orr.w	r2, r2, #21504	; 0x5400
 8000504:	605a      	str	r2, [r3, #4]
 8000506:	4b4c      	ldr	r3, [pc, #304]	; (8000638 <clock_PLL+0x174>)
 8000508:	4a4b      	ldr	r2, [pc, #300]	; (8000638 <clock_PLL+0x174>)
 800050a:	6852      	ldr	r2, [r2, #4]
 800050c:	f042 0208 	orr.w	r2, r2, #8
 8000510:	605a      	str	r2, [r3, #4]
 8000512:	4b49      	ldr	r3, [pc, #292]	; (8000638 <clock_PLL+0x174>)
 8000514:	4a48      	ldr	r2, [pc, #288]	; (8000638 <clock_PLL+0x174>)
 8000516:	6852      	ldr	r2, [r2, #4]
 8000518:	605a      	str	r2, [r3, #4]
 800051a:	4b47      	ldr	r3, [pc, #284]	; (8000638 <clock_PLL+0x174>)
 800051c:	4a46      	ldr	r2, [pc, #280]	; (8000638 <clock_PLL+0x174>)
 800051e:	6852      	ldr	r2, [r2, #4]
 8000520:	f042 62e0 	orr.w	r2, r2, #117440512	; 0x7000000
 8000524:	605a      	str	r2, [r3, #4]
 8000526:	4b44      	ldr	r3, [pc, #272]	; (8000638 <clock_PLL+0x174>)
 8000528:	4a43      	ldr	r2, [pc, #268]	; (8000638 <clock_PLL+0x174>)
 800052a:	6852      	ldr	r2, [r2, #4]
 800052c:	f442 0280 	orr.w	r2, r2, #4194304	; 0x400000
 8000530:	605a      	str	r2, [r3, #4]
 8000532:	4b41      	ldr	r3, [pc, #260]	; (8000638 <clock_PLL+0x174>)
 8000534:	4a40      	ldr	r2, [pc, #256]	; (8000638 <clock_PLL+0x174>)
 8000536:	6812      	ldr	r2, [r2, #0]
 8000538:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800053c:	601a      	str	r2, [r3, #0]
 800053e:	bf00      	nop
 8000540:	4b3d      	ldr	r3, [pc, #244]	; (8000638 <clock_PLL+0x174>)
 8000542:	681b      	ldr	r3, [r3, #0]
 8000544:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000548:	2b00      	cmp	r3, #0
 800054a:	d0f9      	beq.n	8000540 <clock_PLL+0x7c>
 800054c:	4b3c      	ldr	r3, [pc, #240]	; (8000640 <clock_PLL+0x17c>)
 800054e:	4a3c      	ldr	r2, [pc, #240]	; (8000640 <clock_PLL+0x17c>)
 8000550:	6812      	ldr	r2, [r2, #0]
 8000552:	f022 020f 	bic.w	r2, r2, #15
 8000556:	601a      	str	r2, [r3, #0]
 8000558:	4a39      	ldr	r2, [pc, #228]	; (8000640 <clock_PLL+0x17c>)
 800055a:	4b39      	ldr	r3, [pc, #228]	; (8000640 <clock_PLL+0x17c>)
 800055c:	681b      	ldr	r3, [r3, #0]
 800055e:	f443 7382 	orr.w	r3, r3, #260	; 0x104
 8000562:	f043 0301 	orr.w	r3, r3, #1
 8000566:	6013      	str	r3, [r2, #0]
 8000568:	4a33      	ldr	r2, [pc, #204]	; (8000638 <clock_PLL+0x174>)
 800056a:	4b33      	ldr	r3, [pc, #204]	; (8000638 <clock_PLL+0x174>)
 800056c:	689b      	ldr	r3, [r3, #8]
 800056e:	f423 437c 	bic.w	r3, r3, #64512	; 0xfc00
 8000572:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8000576:	6093      	str	r3, [r2, #8]
 8000578:	4b2f      	ldr	r3, [pc, #188]	; (8000638 <clock_PLL+0x174>)
 800057a:	4a2f      	ldr	r2, [pc, #188]	; (8000638 <clock_PLL+0x174>)
 800057c:	6892      	ldr	r2, [r2, #8]
 800057e:	f442 4214 	orr.w	r2, r2, #37888	; 0x9400
 8000582:	609a      	str	r2, [r3, #8]
 8000584:	4b2c      	ldr	r3, [pc, #176]	; (8000638 <clock_PLL+0x174>)
 8000586:	4a2c      	ldr	r2, [pc, #176]	; (8000638 <clock_PLL+0x174>)
 8000588:	6892      	ldr	r2, [r2, #8]
 800058a:	f022 0203 	bic.w	r2, r2, #3
 800058e:	609a      	str	r2, [r3, #8]
 8000590:	4b29      	ldr	r3, [pc, #164]	; (8000638 <clock_PLL+0x174>)
 8000592:	4a29      	ldr	r2, [pc, #164]	; (8000638 <clock_PLL+0x174>)
 8000594:	6892      	ldr	r2, [r2, #8]
 8000596:	f042 0202 	orr.w	r2, r2, #2
 800059a:	609a      	str	r2, [r3, #8]
 800059c:	bf00      	nop
 800059e:	4b26      	ldr	r3, [pc, #152]	; (8000638 <clock_PLL+0x174>)
 80005a0:	689b      	ldr	r3, [r3, #8]
 80005a2:	f003 0308 	and.w	r3, r3, #8
 80005a6:	2b00      	cmp	r3, #0
 80005a8:	d0f9      	beq.n	800059e <clock_PLL+0xda>
 80005aa:	4b23      	ldr	r3, [pc, #140]	; (8000638 <clock_PLL+0x174>)
 80005ac:	4a22      	ldr	r2, [pc, #136]	; (8000638 <clock_PLL+0x174>)
 80005ae:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80005b0:	f042 0205 	orr.w	r2, r2, #5
 80005b4:	631a      	str	r2, [r3, #48]	; 0x30
 80005b6:	4b23      	ldr	r3, [pc, #140]	; (8000644 <clock_PLL+0x180>)
 80005b8:	4a22      	ldr	r2, [pc, #136]	; (8000644 <clock_PLL+0x180>)
 80005ba:	6812      	ldr	r2, [r2, #0]
 80005bc:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 80005c0:	601a      	str	r2, [r3, #0]
 80005c2:	4b20      	ldr	r3, [pc, #128]	; (8000644 <clock_PLL+0x180>)
 80005c4:	4a1f      	ldr	r2, [pc, #124]	; (8000644 <clock_PLL+0x180>)
 80005c6:	6812      	ldr	r2, [r2, #0]
 80005c8:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 80005cc:	601a      	str	r2, [r3, #0]
 80005ce:	4b1e      	ldr	r3, [pc, #120]	; (8000648 <clock_PLL+0x184>)
 80005d0:	4a1d      	ldr	r2, [pc, #116]	; (8000648 <clock_PLL+0x184>)
 80005d2:	6812      	ldr	r2, [r2, #0]
 80005d4:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
 80005d8:	601a      	str	r2, [r3, #0]
 80005da:	4b1b      	ldr	r3, [pc, #108]	; (8000648 <clock_PLL+0x184>)
 80005dc:	4a1a      	ldr	r2, [pc, #104]	; (8000648 <clock_PLL+0x184>)
 80005de:	6812      	ldr	r2, [r2, #0]
 80005e0:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 80005e4:	601a      	str	r2, [r3, #0]
 80005e6:	4b17      	ldr	r3, [pc, #92]	; (8000644 <clock_PLL+0x180>)
 80005e8:	4a16      	ldr	r2, [pc, #88]	; (8000644 <clock_PLL+0x180>)
 80005ea:	6892      	ldr	r2, [r2, #8]
 80005ec:	f442 3240 	orr.w	r2, r2, #196608	; 0x30000
 80005f0:	609a      	str	r2, [r3, #8]
 80005f2:	4b15      	ldr	r3, [pc, #84]	; (8000648 <clock_PLL+0x184>)
 80005f4:	4a14      	ldr	r2, [pc, #80]	; (8000648 <clock_PLL+0x184>)
 80005f6:	6892      	ldr	r2, [r2, #8]
 80005f8:	f442 2240 	orr.w	r2, r2, #786432	; 0xc0000
 80005fc:	609a      	str	r2, [r3, #8]
 80005fe:	4b0e      	ldr	r3, [pc, #56]	; (8000638 <clock_PLL+0x174>)
 8000600:	4a0d      	ldr	r2, [pc, #52]	; (8000638 <clock_PLL+0x174>)
 8000602:	6892      	ldr	r2, [r2, #8]
 8000604:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8000608:	609a      	str	r2, [r3, #8]
 800060a:	4b0b      	ldr	r3, [pc, #44]	; (8000638 <clock_PLL+0x174>)
 800060c:	4a0a      	ldr	r2, [pc, #40]	; (8000638 <clock_PLL+0x174>)
 800060e:	6892      	ldr	r2, [r2, #8]
 8000610:	f442 02c0 	orr.w	r2, r2, #6291456	; 0x600000
 8000614:	609a      	str	r2, [r3, #8]
 8000616:	4b08      	ldr	r3, [pc, #32]	; (8000638 <clock_PLL+0x174>)
 8000618:	4a07      	ldr	r2, [pc, #28]	; (8000638 <clock_PLL+0x174>)
 800061a:	6892      	ldr	r2, [r2, #8]
 800061c:	f022 527c 	bic.w	r2, r2, #1056964608	; 0x3f000000
 8000620:	609a      	str	r2, [r3, #8]
 8000622:	4b05      	ldr	r3, [pc, #20]	; (8000638 <clock_PLL+0x174>)
 8000624:	4a04      	ldr	r2, [pc, #16]	; (8000638 <clock_PLL+0x174>)
 8000626:	6892      	ldr	r2, [r2, #8]
 8000628:	f042 5258 	orr.w	r2, r2, #905969664	; 0x36000000
 800062c:	609a      	str	r2, [r3, #8]
 800062e:	46bd      	mov	sp, r7
 8000630:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000634:	4770      	bx	lr
 8000636:	bf00      	nop
 8000638:	40023800 	.word	0x40023800
 800063c:	f0fc8000 	.word	0xf0fc8000
 8000640:	40023c00 	.word	0x40023c00
 8000644:	40020000 	.word	0x40020000
 8000648:	40020800 	.word	0x40020800

0800064c <clock_HSE>:
 800064c:	b480      	push	{r7}
 800064e:	af00      	add	r7, sp, #0
 8000650:	4b2c      	ldr	r3, [pc, #176]	; (8000704 <clock_HSE+0xb8>)
 8000652:	4a2c      	ldr	r2, [pc, #176]	; (8000704 <clock_HSE+0xb8>)
 8000654:	6812      	ldr	r2, [r2, #0]
 8000656:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800065a:	601a      	str	r2, [r3, #0]
 800065c:	bf00      	nop
 800065e:	4b29      	ldr	r3, [pc, #164]	; (8000704 <clock_HSE+0xb8>)
 8000660:	681b      	ldr	r3, [r3, #0]
 8000662:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000666:	2b00      	cmp	r3, #0
 8000668:	d0f9      	beq.n	800065e <clock_HSE+0x12>
 800066a:	4b26      	ldr	r3, [pc, #152]	; (8000704 <clock_HSE+0xb8>)
 800066c:	4a25      	ldr	r2, [pc, #148]	; (8000704 <clock_HSE+0xb8>)
 800066e:	6892      	ldr	r2, [r2, #8]
 8000670:	f022 0203 	bic.w	r2, r2, #3
 8000674:	609a      	str	r2, [r3, #8]
 8000676:	4b23      	ldr	r3, [pc, #140]	; (8000704 <clock_HSE+0xb8>)
 8000678:	4a22      	ldr	r2, [pc, #136]	; (8000704 <clock_HSE+0xb8>)
 800067a:	6892      	ldr	r2, [r2, #8]
 800067c:	f042 0201 	orr.w	r2, r2, #1
 8000680:	609a      	str	r2, [r3, #8]
 8000682:	bf00      	nop
 8000684:	4b1f      	ldr	r3, [pc, #124]	; (8000704 <clock_HSE+0xb8>)
 8000686:	689b      	ldr	r3, [r3, #8]
 8000688:	f003 0304 	and.w	r3, r3, #4
 800068c:	2b00      	cmp	r3, #0
 800068e:	d0f9      	beq.n	8000684 <clock_HSE+0x38>
 8000690:	4b1c      	ldr	r3, [pc, #112]	; (8000704 <clock_HSE+0xb8>)
 8000692:	4a1c      	ldr	r2, [pc, #112]	; (8000704 <clock_HSE+0xb8>)
 8000694:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000696:	f042 0205 	orr.w	r2, r2, #5
 800069a:	631a      	str	r2, [r3, #48]	; 0x30
 800069c:	4b1a      	ldr	r3, [pc, #104]	; (8000708 <clock_HSE+0xbc>)
 800069e:	4a1a      	ldr	r2, [pc, #104]	; (8000708 <clock_HSE+0xbc>)
 80006a0:	6812      	ldr	r2, [r2, #0]
 80006a2:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 80006a6:	601a      	str	r2, [r3, #0]
 80006a8:	4b17      	ldr	r3, [pc, #92]	; (8000708 <clock_HSE+0xbc>)
 80006aa:	4a17      	ldr	r2, [pc, #92]	; (8000708 <clock_HSE+0xbc>)
 80006ac:	6812      	ldr	r2, [r2, #0]
 80006ae:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 80006b2:	601a      	str	r2, [r3, #0]
 80006b4:	4b15      	ldr	r3, [pc, #84]	; (800070c <clock_HSE+0xc0>)
 80006b6:	4a15      	ldr	r2, [pc, #84]	; (800070c <clock_HSE+0xc0>)
 80006b8:	6812      	ldr	r2, [r2, #0]
 80006ba:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
 80006be:	601a      	str	r2, [r3, #0]
 80006c0:	4b12      	ldr	r3, [pc, #72]	; (800070c <clock_HSE+0xc0>)
 80006c2:	4a12      	ldr	r2, [pc, #72]	; (800070c <clock_HSE+0xc0>)
 80006c4:	6812      	ldr	r2, [r2, #0]
 80006c6:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 80006ca:	601a      	str	r2, [r3, #0]
 80006cc:	4b0e      	ldr	r3, [pc, #56]	; (8000708 <clock_HSE+0xbc>)
 80006ce:	4a0e      	ldr	r2, [pc, #56]	; (8000708 <clock_HSE+0xbc>)
 80006d0:	6892      	ldr	r2, [r2, #8]
 80006d2:	f442 3240 	orr.w	r2, r2, #196608	; 0x30000
 80006d6:	609a      	str	r2, [r3, #8]
 80006d8:	4b0c      	ldr	r3, [pc, #48]	; (800070c <clock_HSE+0xc0>)
 80006da:	4a0c      	ldr	r2, [pc, #48]	; (800070c <clock_HSE+0xc0>)
 80006dc:	6892      	ldr	r2, [r2, #8]
 80006de:	f442 2240 	orr.w	r2, r2, #786432	; 0xc0000
 80006e2:	609a      	str	r2, [r3, #8]
 80006e4:	4b07      	ldr	r3, [pc, #28]	; (8000704 <clock_HSE+0xb8>)
 80006e6:	4a07      	ldr	r2, [pc, #28]	; (8000704 <clock_HSE+0xb8>)
 80006e8:	6892      	ldr	r2, [r2, #8]
 80006ea:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 80006ee:	609a      	str	r2, [r3, #8]
 80006f0:	4b04      	ldr	r3, [pc, #16]	; (8000704 <clock_HSE+0xb8>)
 80006f2:	4a04      	ldr	r2, [pc, #16]	; (8000704 <clock_HSE+0xb8>)
 80006f4:	6892      	ldr	r2, [r2, #8]
 80006f6:	f442 0280 	orr.w	r2, r2, #4194304	; 0x400000
 80006fa:	609a      	str	r2, [r3, #8]
 80006fc:	46bd      	mov	sp, r7
 80006fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000702:	4770      	bx	lr
 8000704:	40023800 	.word	0x40023800
 8000708:	40020000 	.word	0x40020000
 800070c:	40020800 	.word	0x40020800

08000710 <systimer_init>:
 8000710:	b480      	push	{r7}
 8000712:	af00      	add	r7, sp, #0
 8000714:	4b06      	ldr	r3, [pc, #24]	; (8000730 <systimer_init+0x20>)
 8000716:	f245 2207 	movw	r2, #20999	; 0x5207
 800071a:	605a      	str	r2, [r3, #4]
 800071c:	4b04      	ldr	r3, [pc, #16]	; (8000730 <systimer_init+0x20>)
 800071e:	2200      	movs	r2, #0
 8000720:	609a      	str	r2, [r3, #8]
 8000722:	4b03      	ldr	r3, [pc, #12]	; (8000730 <systimer_init+0x20>)
 8000724:	2203      	movs	r2, #3
 8000726:	601a      	str	r2, [r3, #0]
 8000728:	46bd      	mov	sp, r7
 800072a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800072e:	4770      	bx	lr
 8000730:	e000e010 	.word	0xe000e010

08000734 <system_init>:
 8000734:	b580      	push	{r7, lr}
 8000736:	af00      	add	r7, sp, #0
 8000738:	f7ff fec4 	bl	80004c4 <clock_PLL>
 800073c:	f7ff ffe8 	bl	8000710 <systimer_init>
 8000740:	4b30      	ldr	r3, [pc, #192]	; (8000804 <system_init+0xd0>)
 8000742:	4a30      	ldr	r2, [pc, #192]	; (8000804 <system_init+0xd0>)
 8000744:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000746:	f042 0201 	orr.w	r2, r2, #1
 800074a:	631a      	str	r2, [r3, #48]	; 0x30
 800074c:	4b2e      	ldr	r3, [pc, #184]	; (8000808 <system_init+0xd4>)
 800074e:	4a2e      	ldr	r2, [pc, #184]	; (8000808 <system_init+0xd4>)
 8000750:	6812      	ldr	r2, [r2, #0]
 8000752:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000756:	601a      	str	r2, [r3, #0]
 8000758:	4b2b      	ldr	r3, [pc, #172]	; (8000808 <system_init+0xd4>)
 800075a:	4a2b      	ldr	r2, [pc, #172]	; (8000808 <system_init+0xd4>)
 800075c:	6812      	ldr	r2, [r2, #0]
 800075e:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 8000762:	601a      	str	r2, [r3, #0]
 8000764:	4b27      	ldr	r3, [pc, #156]	; (8000804 <system_init+0xd0>)
 8000766:	4a27      	ldr	r2, [pc, #156]	; (8000804 <system_init+0xd0>)
 8000768:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800076a:	f042 0210 	orr.w	r2, r2, #16
 800076e:	631a      	str	r2, [r3, #48]	; 0x30
 8000770:	4b26      	ldr	r3, [pc, #152]	; (800080c <system_init+0xd8>)
 8000772:	4a26      	ldr	r2, [pc, #152]	; (800080c <system_init+0xd8>)
 8000774:	6812      	ldr	r2, [r2, #0]
 8000776:	f422 227c 	bic.w	r2, r2, #1032192	; 0xfc000
 800077a:	601a      	str	r2, [r3, #0]
 800077c:	4b23      	ldr	r3, [pc, #140]	; (800080c <system_init+0xd8>)
 800077e:	4a23      	ldr	r2, [pc, #140]	; (800080c <system_init+0xd8>)
 8000780:	6812      	ldr	r2, [r2, #0]
 8000782:	f442 22a8 	orr.w	r2, r2, #344064	; 0x54000
 8000786:	601a      	str	r2, [r3, #0]
 8000788:	4b1e      	ldr	r3, [pc, #120]	; (8000804 <system_init+0xd0>)
 800078a:	4a1e      	ldr	r2, [pc, #120]	; (8000804 <system_init+0xd0>)
 800078c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800078e:	f042 0208 	orr.w	r2, r2, #8
 8000792:	631a      	str	r2, [r3, #48]	; 0x30
 8000794:	4a1e      	ldr	r2, [pc, #120]	; (8000810 <system_init+0xdc>)
 8000796:	4b1e      	ldr	r3, [pc, #120]	; (8000810 <system_init+0xdc>)
 8000798:	681b      	ldr	r3, [r3, #0]
 800079a:	0c1b      	lsrs	r3, r3, #16
 800079c:	041b      	lsls	r3, r3, #16
 800079e:	6013      	str	r3, [r2, #0]
 80007a0:	4a1b      	ldr	r2, [pc, #108]	; (8000810 <system_init+0xdc>)
 80007a2:	4b1b      	ldr	r3, [pc, #108]	; (8000810 <system_init+0xdc>)
 80007a4:	681b      	ldr	r3, [r3, #0]
 80007a6:	f443 43aa 	orr.w	r3, r3, #21760	; 0x5500
 80007aa:	f043 0355 	orr.w	r3, r3, #85	; 0x55
 80007ae:	6013      	str	r3, [r2, #0]
 80007b0:	2000      	movs	r0, #0
 80007b2:	f7ff fe39 	bl	8000428 <NVIC_SetPriorityGrouping>
 80007b6:	201f      	movs	r0, #31
 80007b8:	2104      	movs	r1, #4
 80007ba:	f7ff fe59 	bl	8000470 <NVIC_SetPriority>
 80007be:	2020      	movs	r0, #32
 80007c0:	2104      	movs	r1, #4
 80007c2:	f7ff fe55 	bl	8000470 <NVIC_SetPriority>
 80007c6:	200f      	movs	r0, #15
 80007c8:	2103      	movs	r1, #3
 80007ca:	f7ff fe51 	bl	8000470 <NVIC_SetPriority>
 80007ce:	201d      	movs	r0, #29
 80007d0:	2103      	movs	r1, #3
 80007d2:	f7ff fe4d 	bl	8000470 <NVIC_SetPriority>
 80007d6:	2023      	movs	r0, #35	; 0x23
 80007d8:	2103      	movs	r1, #3
 80007da:	f7ff fe49 	bl	8000470 <NVIC_SetPriority>
 80007de:	2034      	movs	r0, #52	; 0x34
 80007e0:	2103      	movs	r1, #3
 80007e2:	f7ff fe45 	bl	8000470 <NVIC_SetPriority>
 80007e6:	2026      	movs	r0, #38	; 0x26
 80007e8:	2102      	movs	r1, #2
 80007ea:	f7ff fe41 	bl	8000470 <NVIC_SetPriority>
 80007ee:	f04f 30ff 	mov.w	r0, #4294967295
 80007f2:	2101      	movs	r1, #1
 80007f4:	f7ff fe3c 	bl	8000470 <NVIC_SetPriority>
 80007f8:	2012      	movs	r0, #18
 80007fa:	2100      	movs	r1, #0
 80007fc:	f7ff fe38 	bl	8000470 <NVIC_SetPriority>
 8000800:	bd80      	pop	{r7, pc}
 8000802:	bf00      	nop
 8000804:	40023800 	.word	0x40023800
 8000808:	40020000 	.word	0x40020000
 800080c:	40021000 	.word	0x40021000
 8000810:	40020c00 	.word	0x40020c00

08000814 <sleep>:
 8000814:	b480      	push	{r7}
 8000816:	b085      	sub	sp, #20
 8000818:	af00      	add	r7, sp, #0
 800081a:	6078      	str	r0, [r7, #4]
 800081c:	4b07      	ldr	r3, [pc, #28]	; (800083c <sleep+0x28>)
 800081e:	681a      	ldr	r2, [r3, #0]
 8000820:	687b      	ldr	r3, [r7, #4]
 8000822:	4413      	add	r3, r2
 8000824:	60fb      	str	r3, [r7, #12]
 8000826:	bf00      	nop
 8000828:	4b04      	ldr	r3, [pc, #16]	; (800083c <sleep+0x28>)
 800082a:	681a      	ldr	r2, [r3, #0]
 800082c:	68fb      	ldr	r3, [r7, #12]
 800082e:	429a      	cmp	r2, r3
 8000830:	d3fa      	bcc.n	8000828 <sleep+0x14>
 8000832:	3714      	adds	r7, #20
 8000834:	46bd      	mov	sp, r7
 8000836:	f85d 7b04 	ldr.w	r7, [sp], #4
 800083a:	4770      	bx	lr
 800083c:	20000244 	.word	0x20000244

08000840 <SysTick_Handler>:
 8000840:	b480      	push	{r7}
 8000842:	af00      	add	r7, sp, #0
 8000844:	4b04      	ldr	r3, [pc, #16]	; (8000858 <SysTick_Handler+0x18>)
 8000846:	681b      	ldr	r3, [r3, #0]
 8000848:	1c5a      	adds	r2, r3, #1
 800084a:	4b03      	ldr	r3, [pc, #12]	; (8000858 <SysTick_Handler+0x18>)
 800084c:	601a      	str	r2, [r3, #0]
 800084e:	46bd      	mov	sp, r7
 8000850:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000854:	4770      	bx	lr
 8000856:	bf00      	nop
 8000858:	20000244 	.word	0x20000244

0800085c <handler_reset>:
 800085c:	b580      	push	{r7, lr}
 800085e:	b082      	sub	sp, #8
 8000860:	af00      	add	r7, sp, #0
 8000862:	4b11      	ldr	r3, [pc, #68]	; (80008a8 <handler_reset+0x4c>)
 8000864:	607b      	str	r3, [r7, #4]
 8000866:	4b11      	ldr	r3, [pc, #68]	; (80008ac <handler_reset+0x50>)
 8000868:	603b      	str	r3, [r7, #0]
 800086a:	e007      	b.n	800087c <handler_reset+0x20>
 800086c:	683b      	ldr	r3, [r7, #0]
 800086e:	1d1a      	adds	r2, r3, #4
 8000870:	603a      	str	r2, [r7, #0]
 8000872:	687a      	ldr	r2, [r7, #4]
 8000874:	1d11      	adds	r1, r2, #4
 8000876:	6079      	str	r1, [r7, #4]
 8000878:	6812      	ldr	r2, [r2, #0]
 800087a:	601a      	str	r2, [r3, #0]
 800087c:	683a      	ldr	r2, [r7, #0]
 800087e:	4b0c      	ldr	r3, [pc, #48]	; (80008b0 <handler_reset+0x54>)
 8000880:	429a      	cmp	r2, r3
 8000882:	d3f3      	bcc.n	800086c <handler_reset+0x10>
 8000884:	4b0b      	ldr	r3, [pc, #44]	; (80008b4 <handler_reset+0x58>)
 8000886:	603b      	str	r3, [r7, #0]
 8000888:	e004      	b.n	8000894 <handler_reset+0x38>
 800088a:	683b      	ldr	r3, [r7, #0]
 800088c:	1d1a      	adds	r2, r3, #4
 800088e:	603a      	str	r2, [r7, #0]
 8000890:	2200      	movs	r2, #0
 8000892:	601a      	str	r2, [r3, #0]
 8000894:	683a      	ldr	r2, [r7, #0]
 8000896:	4b08      	ldr	r3, [pc, #32]	; (80008b8 <handler_reset+0x5c>)
 8000898:	429a      	cmp	r2, r3
 800089a:	d3f6      	bcc.n	800088a <handler_reset+0x2e>
 800089c:	f7ff fd62 	bl	8000364 <main>
 80008a0:	3708      	adds	r7, #8
 80008a2:	46bd      	mov	sp, r7
 80008a4:	bd80      	pop	{r7, pc}
 80008a6:	bf00      	nop
 80008a8:	080046b8 	.word	0x080046b8
 80008ac:	20000000 	.word	0x20000000
 80008b0:	20000224 	.word	0x20000224
 80008b4:	20000224 	.word	0x20000224
 80008b8:	20002cd4 	.word	0x20002cd4

080008bc <default_handler>:
 80008bc:	b480      	push	{r7}
 80008be:	af00      	add	r7, sp, #0
 80008c0:	e7fe      	b.n	80008c0 <default_handler+0x4>
 80008c2:	bf00      	nop

080008c4 <NVIC_EnableIRQ>:
 80008c4:	b480      	push	{r7}
 80008c6:	b083      	sub	sp, #12
 80008c8:	af00      	add	r7, sp, #0
 80008ca:	4603      	mov	r3, r0
 80008cc:	71fb      	strb	r3, [r7, #7]
 80008ce:	4b08      	ldr	r3, [pc, #32]	; (80008f0 <NVIC_EnableIRQ+0x2c>)
 80008d0:	f997 2007 	ldrsb.w	r2, [r7, #7]
 80008d4:	0952      	lsrs	r2, r2, #5
 80008d6:	79f9      	ldrb	r1, [r7, #7]
 80008d8:	f001 011f 	and.w	r1, r1, #31
 80008dc:	2001      	movs	r0, #1
 80008de:	fa00 f101 	lsl.w	r1, r0, r1
 80008e2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80008e6:	370c      	adds	r7, #12
 80008e8:	46bd      	mov	sp, r7
 80008ea:	f85d 7b04 	ldr.w	r7, [sp], #4
 80008ee:	4770      	bx	lr
 80008f0:	e000e100 	.word	0xe000e100

080008f4 <uart_init>:
 80008f4:	b580      	push	{r7, lr}
 80008f6:	af00      	add	r7, sp, #0
 80008f8:	4b34      	ldr	r3, [pc, #208]	; (80009cc <uart_init+0xd8>)
 80008fa:	4a34      	ldr	r2, [pc, #208]	; (80009cc <uart_init+0xd8>)
 80008fc:	6c12      	ldr	r2, [r2, #64]	; 0x40
 80008fe:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 8000902:	641a      	str	r2, [r3, #64]	; 0x40
 8000904:	4b32      	ldr	r3, [pc, #200]	; (80009d0 <uart_init+0xdc>)
 8000906:	4a32      	ldr	r2, [pc, #200]	; (80009d0 <uart_init+0xdc>)
 8000908:	8992      	ldrh	r2, [r2, #12]
 800090a:	b292      	uxth	r2, r2
 800090c:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8000910:	b292      	uxth	r2, r2
 8000912:	819a      	strh	r2, [r3, #12]
 8000914:	4b2e      	ldr	r3, [pc, #184]	; (80009d0 <uart_init+0xdc>)
 8000916:	4a2e      	ldr	r2, [pc, #184]	; (80009d0 <uart_init+0xdc>)
 8000918:	8992      	ldrh	r2, [r2, #12]
 800091a:	b292      	uxth	r2, r2
 800091c:	f042 0204 	orr.w	r2, r2, #4
 8000920:	b292      	uxth	r2, r2
 8000922:	819a      	strh	r2, [r3, #12]
 8000924:	4b2a      	ldr	r3, [pc, #168]	; (80009d0 <uart_init+0xdc>)
 8000926:	4a2a      	ldr	r2, [pc, #168]	; (80009d0 <uart_init+0xdc>)
 8000928:	8992      	ldrh	r2, [r2, #12]
 800092a:	b292      	uxth	r2, r2
 800092c:	f042 0220 	orr.w	r2, r2, #32
 8000930:	b292      	uxth	r2, r2
 8000932:	819a      	strh	r2, [r3, #12]
 8000934:	4b26      	ldr	r3, [pc, #152]	; (80009d0 <uart_init+0xdc>)
 8000936:	4a26      	ldr	r2, [pc, #152]	; (80009d0 <uart_init+0xdc>)
 8000938:	8992      	ldrh	r2, [r2, #12]
 800093a:	b292      	uxth	r2, r2
 800093c:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000940:	b292      	uxth	r2, r2
 8000942:	819a      	strh	r2, [r3, #12]
 8000944:	2034      	movs	r0, #52	; 0x34
 8000946:	f7ff ffbd 	bl	80008c4 <NVIC_EnableIRQ>
 800094a:	4b21      	ldr	r3, [pc, #132]	; (80009d0 <uart_init+0xdc>)
 800094c:	891b      	ldrh	r3, [r3, #8]
 800094e:	4b20      	ldr	r3, [pc, #128]	; (80009d0 <uart_init+0xdc>)
 8000950:	2200      	movs	r2, #0
 8000952:	811a      	strh	r2, [r3, #8]
 8000954:	4a1e      	ldr	r2, [pc, #120]	; (80009d0 <uart_init+0xdc>)
 8000956:	4b1e      	ldr	r3, [pc, #120]	; (80009d0 <uart_init+0xdc>)
 8000958:	891b      	ldrh	r3, [r3, #8]
 800095a:	b29b      	uxth	r3, r3
 800095c:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 8000960:	f043 0301 	orr.w	r3, r3, #1
 8000964:	b29b      	uxth	r3, r3
 8000966:	8113      	strh	r3, [r2, #8]
 8000968:	4b18      	ldr	r3, [pc, #96]	; (80009cc <uart_init+0xd8>)
 800096a:	4a18      	ldr	r2, [pc, #96]	; (80009cc <uart_init+0xd8>)
 800096c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800096e:	f042 0204 	orr.w	r2, r2, #4
 8000972:	631a      	str	r2, [r3, #48]	; 0x30
 8000974:	4b17      	ldr	r3, [pc, #92]	; (80009d4 <uart_init+0xe0>)
 8000976:	4a17      	ldr	r2, [pc, #92]	; (80009d4 <uart_init+0xe0>)
 8000978:	6812      	ldr	r2, [r2, #0]
 800097a:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 800097e:	601a      	str	r2, [r3, #0]
 8000980:	4b14      	ldr	r3, [pc, #80]	; (80009d4 <uart_init+0xe0>)
 8000982:	4a14      	ldr	r2, [pc, #80]	; (80009d4 <uart_init+0xe0>)
 8000984:	6812      	ldr	r2, [r2, #0]
 8000986:	f442 0220 	orr.w	r2, r2, #10485760	; 0xa00000
 800098a:	601a      	str	r2, [r3, #0]
 800098c:	4b11      	ldr	r3, [pc, #68]	; (80009d4 <uart_init+0xe0>)
 800098e:	4a11      	ldr	r2, [pc, #68]	; (80009d4 <uart_init+0xe0>)
 8000990:	6892      	ldr	r2, [r2, #8]
 8000992:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8000996:	609a      	str	r2, [r3, #8]
 8000998:	4b0e      	ldr	r3, [pc, #56]	; (80009d4 <uart_init+0xe0>)
 800099a:	4a0e      	ldr	r2, [pc, #56]	; (80009d4 <uart_init+0xe0>)
 800099c:	6a52      	ldr	r2, [r2, #36]	; 0x24
 800099e:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 80009a2:	625a      	str	r2, [r3, #36]	; 0x24
 80009a4:	4b0b      	ldr	r3, [pc, #44]	; (80009d4 <uart_init+0xe0>)
 80009a6:	4a0b      	ldr	r2, [pc, #44]	; (80009d4 <uart_init+0xe0>)
 80009a8:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80009aa:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 80009ae:	625a      	str	r2, [r3, #36]	; 0x24
 80009b0:	4b08      	ldr	r3, [pc, #32]	; (80009d4 <uart_init+0xe0>)
 80009b2:	4a08      	ldr	r2, [pc, #32]	; (80009d4 <uart_init+0xe0>)
 80009b4:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80009b6:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 80009ba:	625a      	str	r2, [r3, #36]	; 0x24
 80009bc:	4b05      	ldr	r3, [pc, #20]	; (80009d4 <uart_init+0xe0>)
 80009be:	4a05      	ldr	r2, [pc, #20]	; (80009d4 <uart_init+0xe0>)
 80009c0:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80009c2:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 80009c6:	625a      	str	r2, [r3, #36]	; 0x24
 80009c8:	bd80      	pop	{r7, pc}
 80009ca:	bf00      	nop
 80009cc:	40023800 	.word	0x40023800
 80009d0:	40004c00 	.word	0x40004c00
 80009d4:	40020800 	.word	0x40020800

080009d8 <uart_putch>:
 80009d8:	b480      	push	{r7}
 80009da:	b083      	sub	sp, #12
 80009dc:	af00      	add	r7, sp, #0
 80009de:	4603      	mov	r3, r0
 80009e0:	71fb      	strb	r3, [r7, #7]
 80009e2:	4b13      	ldr	r3, [pc, #76]	; (8000a30 <uart_putch+0x58>)
 80009e4:	681a      	ldr	r2, [r3, #0]
 80009e6:	4b13      	ldr	r3, [pc, #76]	; (8000a34 <uart_putch+0x5c>)
 80009e8:	681b      	ldr	r3, [r3, #0]
 80009ea:	429a      	cmp	r2, r3
 80009ec:	d107      	bne.n	80009fe <uart_putch+0x26>
 80009ee:	4b12      	ldr	r3, [pc, #72]	; (8000a38 <uart_putch+0x60>)
 80009f0:	4a11      	ldr	r2, [pc, #68]	; (8000a38 <uart_putch+0x60>)
 80009f2:	8992      	ldrh	r2, [r2, #12]
 80009f4:	b292      	uxth	r2, r2
 80009f6:	f042 0208 	orr.w	r2, r2, #8
 80009fa:	b292      	uxth	r2, r2
 80009fc:	819a      	strh	r2, [r3, #12]
 80009fe:	4b0c      	ldr	r3, [pc, #48]	; (8000a30 <uart_putch+0x58>)
 8000a00:	681b      	ldr	r3, [r3, #0]
 8000a02:	4a0e      	ldr	r2, [pc, #56]	; (8000a3c <uart_putch+0x64>)
 8000a04:	79f9      	ldrb	r1, [r7, #7]
 8000a06:	54d1      	strb	r1, [r2, r3]
 8000a08:	4b09      	ldr	r3, [pc, #36]	; (8000a30 <uart_putch+0x58>)
 8000a0a:	681b      	ldr	r3, [r3, #0]
 8000a0c:	3301      	adds	r3, #1
 8000a0e:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000a12:	4b07      	ldr	r3, [pc, #28]	; (8000a30 <uart_putch+0x58>)
 8000a14:	601a      	str	r2, [r3, #0]
 8000a16:	4b08      	ldr	r3, [pc, #32]	; (8000a38 <uart_putch+0x60>)
 8000a18:	4a07      	ldr	r2, [pc, #28]	; (8000a38 <uart_putch+0x60>)
 8000a1a:	8992      	ldrh	r2, [r2, #12]
 8000a1c:	b292      	uxth	r2, r2
 8000a1e:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000a22:	b292      	uxth	r2, r2
 8000a24:	819a      	strh	r2, [r3, #12]
 8000a26:	370c      	adds	r7, #12
 8000a28:	46bd      	mov	sp, r7
 8000a2a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a2e:	4770      	bx	lr
 8000a30:	2000064c 	.word	0x2000064c
 8000a34:	20000648 	.word	0x20000648
 8000a38:	40004c00 	.word	0x40004c00
 8000a3c:	20000248 	.word	0x20000248

08000a40 <uart_send>:
 8000a40:	b480      	push	{r7}
 8000a42:	b085      	sub	sp, #20
 8000a44:	af00      	add	r7, sp, #0
 8000a46:	6078      	str	r0, [r7, #4]
 8000a48:	6039      	str	r1, [r7, #0]
 8000a4a:	4b20      	ldr	r3, [pc, #128]	; (8000acc <uart_send+0x8c>)
 8000a4c:	681a      	ldr	r2, [r3, #0]
 8000a4e:	4b20      	ldr	r3, [pc, #128]	; (8000ad0 <uart_send+0x90>)
 8000a50:	681b      	ldr	r3, [r3, #0]
 8000a52:	429a      	cmp	r2, r3
 8000a54:	d107      	bne.n	8000a66 <uart_send+0x26>
 8000a56:	4b1f      	ldr	r3, [pc, #124]	; (8000ad4 <uart_send+0x94>)
 8000a58:	4a1e      	ldr	r2, [pc, #120]	; (8000ad4 <uart_send+0x94>)
 8000a5a:	8992      	ldrh	r2, [r2, #12]
 8000a5c:	b292      	uxth	r2, r2
 8000a5e:	f042 0208 	orr.w	r2, r2, #8
 8000a62:	b292      	uxth	r2, r2
 8000a64:	819a      	strh	r2, [r3, #12]
 8000a66:	2300      	movs	r3, #0
 8000a68:	60fb      	str	r3, [r7, #12]
 8000a6a:	e01b      	b.n	8000aa4 <uart_send+0x64>
 8000a6c:	4b17      	ldr	r3, [pc, #92]	; (8000acc <uart_send+0x8c>)
 8000a6e:	681b      	ldr	r3, [r3, #0]
 8000a70:	68fa      	ldr	r2, [r7, #12]
 8000a72:	6879      	ldr	r1, [r7, #4]
 8000a74:	440a      	add	r2, r1
 8000a76:	7811      	ldrb	r1, [r2, #0]
 8000a78:	4a17      	ldr	r2, [pc, #92]	; (8000ad8 <uart_send+0x98>)
 8000a7a:	54d1      	strb	r1, [r2, r3]
 8000a7c:	4b13      	ldr	r3, [pc, #76]	; (8000acc <uart_send+0x8c>)
 8000a7e:	681b      	ldr	r3, [r3, #0]
 8000a80:	3301      	adds	r3, #1
 8000a82:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000a86:	4b11      	ldr	r3, [pc, #68]	; (8000acc <uart_send+0x8c>)
 8000a88:	601a      	str	r2, [r3, #0]
 8000a8a:	4b10      	ldr	r3, [pc, #64]	; (8000acc <uart_send+0x8c>)
 8000a8c:	681a      	ldr	r2, [r3, #0]
 8000a8e:	4b10      	ldr	r3, [pc, #64]	; (8000ad0 <uart_send+0x90>)
 8000a90:	681b      	ldr	r3, [r3, #0]
 8000a92:	429a      	cmp	r2, r3
 8000a94:	d103      	bne.n	8000a9e <uart_send+0x5e>
 8000a96:	68fb      	ldr	r3, [r7, #12]
 8000a98:	3301      	adds	r3, #1
 8000a9a:	60fb      	str	r3, [r7, #12]
 8000a9c:	e006      	b.n	8000aac <uart_send+0x6c>
 8000a9e:	68fb      	ldr	r3, [r7, #12]
 8000aa0:	3301      	adds	r3, #1
 8000aa2:	60fb      	str	r3, [r7, #12]
 8000aa4:	68fa      	ldr	r2, [r7, #12]
 8000aa6:	683b      	ldr	r3, [r7, #0]
 8000aa8:	429a      	cmp	r2, r3
 8000aaa:	dbdf      	blt.n	8000a6c <uart_send+0x2c>
 8000aac:	4b09      	ldr	r3, [pc, #36]	; (8000ad4 <uart_send+0x94>)
 8000aae:	4a09      	ldr	r2, [pc, #36]	; (8000ad4 <uart_send+0x94>)
 8000ab0:	8992      	ldrh	r2, [r2, #12]
 8000ab2:	b292      	uxth	r2, r2
 8000ab4:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000ab8:	b292      	uxth	r2, r2
 8000aba:	819a      	strh	r2, [r3, #12]
 8000abc:	68fb      	ldr	r3, [r7, #12]
 8000abe:	4618      	mov	r0, r3
 8000ac0:	3714      	adds	r7, #20
 8000ac2:	46bd      	mov	sp, r7
 8000ac4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ac8:	4770      	bx	lr
 8000aca:	bf00      	nop
 8000acc:	2000064c 	.word	0x2000064c
 8000ad0:	20000648 	.word	0x20000648
 8000ad4:	40004c00 	.word	0x40004c00
 8000ad8:	20000248 	.word	0x20000248

08000adc <uart_send_str>:
 8000adc:	b480      	push	{r7}
 8000ade:	b085      	sub	sp, #20
 8000ae0:	af00      	add	r7, sp, #0
 8000ae2:	6078      	str	r0, [r7, #4]
 8000ae4:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000ae8:	60bb      	str	r3, [r7, #8]
 8000aea:	4b25      	ldr	r3, [pc, #148]	; (8000b80 <uart_send_str+0xa4>)
 8000aec:	681a      	ldr	r2, [r3, #0]
 8000aee:	4b25      	ldr	r3, [pc, #148]	; (8000b84 <uart_send_str+0xa8>)
 8000af0:	681b      	ldr	r3, [r3, #0]
 8000af2:	1ad3      	subs	r3, r2, r3
 8000af4:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000af8:	68ba      	ldr	r2, [r7, #8]
 8000afa:	1ad3      	subs	r3, r2, r3
 8000afc:	60bb      	str	r3, [r7, #8]
 8000afe:	4b20      	ldr	r3, [pc, #128]	; (8000b80 <uart_send_str+0xa4>)
 8000b00:	681a      	ldr	r2, [r3, #0]
 8000b02:	4b20      	ldr	r3, [pc, #128]	; (8000b84 <uart_send_str+0xa8>)
 8000b04:	681b      	ldr	r3, [r3, #0]
 8000b06:	429a      	cmp	r2, r3
 8000b08:	d107      	bne.n	8000b1a <uart_send_str+0x3e>
 8000b0a:	4b1f      	ldr	r3, [pc, #124]	; (8000b88 <uart_send_str+0xac>)
 8000b0c:	4a1e      	ldr	r2, [pc, #120]	; (8000b88 <uart_send_str+0xac>)
 8000b0e:	8992      	ldrh	r2, [r2, #12]
 8000b10:	b292      	uxth	r2, r2
 8000b12:	f042 0208 	orr.w	r2, r2, #8
 8000b16:	b292      	uxth	r2, r2
 8000b18:	819a      	strh	r2, [r3, #12]
 8000b1a:	2300      	movs	r3, #0
 8000b1c:	60fb      	str	r3, [r7, #12]
 8000b1e:	e01b      	b.n	8000b58 <uart_send_str+0x7c>
 8000b20:	68fb      	ldr	r3, [r7, #12]
 8000b22:	687a      	ldr	r2, [r7, #4]
 8000b24:	4413      	add	r3, r2
 8000b26:	781b      	ldrb	r3, [r3, #0]
 8000b28:	2b00      	cmp	r3, #0
 8000b2a:	d103      	bne.n	8000b34 <uart_send_str+0x58>
 8000b2c:	68fb      	ldr	r3, [r7, #12]
 8000b2e:	3301      	adds	r3, #1
 8000b30:	60fb      	str	r3, [r7, #12]
 8000b32:	e015      	b.n	8000b60 <uart_send_str+0x84>
 8000b34:	4b12      	ldr	r3, [pc, #72]	; (8000b80 <uart_send_str+0xa4>)
 8000b36:	681b      	ldr	r3, [r3, #0]
 8000b38:	68fa      	ldr	r2, [r7, #12]
 8000b3a:	6879      	ldr	r1, [r7, #4]
 8000b3c:	440a      	add	r2, r1
 8000b3e:	7811      	ldrb	r1, [r2, #0]
 8000b40:	4a12      	ldr	r2, [pc, #72]	; (8000b8c <uart_send_str+0xb0>)
 8000b42:	54d1      	strb	r1, [r2, r3]
 8000b44:	4b0e      	ldr	r3, [pc, #56]	; (8000b80 <uart_send_str+0xa4>)
 8000b46:	681b      	ldr	r3, [r3, #0]
 8000b48:	3301      	adds	r3, #1
 8000b4a:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000b4e:	4b0c      	ldr	r3, [pc, #48]	; (8000b80 <uart_send_str+0xa4>)
 8000b50:	601a      	str	r2, [r3, #0]
 8000b52:	68fb      	ldr	r3, [r7, #12]
 8000b54:	3301      	adds	r3, #1
 8000b56:	60fb      	str	r3, [r7, #12]
 8000b58:	68fa      	ldr	r2, [r7, #12]
 8000b5a:	68bb      	ldr	r3, [r7, #8]
 8000b5c:	429a      	cmp	r2, r3
 8000b5e:	dbdf      	blt.n	8000b20 <uart_send_str+0x44>
 8000b60:	4b09      	ldr	r3, [pc, #36]	; (8000b88 <uart_send_str+0xac>)
 8000b62:	4a09      	ldr	r2, [pc, #36]	; (8000b88 <uart_send_str+0xac>)
 8000b64:	8992      	ldrh	r2, [r2, #12]
 8000b66:	b292      	uxth	r2, r2
 8000b68:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000b6c:	b292      	uxth	r2, r2
 8000b6e:	819a      	strh	r2, [r3, #12]
 8000b70:	68fb      	ldr	r3, [r7, #12]
 8000b72:	4618      	mov	r0, r3
 8000b74:	3714      	adds	r7, #20
 8000b76:	46bd      	mov	sp, r7
 8000b78:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b7c:	4770      	bx	lr
 8000b7e:	bf00      	nop
 8000b80:	2000064c 	.word	0x2000064c
 8000b84:	20000648 	.word	0x20000648
 8000b88:	40004c00 	.word	0x40004c00
 8000b8c:	20000248 	.word	0x20000248

08000b90 <uart_read>:
 8000b90:	b480      	push	{r7}
 8000b92:	b085      	sub	sp, #20
 8000b94:	af00      	add	r7, sp, #0
 8000b96:	6078      	str	r0, [r7, #4]
 8000b98:	6039      	str	r1, [r7, #0]
 8000b9a:	4b19      	ldr	r3, [pc, #100]	; (8000c00 <uart_read+0x70>)
 8000b9c:	681a      	ldr	r2, [r3, #0]
 8000b9e:	4b19      	ldr	r3, [pc, #100]	; (8000c04 <uart_read+0x74>)
 8000ba0:	681b      	ldr	r3, [r3, #0]
 8000ba2:	429a      	cmp	r2, r3
 8000ba4:	d101      	bne.n	8000baa <uart_read+0x1a>
 8000ba6:	2300      	movs	r3, #0
 8000ba8:	e023      	b.n	8000bf2 <uart_read+0x62>
 8000baa:	2300      	movs	r3, #0
 8000bac:	60fb      	str	r3, [r7, #12]
 8000bae:	e01b      	b.n	8000be8 <uart_read+0x58>
 8000bb0:	68fb      	ldr	r3, [r7, #12]
 8000bb2:	687a      	ldr	r2, [r7, #4]
 8000bb4:	4413      	add	r3, r2
 8000bb6:	4a12      	ldr	r2, [pc, #72]	; (8000c00 <uart_read+0x70>)
 8000bb8:	6812      	ldr	r2, [r2, #0]
 8000bba:	4913      	ldr	r1, [pc, #76]	; (8000c08 <uart_read+0x78>)
 8000bbc:	5c8a      	ldrb	r2, [r1, r2]
 8000bbe:	701a      	strb	r2, [r3, #0]
 8000bc0:	4b0f      	ldr	r3, [pc, #60]	; (8000c00 <uart_read+0x70>)
 8000bc2:	681b      	ldr	r3, [r3, #0]
 8000bc4:	3301      	adds	r3, #1
 8000bc6:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000bca:	4b0d      	ldr	r3, [pc, #52]	; (8000c00 <uart_read+0x70>)
 8000bcc:	601a      	str	r2, [r3, #0]
 8000bce:	4b0c      	ldr	r3, [pc, #48]	; (8000c00 <uart_read+0x70>)
 8000bd0:	681a      	ldr	r2, [r3, #0]
 8000bd2:	4b0c      	ldr	r3, [pc, #48]	; (8000c04 <uart_read+0x74>)
 8000bd4:	681b      	ldr	r3, [r3, #0]
 8000bd6:	429a      	cmp	r2, r3
 8000bd8:	d103      	bne.n	8000be2 <uart_read+0x52>
 8000bda:	68fb      	ldr	r3, [r7, #12]
 8000bdc:	3301      	adds	r3, #1
 8000bde:	60fb      	str	r3, [r7, #12]
 8000be0:	e006      	b.n	8000bf0 <uart_read+0x60>
 8000be2:	68fb      	ldr	r3, [r7, #12]
 8000be4:	3301      	adds	r3, #1
 8000be6:	60fb      	str	r3, [r7, #12]
 8000be8:	68fa      	ldr	r2, [r7, #12]
 8000bea:	683b      	ldr	r3, [r7, #0]
 8000bec:	429a      	cmp	r2, r3
 8000bee:	dbdf      	blt.n	8000bb0 <uart_read+0x20>
 8000bf0:	68fb      	ldr	r3, [r7, #12]
 8000bf2:	4618      	mov	r0, r3
 8000bf4:	3714      	adds	r7, #20
 8000bf6:	46bd      	mov	sp, r7
 8000bf8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bfc:	4770      	bx	lr
 8000bfe:	bf00      	nop
 8000c00:	20000a54 	.word	0x20000a54
 8000c04:	20000a50 	.word	0x20000a50
 8000c08:	20000650 	.word	0x20000650

08000c0c <UART4_IRQHandler>:
 8000c0c:	b480      	push	{r7}
 8000c0e:	af00      	add	r7, sp, #0
 8000c10:	4b1e      	ldr	r3, [pc, #120]	; (8000c8c <UART4_IRQHandler+0x80>)
 8000c12:	881b      	ldrh	r3, [r3, #0]
 8000c14:	b29b      	uxth	r3, r3
 8000c16:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000c1a:	2b00      	cmp	r3, #0
 8000c1c:	d01b      	beq.n	8000c56 <UART4_IRQHandler+0x4a>
 8000c1e:	4b1c      	ldr	r3, [pc, #112]	; (8000c90 <UART4_IRQHandler+0x84>)
 8000c20:	681a      	ldr	r2, [r3, #0]
 8000c22:	4b1c      	ldr	r3, [pc, #112]	; (8000c94 <UART4_IRQHandler+0x88>)
 8000c24:	681b      	ldr	r3, [r3, #0]
 8000c26:	429a      	cmp	r2, r3
 8000c28:	d108      	bne.n	8000c3c <UART4_IRQHandler+0x30>
 8000c2a:	4b18      	ldr	r3, [pc, #96]	; (8000c8c <UART4_IRQHandler+0x80>)
 8000c2c:	4a17      	ldr	r2, [pc, #92]	; (8000c8c <UART4_IRQHandler+0x80>)
 8000c2e:	8992      	ldrh	r2, [r2, #12]
 8000c30:	b292      	uxth	r2, r2
 8000c32:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 8000c36:	b292      	uxth	r2, r2
 8000c38:	819a      	strh	r2, [r3, #12]
 8000c3a:	e00c      	b.n	8000c56 <UART4_IRQHandler+0x4a>
 8000c3c:	4b13      	ldr	r3, [pc, #76]	; (8000c8c <UART4_IRQHandler+0x80>)
 8000c3e:	4a14      	ldr	r2, [pc, #80]	; (8000c90 <UART4_IRQHandler+0x84>)
 8000c40:	6812      	ldr	r2, [r2, #0]
 8000c42:	4915      	ldr	r1, [pc, #84]	; (8000c98 <UART4_IRQHandler+0x8c>)
 8000c44:	5c8a      	ldrb	r2, [r1, r2]
 8000c46:	809a      	strh	r2, [r3, #4]
 8000c48:	4b11      	ldr	r3, [pc, #68]	; (8000c90 <UART4_IRQHandler+0x84>)
 8000c4a:	681b      	ldr	r3, [r3, #0]
 8000c4c:	3301      	adds	r3, #1
 8000c4e:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000c52:	4b0f      	ldr	r3, [pc, #60]	; (8000c90 <UART4_IRQHandler+0x84>)
 8000c54:	601a      	str	r2, [r3, #0]
 8000c56:	4b0d      	ldr	r3, [pc, #52]	; (8000c8c <UART4_IRQHandler+0x80>)
 8000c58:	881b      	ldrh	r3, [r3, #0]
 8000c5a:	b29b      	uxth	r3, r3
 8000c5c:	f003 0320 	and.w	r3, r3, #32
 8000c60:	2b00      	cmp	r3, #0
 8000c62:	d00e      	beq.n	8000c82 <UART4_IRQHandler+0x76>
 8000c64:	4b0d      	ldr	r3, [pc, #52]	; (8000c9c <UART4_IRQHandler+0x90>)
 8000c66:	681b      	ldr	r3, [r3, #0]
 8000c68:	4a08      	ldr	r2, [pc, #32]	; (8000c8c <UART4_IRQHandler+0x80>)
 8000c6a:	8892      	ldrh	r2, [r2, #4]
 8000c6c:	b292      	uxth	r2, r2
 8000c6e:	b2d1      	uxtb	r1, r2
 8000c70:	4a0b      	ldr	r2, [pc, #44]	; (8000ca0 <UART4_IRQHandler+0x94>)
 8000c72:	54d1      	strb	r1, [r2, r3]
 8000c74:	4b09      	ldr	r3, [pc, #36]	; (8000c9c <UART4_IRQHandler+0x90>)
 8000c76:	681b      	ldr	r3, [r3, #0]
 8000c78:	3301      	adds	r3, #1
 8000c7a:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000c7e:	4b07      	ldr	r3, [pc, #28]	; (8000c9c <UART4_IRQHandler+0x90>)
 8000c80:	601a      	str	r2, [r3, #0]
 8000c82:	46bd      	mov	sp, r7
 8000c84:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c88:	4770      	bx	lr
 8000c8a:	bf00      	nop
 8000c8c:	40004c00 	.word	0x40004c00
 8000c90:	20000648 	.word	0x20000648
 8000c94:	2000064c 	.word	0x2000064c
 8000c98:	20000248 	.word	0x20000248
 8000c9c:	20000a50 	.word	0x20000a50
 8000ca0:	20000650 	.word	0x20000650

08000ca4 <xputc>:
 8000ca4:	b580      	push	{r7, lr}
 8000ca6:	b082      	sub	sp, #8
 8000ca8:	af00      	add	r7, sp, #0
 8000caa:	4603      	mov	r3, r0
 8000cac:	71fb      	strb	r3, [r7, #7]
 8000cae:	79fb      	ldrb	r3, [r7, #7]
 8000cb0:	2b0a      	cmp	r3, #10
 8000cb2:	d102      	bne.n	8000cba <xputc+0x16>
 8000cb4:	200d      	movs	r0, #13
 8000cb6:	f7ff fff5 	bl	8000ca4 <xputc>
 8000cba:	4b0c      	ldr	r3, [pc, #48]	; (8000cec <xputc+0x48>)
 8000cbc:	681b      	ldr	r3, [r3, #0]
 8000cbe:	2b00      	cmp	r3, #0
 8000cc0:	d007      	beq.n	8000cd2 <xputc+0x2e>
 8000cc2:	4b0a      	ldr	r3, [pc, #40]	; (8000cec <xputc+0x48>)
 8000cc4:	681b      	ldr	r3, [r3, #0]
 8000cc6:	1c59      	adds	r1, r3, #1
 8000cc8:	4a08      	ldr	r2, [pc, #32]	; (8000cec <xputc+0x48>)
 8000cca:	6011      	str	r1, [r2, #0]
 8000ccc:	79fa      	ldrb	r2, [r7, #7]
 8000cce:	701a      	strb	r2, [r3, #0]
 8000cd0:	e008      	b.n	8000ce4 <xputc+0x40>
 8000cd2:	4b07      	ldr	r3, [pc, #28]	; (8000cf0 <xputc+0x4c>)
 8000cd4:	681b      	ldr	r3, [r3, #0]
 8000cd6:	2b00      	cmp	r3, #0
 8000cd8:	d004      	beq.n	8000ce4 <xputc+0x40>
 8000cda:	4b05      	ldr	r3, [pc, #20]	; (8000cf0 <xputc+0x4c>)
 8000cdc:	681b      	ldr	r3, [r3, #0]
 8000cde:	79fa      	ldrb	r2, [r7, #7]
 8000ce0:	4610      	mov	r0, r2
 8000ce2:	4798      	blx	r3
 8000ce4:	3708      	adds	r7, #8
 8000ce6:	46bd      	mov	sp, r7
 8000ce8:	bd80      	pop	{r7, pc}
 8000cea:	bf00      	nop
 8000cec:	20000a5c 	.word	0x20000a5c
 8000cf0:	20000a58 	.word	0x20000a58

08000cf4 <xputs>:
 8000cf4:	b580      	push	{r7, lr}
 8000cf6:	b082      	sub	sp, #8
 8000cf8:	af00      	add	r7, sp, #0
 8000cfa:	6078      	str	r0, [r7, #4]
 8000cfc:	e006      	b.n	8000d0c <xputs+0x18>
 8000cfe:	687b      	ldr	r3, [r7, #4]
 8000d00:	1c5a      	adds	r2, r3, #1
 8000d02:	607a      	str	r2, [r7, #4]
 8000d04:	781b      	ldrb	r3, [r3, #0]
 8000d06:	4618      	mov	r0, r3
 8000d08:	f7ff ffcc 	bl	8000ca4 <xputc>
 8000d0c:	687b      	ldr	r3, [r7, #4]
 8000d0e:	781b      	ldrb	r3, [r3, #0]
 8000d10:	2b00      	cmp	r3, #0
 8000d12:	d1f4      	bne.n	8000cfe <xputs+0xa>
 8000d14:	3708      	adds	r7, #8
 8000d16:	46bd      	mov	sp, r7
 8000d18:	bd80      	pop	{r7, pc}
 8000d1a:	bf00      	nop

08000d1c <xfputs>:
 8000d1c:	b580      	push	{r7, lr}
 8000d1e:	b084      	sub	sp, #16
 8000d20:	af00      	add	r7, sp, #0
 8000d22:	6078      	str	r0, [r7, #4]
 8000d24:	6039      	str	r1, [r7, #0]
 8000d26:	4b0c      	ldr	r3, [pc, #48]	; (8000d58 <xfputs+0x3c>)
 8000d28:	681b      	ldr	r3, [r3, #0]
 8000d2a:	60fb      	str	r3, [r7, #12]
 8000d2c:	4b0a      	ldr	r3, [pc, #40]	; (8000d58 <xfputs+0x3c>)
 8000d2e:	687a      	ldr	r2, [r7, #4]
 8000d30:	601a      	str	r2, [r3, #0]
 8000d32:	e006      	b.n	8000d42 <xfputs+0x26>
 8000d34:	683b      	ldr	r3, [r7, #0]
 8000d36:	1c5a      	adds	r2, r3, #1
 8000d38:	603a      	str	r2, [r7, #0]
 8000d3a:	781b      	ldrb	r3, [r3, #0]
 8000d3c:	4618      	mov	r0, r3
 8000d3e:	f7ff ffb1 	bl	8000ca4 <xputc>
 8000d42:	683b      	ldr	r3, [r7, #0]
 8000d44:	781b      	ldrb	r3, [r3, #0]
 8000d46:	2b00      	cmp	r3, #0
 8000d48:	d1f4      	bne.n	8000d34 <xfputs+0x18>
 8000d4a:	4b03      	ldr	r3, [pc, #12]	; (8000d58 <xfputs+0x3c>)
 8000d4c:	68fa      	ldr	r2, [r7, #12]
 8000d4e:	601a      	str	r2, [r3, #0]
 8000d50:	3710      	adds	r7, #16
 8000d52:	46bd      	mov	sp, r7
 8000d54:	bd80      	pop	{r7, pc}
 8000d56:	bf00      	nop
 8000d58:	20000a58 	.word	0x20000a58

08000d5c <xvprintf>:
 8000d5c:	b580      	push	{r7, lr}
 8000d5e:	b08e      	sub	sp, #56	; 0x38
 8000d60:	af00      	add	r7, sp, #0
 8000d62:	6078      	str	r0, [r7, #4]
 8000d64:	6039      	str	r1, [r7, #0]
 8000d66:	687b      	ldr	r3, [r7, #4]
 8000d68:	1c5a      	adds	r2, r3, #1
 8000d6a:	607a      	str	r2, [r7, #4]
 8000d6c:	781b      	ldrb	r3, [r3, #0]
 8000d6e:	77fb      	strb	r3, [r7, #31]
 8000d70:	7ffb      	ldrb	r3, [r7, #31]
 8000d72:	2b00      	cmp	r3, #0
 8000d74:	d100      	bne.n	8000d78 <xvprintf+0x1c>
 8000d76:	e166      	b.n	8001046 <xvprintf+0x2ea>
 8000d78:	7ffb      	ldrb	r3, [r7, #31]
 8000d7a:	2b25      	cmp	r3, #37	; 0x25
 8000d7c:	d004      	beq.n	8000d88 <xvprintf+0x2c>
 8000d7e:	7ffb      	ldrb	r3, [r7, #31]
 8000d80:	4618      	mov	r0, r3
 8000d82:	f7ff ff8f 	bl	8000ca4 <xputc>
 8000d86:	e15d      	b.n	8001044 <xvprintf+0x2e8>
 8000d88:	2300      	movs	r3, #0
 8000d8a:	627b      	str	r3, [r7, #36]	; 0x24
 8000d8c:	687b      	ldr	r3, [r7, #4]
 8000d8e:	1c5a      	adds	r2, r3, #1
 8000d90:	607a      	str	r2, [r7, #4]
 8000d92:	781b      	ldrb	r3, [r3, #0]
 8000d94:	77fb      	strb	r3, [r7, #31]
 8000d96:	7ffb      	ldrb	r3, [r7, #31]
 8000d98:	2b30      	cmp	r3, #48	; 0x30
 8000d9a:	d107      	bne.n	8000dac <xvprintf+0x50>
 8000d9c:	2301      	movs	r3, #1
 8000d9e:	627b      	str	r3, [r7, #36]	; 0x24
 8000da0:	687b      	ldr	r3, [r7, #4]
 8000da2:	1c5a      	adds	r2, r3, #1
 8000da4:	607a      	str	r2, [r7, #4]
 8000da6:	781b      	ldrb	r3, [r3, #0]
 8000da8:	77fb      	strb	r3, [r7, #31]
 8000daa:	e009      	b.n	8000dc0 <xvprintf+0x64>
 8000dac:	7ffb      	ldrb	r3, [r7, #31]
 8000dae:	2b2d      	cmp	r3, #45	; 0x2d
 8000db0:	d106      	bne.n	8000dc0 <xvprintf+0x64>
 8000db2:	2302      	movs	r3, #2
 8000db4:	627b      	str	r3, [r7, #36]	; 0x24
 8000db6:	687b      	ldr	r3, [r7, #4]
 8000db8:	1c5a      	adds	r2, r3, #1
 8000dba:	607a      	str	r2, [r7, #4]
 8000dbc:	781b      	ldrb	r3, [r3, #0]
 8000dbe:	77fb      	strb	r3, [r7, #31]
 8000dc0:	2300      	movs	r3, #0
 8000dc2:	62bb      	str	r3, [r7, #40]	; 0x28
 8000dc4:	e00e      	b.n	8000de4 <xvprintf+0x88>
 8000dc6:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000dc8:	4613      	mov	r3, r2
 8000dca:	009b      	lsls	r3, r3, #2
 8000dcc:	4413      	add	r3, r2
 8000dce:	005b      	lsls	r3, r3, #1
 8000dd0:	461a      	mov	r2, r3
 8000dd2:	7ffb      	ldrb	r3, [r7, #31]
 8000dd4:	4413      	add	r3, r2
 8000dd6:	3b30      	subs	r3, #48	; 0x30
 8000dd8:	62bb      	str	r3, [r7, #40]	; 0x28
 8000dda:	687b      	ldr	r3, [r7, #4]
 8000ddc:	1c5a      	adds	r2, r3, #1
 8000dde:	607a      	str	r2, [r7, #4]
 8000de0:	781b      	ldrb	r3, [r3, #0]
 8000de2:	77fb      	strb	r3, [r7, #31]
 8000de4:	7ffb      	ldrb	r3, [r7, #31]
 8000de6:	2b2f      	cmp	r3, #47	; 0x2f
 8000de8:	d902      	bls.n	8000df0 <xvprintf+0x94>
 8000dea:	7ffb      	ldrb	r3, [r7, #31]
 8000dec:	2b39      	cmp	r3, #57	; 0x39
 8000dee:	d9ea      	bls.n	8000dc6 <xvprintf+0x6a>
 8000df0:	7ffb      	ldrb	r3, [r7, #31]
 8000df2:	2b6c      	cmp	r3, #108	; 0x6c
 8000df4:	d002      	beq.n	8000dfc <xvprintf+0xa0>
 8000df6:	7ffb      	ldrb	r3, [r7, #31]
 8000df8:	2b4c      	cmp	r3, #76	; 0x4c
 8000dfa:	d108      	bne.n	8000e0e <xvprintf+0xb2>
 8000dfc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000dfe:	f043 0304 	orr.w	r3, r3, #4
 8000e02:	627b      	str	r3, [r7, #36]	; 0x24
 8000e04:	687b      	ldr	r3, [r7, #4]
 8000e06:	1c5a      	adds	r2, r3, #1
 8000e08:	607a      	str	r2, [r7, #4]
 8000e0a:	781b      	ldrb	r3, [r3, #0]
 8000e0c:	77fb      	strb	r3, [r7, #31]
 8000e0e:	7ffb      	ldrb	r3, [r7, #31]
 8000e10:	2b00      	cmp	r3, #0
 8000e12:	d100      	bne.n	8000e16 <xvprintf+0xba>
 8000e14:	e117      	b.n	8001046 <xvprintf+0x2ea>
 8000e16:	7ffb      	ldrb	r3, [r7, #31]
 8000e18:	77bb      	strb	r3, [r7, #30]
 8000e1a:	7fbb      	ldrb	r3, [r7, #30]
 8000e1c:	2b60      	cmp	r3, #96	; 0x60
 8000e1e:	d902      	bls.n	8000e26 <xvprintf+0xca>
 8000e20:	7fbb      	ldrb	r3, [r7, #30]
 8000e22:	3b20      	subs	r3, #32
 8000e24:	77bb      	strb	r3, [r7, #30]
 8000e26:	7fbb      	ldrb	r3, [r7, #30]
 8000e28:	3b42      	subs	r3, #66	; 0x42
 8000e2a:	2b16      	cmp	r3, #22
 8000e2c:	d873      	bhi.n	8000f16 <xvprintf+0x1ba>
 8000e2e:	a101      	add	r1, pc, #4	; (adr r1, 8000e34 <xvprintf+0xd8>)
 8000e30:	f851 f023 	ldr.w	pc, [r1, r3, lsl #2]
 8000e34:	08000eff 	.word	0x08000eff
 8000e38:	08000eed 	.word	0x08000eed
 8000e3c:	08000f0b 	.word	0x08000f0b
 8000e40:	08000f17 	.word	0x08000f17
 8000e44:	08000f17 	.word	0x08000f17
 8000e48:	08000f17 	.word	0x08000f17
 8000e4c:	08000f17 	.word	0x08000f17
 8000e50:	08000f17 	.word	0x08000f17
 8000e54:	08000f17 	.word	0x08000f17
 8000e58:	08000f17 	.word	0x08000f17
 8000e5c:	08000f17 	.word	0x08000f17
 8000e60:	08000f17 	.word	0x08000f17
 8000e64:	08000f17 	.word	0x08000f17
 8000e68:	08000f05 	.word	0x08000f05
 8000e6c:	08000f17 	.word	0x08000f17
 8000e70:	08000f17 	.word	0x08000f17
 8000e74:	08000f17 	.word	0x08000f17
 8000e78:	08000e91 	.word	0x08000e91
 8000e7c:	08000f17 	.word	0x08000f17
 8000e80:	08000f0b 	.word	0x08000f0b
 8000e84:	08000f17 	.word	0x08000f17
 8000e88:	08000f17 	.word	0x08000f17
 8000e8c:	08000f11 	.word	0x08000f11
 8000e90:	683b      	ldr	r3, [r7, #0]
 8000e92:	1d1a      	adds	r2, r3, #4
 8000e94:	603a      	str	r2, [r7, #0]
 8000e96:	681b      	ldr	r3, [r3, #0]
 8000e98:	61bb      	str	r3, [r7, #24]
 8000e9a:	2300      	movs	r3, #0
 8000e9c:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000e9e:	e002      	b.n	8000ea6 <xvprintf+0x14a>
 8000ea0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000ea2:	3301      	adds	r3, #1
 8000ea4:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000ea6:	69ba      	ldr	r2, [r7, #24]
 8000ea8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000eaa:	4413      	add	r3, r2
 8000eac:	781b      	ldrb	r3, [r3, #0]
 8000eae:	2b00      	cmp	r3, #0
 8000eb0:	d1f6      	bne.n	8000ea0 <xvprintf+0x144>
 8000eb2:	e002      	b.n	8000eba <xvprintf+0x15e>
 8000eb4:	2020      	movs	r0, #32
 8000eb6:	f7ff fef5 	bl	8000ca4 <xputc>
 8000eba:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000ebc:	f003 0302 	and.w	r3, r3, #2
 8000ec0:	2b00      	cmp	r3, #0
 8000ec2:	d105      	bne.n	8000ed0 <xvprintf+0x174>
 8000ec4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000ec6:	1c5a      	adds	r2, r3, #1
 8000ec8:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000eca:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000ecc:	4293      	cmp	r3, r2
 8000ece:	d3f1      	bcc.n	8000eb4 <xvprintf+0x158>
 8000ed0:	69b8      	ldr	r0, [r7, #24]
 8000ed2:	f7ff ff0f 	bl	8000cf4 <xputs>
 8000ed6:	e002      	b.n	8000ede <xvprintf+0x182>
 8000ed8:	2020      	movs	r0, #32
 8000eda:	f7ff fee3 	bl	8000ca4 <xputc>
 8000ede:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000ee0:	1c5a      	adds	r2, r3, #1
 8000ee2:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000ee4:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000ee6:	4293      	cmp	r3, r2
 8000ee8:	d3f6      	bcc.n	8000ed8 <xvprintf+0x17c>
 8000eea:	e0ab      	b.n	8001044 <xvprintf+0x2e8>
 8000eec:	683b      	ldr	r3, [r7, #0]
 8000eee:	1d1a      	adds	r2, r3, #4
 8000ef0:	603a      	str	r2, [r7, #0]
 8000ef2:	681b      	ldr	r3, [r3, #0]
 8000ef4:	b2db      	uxtb	r3, r3
 8000ef6:	4618      	mov	r0, r3
 8000ef8:	f7ff fed4 	bl	8000ca4 <xputc>
 8000efc:	e0a2      	b.n	8001044 <xvprintf+0x2e8>
 8000efe:	2302      	movs	r3, #2
 8000f00:	637b      	str	r3, [r7, #52]	; 0x34
 8000f02:	e00d      	b.n	8000f20 <xvprintf+0x1c4>
 8000f04:	2308      	movs	r3, #8
 8000f06:	637b      	str	r3, [r7, #52]	; 0x34
 8000f08:	e00a      	b.n	8000f20 <xvprintf+0x1c4>
 8000f0a:	230a      	movs	r3, #10
 8000f0c:	637b      	str	r3, [r7, #52]	; 0x34
 8000f0e:	e007      	b.n	8000f20 <xvprintf+0x1c4>
 8000f10:	2310      	movs	r3, #16
 8000f12:	637b      	str	r3, [r7, #52]	; 0x34
 8000f14:	e004      	b.n	8000f20 <xvprintf+0x1c4>
 8000f16:	7ffb      	ldrb	r3, [r7, #31]
 8000f18:	4618      	mov	r0, r3
 8000f1a:	f7ff fec3 	bl	8000ca4 <xputc>
 8000f1e:	e091      	b.n	8001044 <xvprintf+0x2e8>
 8000f20:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000f22:	f003 0304 	and.w	r3, r3, #4
 8000f26:	2b00      	cmp	r3, #0
 8000f28:	d004      	beq.n	8000f34 <xvprintf+0x1d8>
 8000f2a:	683b      	ldr	r3, [r7, #0]
 8000f2c:	1d1a      	adds	r2, r3, #4
 8000f2e:	603a      	str	r2, [r7, #0]
 8000f30:	681b      	ldr	r3, [r3, #0]
 8000f32:	e00b      	b.n	8000f4c <xvprintf+0x1f0>
 8000f34:	7fbb      	ldrb	r3, [r7, #30]
 8000f36:	2b44      	cmp	r3, #68	; 0x44
 8000f38:	d104      	bne.n	8000f44 <xvprintf+0x1e8>
 8000f3a:	683b      	ldr	r3, [r7, #0]
 8000f3c:	1d1a      	adds	r2, r3, #4
 8000f3e:	603a      	str	r2, [r7, #0]
 8000f40:	681b      	ldr	r3, [r3, #0]
 8000f42:	e003      	b.n	8000f4c <xvprintf+0x1f0>
 8000f44:	683b      	ldr	r3, [r7, #0]
 8000f46:	1d1a      	adds	r2, r3, #4
 8000f48:	603a      	str	r2, [r7, #0]
 8000f4a:	681b      	ldr	r3, [r3, #0]
 8000f4c:	623b      	str	r3, [r7, #32]
 8000f4e:	7fbb      	ldrb	r3, [r7, #30]
 8000f50:	2b44      	cmp	r3, #68	; 0x44
 8000f52:	d109      	bne.n	8000f68 <xvprintf+0x20c>
 8000f54:	6a3b      	ldr	r3, [r7, #32]
 8000f56:	2b00      	cmp	r3, #0
 8000f58:	da06      	bge.n	8000f68 <xvprintf+0x20c>
 8000f5a:	6a3b      	ldr	r3, [r7, #32]
 8000f5c:	425b      	negs	r3, r3
 8000f5e:	623b      	str	r3, [r7, #32]
 8000f60:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000f62:	f043 0308 	orr.w	r3, r3, #8
 8000f66:	627b      	str	r3, [r7, #36]	; 0x24
 8000f68:	2300      	movs	r3, #0
 8000f6a:	633b      	str	r3, [r7, #48]	; 0x30
 8000f6c:	6a3b      	ldr	r3, [r7, #32]
 8000f6e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8000f70:	fbb3 f2f2 	udiv	r2, r3, r2
 8000f74:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8000f76:	fb01 f202 	mul.w	r2, r1, r2
 8000f7a:	1a9b      	subs	r3, r3, r2
 8000f7c:	77bb      	strb	r3, [r7, #30]
 8000f7e:	6a3a      	ldr	r2, [r7, #32]
 8000f80:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000f82:	fbb2 f3f3 	udiv	r3, r2, r3
 8000f86:	623b      	str	r3, [r7, #32]
 8000f88:	7fbb      	ldrb	r3, [r7, #30]
 8000f8a:	2b09      	cmp	r3, #9
 8000f8c:	d908      	bls.n	8000fa0 <xvprintf+0x244>
 8000f8e:	7ffb      	ldrb	r3, [r7, #31]
 8000f90:	2b78      	cmp	r3, #120	; 0x78
 8000f92:	d101      	bne.n	8000f98 <xvprintf+0x23c>
 8000f94:	2327      	movs	r3, #39	; 0x27
 8000f96:	e000      	b.n	8000f9a <xvprintf+0x23e>
 8000f98:	2307      	movs	r3, #7
 8000f9a:	7fba      	ldrb	r2, [r7, #30]
 8000f9c:	4413      	add	r3, r2
 8000f9e:	77bb      	strb	r3, [r7, #30]
 8000fa0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fa2:	1c5a      	adds	r2, r3, #1
 8000fa4:	633a      	str	r2, [r7, #48]	; 0x30
 8000fa6:	7fba      	ldrb	r2, [r7, #30]
 8000fa8:	3230      	adds	r2, #48	; 0x30
 8000faa:	b2d2      	uxtb	r2, r2
 8000fac:	f107 0138 	add.w	r1, r7, #56	; 0x38
 8000fb0:	440b      	add	r3, r1
 8000fb2:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000fb6:	6a3b      	ldr	r3, [r7, #32]
 8000fb8:	2b00      	cmp	r3, #0
 8000fba:	d002      	beq.n	8000fc2 <xvprintf+0x266>
 8000fbc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fbe:	2b0f      	cmp	r3, #15
 8000fc0:	d9d4      	bls.n	8000f6c <xvprintf+0x210>
 8000fc2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000fc4:	f003 0308 	and.w	r3, r3, #8
 8000fc8:	2b00      	cmp	r3, #0
 8000fca:	d008      	beq.n	8000fde <xvprintf+0x282>
 8000fcc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fce:	1c5a      	adds	r2, r3, #1
 8000fd0:	633a      	str	r2, [r7, #48]	; 0x30
 8000fd2:	f107 0238 	add.w	r2, r7, #56	; 0x38
 8000fd6:	4413      	add	r3, r2
 8000fd8:	222d      	movs	r2, #45	; 0x2d
 8000fda:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000fde:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fe0:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000fe2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000fe4:	f003 0301 	and.w	r3, r3, #1
 8000fe8:	2b00      	cmp	r3, #0
 8000fea:	d001      	beq.n	8000ff0 <xvprintf+0x294>
 8000fec:	2330      	movs	r3, #48	; 0x30
 8000fee:	e000      	b.n	8000ff2 <xvprintf+0x296>
 8000ff0:	2320      	movs	r3, #32
 8000ff2:	77bb      	strb	r3, [r7, #30]
 8000ff4:	e003      	b.n	8000ffe <xvprintf+0x2a2>
 8000ff6:	7fbb      	ldrb	r3, [r7, #30]
 8000ff8:	4618      	mov	r0, r3
 8000ffa:	f7ff fe53 	bl	8000ca4 <xputc>
 8000ffe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001000:	f003 0302 	and.w	r3, r3, #2
 8001004:	2b00      	cmp	r3, #0
 8001006:	d105      	bne.n	8001014 <xvprintf+0x2b8>
 8001008:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800100a:	1c5a      	adds	r2, r3, #1
 800100c:	62fa      	str	r2, [r7, #44]	; 0x2c
 800100e:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001010:	4293      	cmp	r3, r2
 8001012:	d3f0      	bcc.n	8000ff6 <xvprintf+0x29a>
 8001014:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001016:	3b01      	subs	r3, #1
 8001018:	633b      	str	r3, [r7, #48]	; 0x30
 800101a:	f107 0208 	add.w	r2, r7, #8
 800101e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001020:	4413      	add	r3, r2
 8001022:	781b      	ldrb	r3, [r3, #0]
 8001024:	4618      	mov	r0, r3
 8001026:	f7ff fe3d 	bl	8000ca4 <xputc>
 800102a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800102c:	2b00      	cmp	r3, #0
 800102e:	d1f1      	bne.n	8001014 <xvprintf+0x2b8>
 8001030:	e002      	b.n	8001038 <xvprintf+0x2dc>
 8001032:	2020      	movs	r0, #32
 8001034:	f7ff fe36 	bl	8000ca4 <xputc>
 8001038:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800103a:	1c5a      	adds	r2, r3, #1
 800103c:	62fa      	str	r2, [r7, #44]	; 0x2c
 800103e:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001040:	4293      	cmp	r3, r2
 8001042:	d3f6      	bcc.n	8001032 <xvprintf+0x2d6>
 8001044:	e68f      	b.n	8000d66 <xvprintf+0xa>
 8001046:	3738      	adds	r7, #56	; 0x38
 8001048:	46bd      	mov	sp, r7
 800104a:	bd80      	pop	{r7, pc}

0800104c <xprintf>:
 800104c:	b40f      	push	{r0, r1, r2, r3}
 800104e:	b580      	push	{r7, lr}
 8001050:	b082      	sub	sp, #8
 8001052:	af00      	add	r7, sp, #0
 8001054:	f107 0314 	add.w	r3, r7, #20
 8001058:	607b      	str	r3, [r7, #4]
 800105a:	6938      	ldr	r0, [r7, #16]
 800105c:	6879      	ldr	r1, [r7, #4]
 800105e:	f7ff fe7d 	bl	8000d5c <xvprintf>
 8001062:	3708      	adds	r7, #8
 8001064:	46bd      	mov	sp, r7
 8001066:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800106a:	b004      	add	sp, #16
 800106c:	4770      	bx	lr
 800106e:	bf00      	nop

08001070 <xsprintf>:
 8001070:	b40e      	push	{r1, r2, r3}
 8001072:	b580      	push	{r7, lr}
 8001074:	b085      	sub	sp, #20
 8001076:	af00      	add	r7, sp, #0
 8001078:	6078      	str	r0, [r7, #4]
 800107a:	4b0b      	ldr	r3, [pc, #44]	; (80010a8 <xsprintf+0x38>)
 800107c:	687a      	ldr	r2, [r7, #4]
 800107e:	601a      	str	r2, [r3, #0]
 8001080:	f107 0320 	add.w	r3, r7, #32
 8001084:	60fb      	str	r3, [r7, #12]
 8001086:	69f8      	ldr	r0, [r7, #28]
 8001088:	68f9      	ldr	r1, [r7, #12]
 800108a:	f7ff fe67 	bl	8000d5c <xvprintf>
 800108e:	4b06      	ldr	r3, [pc, #24]	; (80010a8 <xsprintf+0x38>)
 8001090:	681b      	ldr	r3, [r3, #0]
 8001092:	2200      	movs	r2, #0
 8001094:	701a      	strb	r2, [r3, #0]
 8001096:	4b04      	ldr	r3, [pc, #16]	; (80010a8 <xsprintf+0x38>)
 8001098:	2200      	movs	r2, #0
 800109a:	601a      	str	r2, [r3, #0]
 800109c:	3714      	adds	r7, #20
 800109e:	46bd      	mov	sp, r7
 80010a0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80010a4:	b003      	add	sp, #12
 80010a6:	4770      	bx	lr
 80010a8:	20000a5c 	.word	0x20000a5c

080010ac <xfprintf>:
 80010ac:	b40e      	push	{r1, r2, r3}
 80010ae:	b580      	push	{r7, lr}
 80010b0:	b085      	sub	sp, #20
 80010b2:	af00      	add	r7, sp, #0
 80010b4:	6078      	str	r0, [r7, #4]
 80010b6:	4b0b      	ldr	r3, [pc, #44]	; (80010e4 <xfprintf+0x38>)
 80010b8:	681b      	ldr	r3, [r3, #0]
 80010ba:	60fb      	str	r3, [r7, #12]
 80010bc:	4b09      	ldr	r3, [pc, #36]	; (80010e4 <xfprintf+0x38>)
 80010be:	687a      	ldr	r2, [r7, #4]
 80010c0:	601a      	str	r2, [r3, #0]
 80010c2:	f107 0320 	add.w	r3, r7, #32
 80010c6:	60bb      	str	r3, [r7, #8]
 80010c8:	69f8      	ldr	r0, [r7, #28]
 80010ca:	68b9      	ldr	r1, [r7, #8]
 80010cc:	f7ff fe46 	bl	8000d5c <xvprintf>
 80010d0:	4b04      	ldr	r3, [pc, #16]	; (80010e4 <xfprintf+0x38>)
 80010d2:	68fa      	ldr	r2, [r7, #12]
 80010d4:	601a      	str	r2, [r3, #0]
 80010d6:	3714      	adds	r7, #20
 80010d8:	46bd      	mov	sp, r7
 80010da:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80010de:	b003      	add	sp, #12
 80010e0:	4770      	bx	lr
 80010e2:	bf00      	nop
 80010e4:	20000a58 	.word	0x20000a58

080010e8 <put_dump>:
 80010e8:	b580      	push	{r7, lr}
 80010ea:	b088      	sub	sp, #32
 80010ec:	af00      	add	r7, sp, #0
 80010ee:	60f8      	str	r0, [r7, #12]
 80010f0:	60b9      	str	r1, [r7, #8]
 80010f2:	607a      	str	r2, [r7, #4]
 80010f4:	603b      	str	r3, [r7, #0]
 80010f6:	4835      	ldr	r0, [pc, #212]	; (80011cc <put_dump+0xe4>)
 80010f8:	68b9      	ldr	r1, [r7, #8]
 80010fa:	f7ff ffa7 	bl	800104c <xprintf>
 80010fe:	683b      	ldr	r3, [r7, #0]
 8001100:	2b02      	cmp	r3, #2
 8001102:	d03a      	beq.n	800117a <put_dump+0x92>
 8001104:	2b04      	cmp	r3, #4
 8001106:	d049      	beq.n	800119c <put_dump+0xb4>
 8001108:	2b01      	cmp	r3, #1
 800110a:	d158      	bne.n	80011be <put_dump+0xd6>
 800110c:	68fb      	ldr	r3, [r7, #12]
 800110e:	613b      	str	r3, [r7, #16]
 8001110:	2300      	movs	r3, #0
 8001112:	61fb      	str	r3, [r7, #28]
 8001114:	e00a      	b.n	800112c <put_dump+0x44>
 8001116:	69fb      	ldr	r3, [r7, #28]
 8001118:	693a      	ldr	r2, [r7, #16]
 800111a:	4413      	add	r3, r2
 800111c:	781b      	ldrb	r3, [r3, #0]
 800111e:	482c      	ldr	r0, [pc, #176]	; (80011d0 <put_dump+0xe8>)
 8001120:	4619      	mov	r1, r3
 8001122:	f7ff ff93 	bl	800104c <xprintf>
 8001126:	69fb      	ldr	r3, [r7, #28]
 8001128:	3301      	adds	r3, #1
 800112a:	61fb      	str	r3, [r7, #28]
 800112c:	69fa      	ldr	r2, [r7, #28]
 800112e:	687b      	ldr	r3, [r7, #4]
 8001130:	429a      	cmp	r2, r3
 8001132:	dbf0      	blt.n	8001116 <put_dump+0x2e>
 8001134:	2020      	movs	r0, #32
 8001136:	f7ff fdb5 	bl	8000ca4 <xputc>
 800113a:	2300      	movs	r3, #0
 800113c:	61fb      	str	r3, [r7, #28]
 800113e:	e017      	b.n	8001170 <put_dump+0x88>
 8001140:	69fb      	ldr	r3, [r7, #28]
 8001142:	693a      	ldr	r2, [r7, #16]
 8001144:	4413      	add	r3, r2
 8001146:	781b      	ldrb	r3, [r3, #0]
 8001148:	2b1f      	cmp	r3, #31
 800114a:	d90a      	bls.n	8001162 <put_dump+0x7a>
 800114c:	69fb      	ldr	r3, [r7, #28]
 800114e:	693a      	ldr	r2, [r7, #16]
 8001150:	4413      	add	r3, r2
 8001152:	781b      	ldrb	r3, [r3, #0]
 8001154:	2b7e      	cmp	r3, #126	; 0x7e
 8001156:	d804      	bhi.n	8001162 <put_dump+0x7a>
 8001158:	69fb      	ldr	r3, [r7, #28]
 800115a:	693a      	ldr	r2, [r7, #16]
 800115c:	4413      	add	r3, r2
 800115e:	781b      	ldrb	r3, [r3, #0]
 8001160:	e000      	b.n	8001164 <put_dump+0x7c>
 8001162:	232e      	movs	r3, #46	; 0x2e
 8001164:	4618      	mov	r0, r3
 8001166:	f7ff fd9d 	bl	8000ca4 <xputc>
 800116a:	69fb      	ldr	r3, [r7, #28]
 800116c:	3301      	adds	r3, #1
 800116e:	61fb      	str	r3, [r7, #28]
 8001170:	69fa      	ldr	r2, [r7, #28]
 8001172:	687b      	ldr	r3, [r7, #4]
 8001174:	429a      	cmp	r2, r3
 8001176:	dbe3      	blt.n	8001140 <put_dump+0x58>
 8001178:	e021      	b.n	80011be <put_dump+0xd6>
 800117a:	68fb      	ldr	r3, [r7, #12]
 800117c:	61bb      	str	r3, [r7, #24]
 800117e:	69bb      	ldr	r3, [r7, #24]
 8001180:	1c9a      	adds	r2, r3, #2
 8001182:	61ba      	str	r2, [r7, #24]
 8001184:	881b      	ldrh	r3, [r3, #0]
 8001186:	4813      	ldr	r0, [pc, #76]	; (80011d4 <put_dump+0xec>)
 8001188:	4619      	mov	r1, r3
 800118a:	f7ff ff5f 	bl	800104c <xprintf>
 800118e:	687b      	ldr	r3, [r7, #4]
 8001190:	3b01      	subs	r3, #1
 8001192:	607b      	str	r3, [r7, #4]
 8001194:	687b      	ldr	r3, [r7, #4]
 8001196:	2b00      	cmp	r3, #0
 8001198:	d1f1      	bne.n	800117e <put_dump+0x96>
 800119a:	e010      	b.n	80011be <put_dump+0xd6>
 800119c:	68fb      	ldr	r3, [r7, #12]
 800119e:	617b      	str	r3, [r7, #20]
 80011a0:	697b      	ldr	r3, [r7, #20]
 80011a2:	1d1a      	adds	r2, r3, #4
 80011a4:	617a      	str	r2, [r7, #20]
 80011a6:	681b      	ldr	r3, [r3, #0]
 80011a8:	480b      	ldr	r0, [pc, #44]	; (80011d8 <put_dump+0xf0>)
 80011aa:	4619      	mov	r1, r3
 80011ac:	f7ff ff4e 	bl	800104c <xprintf>
 80011b0:	687b      	ldr	r3, [r7, #4]
 80011b2:	3b01      	subs	r3, #1
 80011b4:	607b      	str	r3, [r7, #4]
 80011b6:	687b      	ldr	r3, [r7, #4]
 80011b8:	2b00      	cmp	r3, #0
 80011ba:	d1f1      	bne.n	80011a0 <put_dump+0xb8>
 80011bc:	bf00      	nop
 80011be:	200a      	movs	r0, #10
 80011c0:	f7ff fd70 	bl	8000ca4 <xputc>
 80011c4:	3720      	adds	r7, #32
 80011c6:	46bd      	mov	sp, r7
 80011c8:	bd80      	pop	{r7, pc}
 80011ca:	bf00      	nop
 80011cc:	080037f8 	.word	0x080037f8
 80011d0:	08003800 	.word	0x08003800
 80011d4:	08003808 	.word	0x08003808
 80011d8:	08003810 	.word	0x08003810

080011dc <xgets>:
 80011dc:	b580      	push	{r7, lr}
 80011de:	b084      	sub	sp, #16
 80011e0:	af00      	add	r7, sp, #0
 80011e2:	6078      	str	r0, [r7, #4]
 80011e4:	6039      	str	r1, [r7, #0]
 80011e6:	4b25      	ldr	r3, [pc, #148]	; (800127c <xgets+0xa0>)
 80011e8:	681b      	ldr	r3, [r3, #0]
 80011ea:	2b00      	cmp	r3, #0
 80011ec:	d101      	bne.n	80011f2 <xgets+0x16>
 80011ee:	2300      	movs	r3, #0
 80011f0:	e03f      	b.n	8001272 <xgets+0x96>
 80011f2:	2300      	movs	r3, #0
 80011f4:	60fb      	str	r3, [r7, #12]
 80011f6:	4b21      	ldr	r3, [pc, #132]	; (800127c <xgets+0xa0>)
 80011f8:	681b      	ldr	r3, [r3, #0]
 80011fa:	4798      	blx	r3
 80011fc:	4603      	mov	r3, r0
 80011fe:	60bb      	str	r3, [r7, #8]
 8001200:	68bb      	ldr	r3, [r7, #8]
 8001202:	2b00      	cmp	r3, #0
 8001204:	d101      	bne.n	800120a <xgets+0x2e>
 8001206:	2300      	movs	r3, #0
 8001208:	e033      	b.n	8001272 <xgets+0x96>
 800120a:	68bb      	ldr	r3, [r7, #8]
 800120c:	2b0d      	cmp	r3, #13
 800120e:	d10a      	bne.n	8001226 <xgets+0x4a>
 8001210:	bf00      	nop
 8001212:	68fb      	ldr	r3, [r7, #12]
 8001214:	687a      	ldr	r2, [r7, #4]
 8001216:	4413      	add	r3, r2
 8001218:	2200      	movs	r2, #0
 800121a:	701a      	strb	r2, [r3, #0]
 800121c:	200a      	movs	r0, #10
 800121e:	f7ff fd41 	bl	8000ca4 <xputc>
 8001222:	2301      	movs	r3, #1
 8001224:	e025      	b.n	8001272 <xgets+0x96>
 8001226:	68bb      	ldr	r3, [r7, #8]
 8001228:	2b08      	cmp	r3, #8
 800122a:	d10b      	bne.n	8001244 <xgets+0x68>
 800122c:	68fb      	ldr	r3, [r7, #12]
 800122e:	2b00      	cmp	r3, #0
 8001230:	d008      	beq.n	8001244 <xgets+0x68>
 8001232:	68fb      	ldr	r3, [r7, #12]
 8001234:	3b01      	subs	r3, #1
 8001236:	60fb      	str	r3, [r7, #12]
 8001238:	68bb      	ldr	r3, [r7, #8]
 800123a:	b2db      	uxtb	r3, r3
 800123c:	4618      	mov	r0, r3
 800123e:	f7ff fd31 	bl	8000ca4 <xputc>
 8001242:	e015      	b.n	8001270 <xgets+0x94>
 8001244:	68bb      	ldr	r3, [r7, #8]
 8001246:	2b1f      	cmp	r3, #31
 8001248:	dd12      	ble.n	8001270 <xgets+0x94>
 800124a:	683b      	ldr	r3, [r7, #0]
 800124c:	1e5a      	subs	r2, r3, #1
 800124e:	68fb      	ldr	r3, [r7, #12]
 8001250:	429a      	cmp	r2, r3
 8001252:	dd0d      	ble.n	8001270 <xgets+0x94>
 8001254:	68fb      	ldr	r3, [r7, #12]
 8001256:	1c5a      	adds	r2, r3, #1
 8001258:	60fa      	str	r2, [r7, #12]
 800125a:	687a      	ldr	r2, [r7, #4]
 800125c:	4413      	add	r3, r2
 800125e:	68ba      	ldr	r2, [r7, #8]
 8001260:	b2d2      	uxtb	r2, r2
 8001262:	701a      	strb	r2, [r3, #0]
 8001264:	68bb      	ldr	r3, [r7, #8]
 8001266:	b2db      	uxtb	r3, r3
 8001268:	4618      	mov	r0, r3
 800126a:	f7ff fd1b 	bl	8000ca4 <xputc>
 800126e:	e7c2      	b.n	80011f6 <xgets+0x1a>
 8001270:	e7c1      	b.n	80011f6 <xgets+0x1a>
 8001272:	4618      	mov	r0, r3
 8001274:	3710      	adds	r7, #16
 8001276:	46bd      	mov	sp, r7
 8001278:	bd80      	pop	{r7, pc}
 800127a:	bf00      	nop
 800127c:	20000a60 	.word	0x20000a60

08001280 <xfgets>:
 8001280:	b580      	push	{r7, lr}
 8001282:	b086      	sub	sp, #24
 8001284:	af00      	add	r7, sp, #0
 8001286:	60f8      	str	r0, [r7, #12]
 8001288:	60b9      	str	r1, [r7, #8]
 800128a:	607a      	str	r2, [r7, #4]
 800128c:	4b09      	ldr	r3, [pc, #36]	; (80012b4 <xfgets+0x34>)
 800128e:	681b      	ldr	r3, [r3, #0]
 8001290:	617b      	str	r3, [r7, #20]
 8001292:	4b08      	ldr	r3, [pc, #32]	; (80012b4 <xfgets+0x34>)
 8001294:	68fa      	ldr	r2, [r7, #12]
 8001296:	601a      	str	r2, [r3, #0]
 8001298:	68b8      	ldr	r0, [r7, #8]
 800129a:	6879      	ldr	r1, [r7, #4]
 800129c:	f7ff ff9e 	bl	80011dc <xgets>
 80012a0:	6138      	str	r0, [r7, #16]
 80012a2:	4b04      	ldr	r3, [pc, #16]	; (80012b4 <xfgets+0x34>)
 80012a4:	697a      	ldr	r2, [r7, #20]
 80012a6:	601a      	str	r2, [r3, #0]
 80012a8:	693b      	ldr	r3, [r7, #16]
 80012aa:	4618      	mov	r0, r3
 80012ac:	3718      	adds	r7, #24
 80012ae:	46bd      	mov	sp, r7
 80012b0:	bd80      	pop	{r7, pc}
 80012b2:	bf00      	nop
 80012b4:	20000a60 	.word	0x20000a60

080012b8 <xatoi>:
 80012b8:	b480      	push	{r7}
 80012ba:	b085      	sub	sp, #20
 80012bc:	af00      	add	r7, sp, #0
 80012be:	6078      	str	r0, [r7, #4]
 80012c0:	6039      	str	r1, [r7, #0]
 80012c2:	2300      	movs	r3, #0
 80012c4:	727b      	strb	r3, [r7, #9]
 80012c6:	683b      	ldr	r3, [r7, #0]
 80012c8:	2200      	movs	r2, #0
 80012ca:	601a      	str	r2, [r3, #0]
 80012cc:	e004      	b.n	80012d8 <xatoi+0x20>
 80012ce:	687b      	ldr	r3, [r7, #4]
 80012d0:	681b      	ldr	r3, [r3, #0]
 80012d2:	1c5a      	adds	r2, r3, #1
 80012d4:	687b      	ldr	r3, [r7, #4]
 80012d6:	601a      	str	r2, [r3, #0]
 80012d8:	687b      	ldr	r3, [r7, #4]
 80012da:	681b      	ldr	r3, [r3, #0]
 80012dc:	781b      	ldrb	r3, [r3, #0]
 80012de:	72fb      	strb	r3, [r7, #11]
 80012e0:	7afb      	ldrb	r3, [r7, #11]
 80012e2:	2b20      	cmp	r3, #32
 80012e4:	d0f3      	beq.n	80012ce <xatoi+0x16>
 80012e6:	7afb      	ldrb	r3, [r7, #11]
 80012e8:	2b2d      	cmp	r3, #45	; 0x2d
 80012ea:	d10a      	bne.n	8001302 <xatoi+0x4a>
 80012ec:	2301      	movs	r3, #1
 80012ee:	727b      	strb	r3, [r7, #9]
 80012f0:	687b      	ldr	r3, [r7, #4]
 80012f2:	681b      	ldr	r3, [r3, #0]
 80012f4:	1c5a      	adds	r2, r3, #1
 80012f6:	687b      	ldr	r3, [r7, #4]
 80012f8:	601a      	str	r2, [r3, #0]
 80012fa:	687b      	ldr	r3, [r7, #4]
 80012fc:	681b      	ldr	r3, [r3, #0]
 80012fe:	781b      	ldrb	r3, [r3, #0]
 8001300:	72fb      	strb	r3, [r7, #11]
 8001302:	7afb      	ldrb	r3, [r7, #11]
 8001304:	2b30      	cmp	r3, #48	; 0x30
 8001306:	d136      	bne.n	8001376 <xatoi+0xbe>
 8001308:	687b      	ldr	r3, [r7, #4]
 800130a:	681b      	ldr	r3, [r3, #0]
 800130c:	1c5a      	adds	r2, r3, #1
 800130e:	687b      	ldr	r3, [r7, #4]
 8001310:	601a      	str	r2, [r3, #0]
 8001312:	687b      	ldr	r3, [r7, #4]
 8001314:	681b      	ldr	r3, [r3, #0]
 8001316:	781b      	ldrb	r3, [r3, #0]
 8001318:	72fb      	strb	r3, [r7, #11]
 800131a:	7afb      	ldrb	r3, [r7, #11]
 800131c:	2b62      	cmp	r3, #98	; 0x62
 800131e:	d00d      	beq.n	800133c <xatoi+0x84>
 8001320:	2b78      	cmp	r3, #120	; 0x78
 8001322:	d117      	bne.n	8001354 <xatoi+0x9c>
 8001324:	2310      	movs	r3, #16
 8001326:	72bb      	strb	r3, [r7, #10]
 8001328:	687b      	ldr	r3, [r7, #4]
 800132a:	681b      	ldr	r3, [r3, #0]
 800132c:	1c5a      	adds	r2, r3, #1
 800132e:	687b      	ldr	r3, [r7, #4]
 8001330:	601a      	str	r2, [r3, #0]
 8001332:	687b      	ldr	r3, [r7, #4]
 8001334:	681b      	ldr	r3, [r3, #0]
 8001336:	781b      	ldrb	r3, [r3, #0]
 8001338:	72fb      	strb	r3, [r7, #11]
 800133a:	e01b      	b.n	8001374 <xatoi+0xbc>
 800133c:	2302      	movs	r3, #2
 800133e:	72bb      	strb	r3, [r7, #10]
 8001340:	687b      	ldr	r3, [r7, #4]
 8001342:	681b      	ldr	r3, [r3, #0]
 8001344:	1c5a      	adds	r2, r3, #1
 8001346:	687b      	ldr	r3, [r7, #4]
 8001348:	601a      	str	r2, [r3, #0]
 800134a:	687b      	ldr	r3, [r7, #4]
 800134c:	681b      	ldr	r3, [r3, #0]
 800134e:	781b      	ldrb	r3, [r3, #0]
 8001350:	72fb      	strb	r3, [r7, #11]
 8001352:	e00f      	b.n	8001374 <xatoi+0xbc>
 8001354:	7afb      	ldrb	r3, [r7, #11]
 8001356:	2b20      	cmp	r3, #32
 8001358:	d801      	bhi.n	800135e <xatoi+0xa6>
 800135a:	2301      	movs	r3, #1
 800135c:	e04f      	b.n	80013fe <xatoi+0x146>
 800135e:	7afb      	ldrb	r3, [r7, #11]
 8001360:	2b2f      	cmp	r3, #47	; 0x2f
 8001362:	d902      	bls.n	800136a <xatoi+0xb2>
 8001364:	7afb      	ldrb	r3, [r7, #11]
 8001366:	2b39      	cmp	r3, #57	; 0x39
 8001368:	d901      	bls.n	800136e <xatoi+0xb6>
 800136a:	2300      	movs	r3, #0
 800136c:	e047      	b.n	80013fe <xatoi+0x146>
 800136e:	2308      	movs	r3, #8
 8001370:	72bb      	strb	r3, [r7, #10]
 8001372:	e00a      	b.n	800138a <xatoi+0xd2>
 8001374:	e009      	b.n	800138a <xatoi+0xd2>
 8001376:	7afb      	ldrb	r3, [r7, #11]
 8001378:	2b2f      	cmp	r3, #47	; 0x2f
 800137a:	d902      	bls.n	8001382 <xatoi+0xca>
 800137c:	7afb      	ldrb	r3, [r7, #11]
 800137e:	2b39      	cmp	r3, #57	; 0x39
 8001380:	d901      	bls.n	8001386 <xatoi+0xce>
 8001382:	2300      	movs	r3, #0
 8001384:	e03b      	b.n	80013fe <xatoi+0x146>
 8001386:	230a      	movs	r3, #10
 8001388:	72bb      	strb	r3, [r7, #10]
 800138a:	2300      	movs	r3, #0
 800138c:	60fb      	str	r3, [r7, #12]
 800138e:	e029      	b.n	80013e4 <xatoi+0x12c>
 8001390:	7afb      	ldrb	r3, [r7, #11]
 8001392:	2b60      	cmp	r3, #96	; 0x60
 8001394:	d902      	bls.n	800139c <xatoi+0xe4>
 8001396:	7afb      	ldrb	r3, [r7, #11]
 8001398:	3b20      	subs	r3, #32
 800139a:	72fb      	strb	r3, [r7, #11]
 800139c:	7afb      	ldrb	r3, [r7, #11]
 800139e:	3b30      	subs	r3, #48	; 0x30
 80013a0:	72fb      	strb	r3, [r7, #11]
 80013a2:	7afb      	ldrb	r3, [r7, #11]
 80013a4:	2b10      	cmp	r3, #16
 80013a6:	d907      	bls.n	80013b8 <xatoi+0x100>
 80013a8:	7afb      	ldrb	r3, [r7, #11]
 80013aa:	3b07      	subs	r3, #7
 80013ac:	72fb      	strb	r3, [r7, #11]
 80013ae:	7afb      	ldrb	r3, [r7, #11]
 80013b0:	2b09      	cmp	r3, #9
 80013b2:	d801      	bhi.n	80013b8 <xatoi+0x100>
 80013b4:	2300      	movs	r3, #0
 80013b6:	e022      	b.n	80013fe <xatoi+0x146>
 80013b8:	7afa      	ldrb	r2, [r7, #11]
 80013ba:	7abb      	ldrb	r3, [r7, #10]
 80013bc:	429a      	cmp	r2, r3
 80013be:	d301      	bcc.n	80013c4 <xatoi+0x10c>
 80013c0:	2300      	movs	r3, #0
 80013c2:	e01c      	b.n	80013fe <xatoi+0x146>
 80013c4:	7abb      	ldrb	r3, [r7, #10]
 80013c6:	68fa      	ldr	r2, [r7, #12]
 80013c8:	fb02 f203 	mul.w	r2, r2, r3
 80013cc:	7afb      	ldrb	r3, [r7, #11]
 80013ce:	4413      	add	r3, r2
 80013d0:	60fb      	str	r3, [r7, #12]
 80013d2:	687b      	ldr	r3, [r7, #4]
 80013d4:	681b      	ldr	r3, [r3, #0]
 80013d6:	1c5a      	adds	r2, r3, #1
 80013d8:	687b      	ldr	r3, [r7, #4]
 80013da:	601a      	str	r2, [r3, #0]
 80013dc:	687b      	ldr	r3, [r7, #4]
 80013de:	681b      	ldr	r3, [r3, #0]
 80013e0:	781b      	ldrb	r3, [r3, #0]
 80013e2:	72fb      	strb	r3, [r7, #11]
 80013e4:	7afb      	ldrb	r3, [r7, #11]
 80013e6:	2b20      	cmp	r3, #32
 80013e8:	d8d2      	bhi.n	8001390 <xatoi+0xd8>
 80013ea:	7a7b      	ldrb	r3, [r7, #9]
 80013ec:	2b00      	cmp	r3, #0
 80013ee:	d002      	beq.n	80013f6 <xatoi+0x13e>
 80013f0:	68fb      	ldr	r3, [r7, #12]
 80013f2:	425b      	negs	r3, r3
 80013f4:	60fb      	str	r3, [r7, #12]
 80013f6:	68fa      	ldr	r2, [r7, #12]
 80013f8:	683b      	ldr	r3, [r7, #0]
 80013fa:	601a      	str	r2, [r3, #0]
 80013fc:	2301      	movs	r3, #1
 80013fe:	4618      	mov	r0, r3
 8001400:	3714      	adds	r7, #20
 8001402:	46bd      	mov	sp, r7
 8001404:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001408:	4770      	bx	lr
 800140a:	bf00      	nop

0800140c <NVIC_EnableIRQ>:
 800140c:	b480      	push	{r7}
 800140e:	b083      	sub	sp, #12
 8001410:	af00      	add	r7, sp, #0
 8001412:	4603      	mov	r3, r0
 8001414:	71fb      	strb	r3, [r7, #7]
 8001416:	4b08      	ldr	r3, [pc, #32]	; (8001438 <NVIC_EnableIRQ+0x2c>)
 8001418:	f997 2007 	ldrsb.w	r2, [r7, #7]
 800141c:	0952      	lsrs	r2, r2, #5
 800141e:	79f9      	ldrb	r1, [r7, #7]
 8001420:	f001 011f 	and.w	r1, r1, #31
 8001424:	2001      	movs	r0, #1
 8001426:	fa00 f101 	lsl.w	r1, r0, r1
 800142a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800142e:	370c      	adds	r7, #12
 8001430:	46bd      	mov	sp, r7
 8001432:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001436:	4770      	bx	lr
 8001438:	e000e100 	.word	0xe000e100

0800143c <adc_common_init>:
 800143c:	b480      	push	{r7}
 800143e:	af00      	add	r7, sp, #0
 8001440:	4b07      	ldr	r3, [pc, #28]	; (8001460 <adc_common_init+0x24>)
 8001442:	4a07      	ldr	r2, [pc, #28]	; (8001460 <adc_common_init+0x24>)
 8001444:	6852      	ldr	r2, [r2, #4]
 8001446:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 800144a:	605a      	str	r2, [r3, #4]
 800144c:	4b04      	ldr	r3, [pc, #16]	; (8001460 <adc_common_init+0x24>)
 800144e:	4a04      	ldr	r2, [pc, #16]	; (8001460 <adc_common_init+0x24>)
 8001450:	6852      	ldr	r2, [r2, #4]
 8001452:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001456:	605a      	str	r2, [r3, #4]
 8001458:	46bd      	mov	sp, r7
 800145a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800145e:	4770      	bx	lr
 8001460:	40012300 	.word	0x40012300

08001464 <adc1_init>:
 8001464:	b480      	push	{r7}
 8001466:	af00      	add	r7, sp, #0
 8001468:	4b29      	ldr	r3, [pc, #164]	; (8001510 <adc1_init+0xac>)
 800146a:	4a29      	ldr	r2, [pc, #164]	; (8001510 <adc1_init+0xac>)
 800146c:	6c52      	ldr	r2, [r2, #68]	; 0x44
 800146e:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8001472:	645a      	str	r2, [r3, #68]	; 0x44
 8001474:	4b26      	ldr	r3, [pc, #152]	; (8001510 <adc1_init+0xac>)
 8001476:	4a26      	ldr	r2, [pc, #152]	; (8001510 <adc1_init+0xac>)
 8001478:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800147a:	f042 0201 	orr.w	r2, r2, #1
 800147e:	631a      	str	r2, [r3, #48]	; 0x30
 8001480:	4b24      	ldr	r3, [pc, #144]	; (8001514 <adc1_init+0xb0>)
 8001482:	4a24      	ldr	r2, [pc, #144]	; (8001514 <adc1_init+0xb0>)
 8001484:	6812      	ldr	r2, [r2, #0]
 8001486:	f022 0203 	bic.w	r2, r2, #3
 800148a:	601a      	str	r2, [r3, #0]
 800148c:	4b21      	ldr	r3, [pc, #132]	; (8001514 <adc1_init+0xb0>)
 800148e:	4a21      	ldr	r2, [pc, #132]	; (8001514 <adc1_init+0xb0>)
 8001490:	6812      	ldr	r2, [r2, #0]
 8001492:	f042 0203 	orr.w	r2, r2, #3
 8001496:	601a      	str	r2, [r3, #0]
 8001498:	4b1f      	ldr	r3, [pc, #124]	; (8001518 <adc1_init+0xb4>)
 800149a:	4a1f      	ldr	r2, [pc, #124]	; (8001518 <adc1_init+0xb4>)
 800149c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800149e:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 80014a2:	62da      	str	r2, [r3, #44]	; 0x2c
 80014a4:	4b1c      	ldr	r3, [pc, #112]	; (8001518 <adc1_init+0xb4>)
 80014a6:	4a1c      	ldr	r2, [pc, #112]	; (8001518 <adc1_init+0xb4>)
 80014a8:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80014aa:	62da      	str	r2, [r3, #44]	; 0x2c
 80014ac:	4b1a      	ldr	r3, [pc, #104]	; (8001518 <adc1_init+0xb4>)
 80014ae:	4a1a      	ldr	r2, [pc, #104]	; (8001518 <adc1_init+0xb4>)
 80014b0:	6852      	ldr	r2, [r2, #4]
 80014b2:	f042 0220 	orr.w	r2, r2, #32
 80014b6:	605a      	str	r2, [r3, #4]
 80014b8:	4b17      	ldr	r3, [pc, #92]	; (8001518 <adc1_init+0xb4>)
 80014ba:	4a17      	ldr	r2, [pc, #92]	; (8001518 <adc1_init+0xb4>)
 80014bc:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80014be:	f022 021f 	bic.w	r2, r2, #31
 80014c2:	635a      	str	r2, [r3, #52]	; 0x34
 80014c4:	4b14      	ldr	r3, [pc, #80]	; (8001518 <adc1_init+0xb4>)
 80014c6:	4a14      	ldr	r2, [pc, #80]	; (8001518 <adc1_init+0xb4>)
 80014c8:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80014ca:	635a      	str	r2, [r3, #52]	; 0x34
 80014cc:	4b12      	ldr	r3, [pc, #72]	; (8001518 <adc1_init+0xb4>)
 80014ce:	4a12      	ldr	r2, [pc, #72]	; (8001518 <adc1_init+0xb4>)
 80014d0:	6892      	ldr	r2, [r2, #8]
 80014d2:	f022 5240 	bic.w	r2, r2, #805306368	; 0x30000000
 80014d6:	609a      	str	r2, [r3, #8]
 80014d8:	4b0f      	ldr	r3, [pc, #60]	; (8001518 <adc1_init+0xb4>)
 80014da:	4a0f      	ldr	r2, [pc, #60]	; (8001518 <adc1_init+0xb4>)
 80014dc:	6892      	ldr	r2, [r2, #8]
 80014de:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 80014e2:	609a      	str	r2, [r3, #8]
 80014e4:	4b0c      	ldr	r3, [pc, #48]	; (8001518 <adc1_init+0xb4>)
 80014e6:	4a0c      	ldr	r2, [pc, #48]	; (8001518 <adc1_init+0xb4>)
 80014e8:	6892      	ldr	r2, [r2, #8]
 80014ea:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 80014ee:	609a      	str	r2, [r3, #8]
 80014f0:	4b09      	ldr	r3, [pc, #36]	; (8001518 <adc1_init+0xb4>)
 80014f2:	4a09      	ldr	r2, [pc, #36]	; (8001518 <adc1_init+0xb4>)
 80014f4:	6892      	ldr	r2, [r2, #8]
 80014f6:	f042 62a0 	orr.w	r2, r2, #83886080	; 0x5000000
 80014fa:	609a      	str	r2, [r3, #8]
 80014fc:	4b06      	ldr	r3, [pc, #24]	; (8001518 <adc1_init+0xb4>)
 80014fe:	4a06      	ldr	r2, [pc, #24]	; (8001518 <adc1_init+0xb4>)
 8001500:	6892      	ldr	r2, [r2, #8]
 8001502:	f042 0201 	orr.w	r2, r2, #1
 8001506:	609a      	str	r2, [r3, #8]
 8001508:	46bd      	mov	sp, r7
 800150a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800150e:	4770      	bx	lr
 8001510:	40023800 	.word	0x40023800
 8001514:	40020000 	.word	0x40020000
 8001518:	40012000 	.word	0x40012000

0800151c <adc2_init>:
 800151c:	b480      	push	{r7}
 800151e:	af00      	add	r7, sp, #0
 8001520:	4b1b      	ldr	r3, [pc, #108]	; (8001590 <adc2_init+0x74>)
 8001522:	4a1b      	ldr	r2, [pc, #108]	; (8001590 <adc2_init+0x74>)
 8001524:	6c52      	ldr	r2, [r2, #68]	; 0x44
 8001526:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 800152a:	645a      	str	r2, [r3, #68]	; 0x44
 800152c:	4b18      	ldr	r3, [pc, #96]	; (8001590 <adc2_init+0x74>)
 800152e:	4a18      	ldr	r2, [pc, #96]	; (8001590 <adc2_init+0x74>)
 8001530:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001532:	f042 0201 	orr.w	r2, r2, #1
 8001536:	631a      	str	r2, [r3, #48]	; 0x30
 8001538:	4b16      	ldr	r3, [pc, #88]	; (8001594 <adc2_init+0x78>)
 800153a:	4a16      	ldr	r2, [pc, #88]	; (8001594 <adc2_init+0x78>)
 800153c:	6812      	ldr	r2, [r2, #0]
 800153e:	f022 020c 	bic.w	r2, r2, #12
 8001542:	601a      	str	r2, [r3, #0]
 8001544:	4b13      	ldr	r3, [pc, #76]	; (8001594 <adc2_init+0x78>)
 8001546:	4a13      	ldr	r2, [pc, #76]	; (8001594 <adc2_init+0x78>)
 8001548:	6812      	ldr	r2, [r2, #0]
 800154a:	f042 020c 	orr.w	r2, r2, #12
 800154e:	601a      	str	r2, [r3, #0]
 8001550:	4b11      	ldr	r3, [pc, #68]	; (8001598 <adc2_init+0x7c>)
 8001552:	4a11      	ldr	r2, [pc, #68]	; (8001598 <adc2_init+0x7c>)
 8001554:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8001556:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 800155a:	62da      	str	r2, [r3, #44]	; 0x2c
 800155c:	4b0e      	ldr	r3, [pc, #56]	; (8001598 <adc2_init+0x7c>)
 800155e:	4a0e      	ldr	r2, [pc, #56]	; (8001598 <adc2_init+0x7c>)
 8001560:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8001562:	62da      	str	r2, [r3, #44]	; 0x2c
 8001564:	4b0c      	ldr	r3, [pc, #48]	; (8001598 <adc2_init+0x7c>)
 8001566:	4a0c      	ldr	r2, [pc, #48]	; (8001598 <adc2_init+0x7c>)
 8001568:	6b52      	ldr	r2, [r2, #52]	; 0x34
 800156a:	f022 021f 	bic.w	r2, r2, #31
 800156e:	635a      	str	r2, [r3, #52]	; 0x34
 8001570:	4b09      	ldr	r3, [pc, #36]	; (8001598 <adc2_init+0x7c>)
 8001572:	4a09      	ldr	r2, [pc, #36]	; (8001598 <adc2_init+0x7c>)
 8001574:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8001576:	f042 0201 	orr.w	r2, r2, #1
 800157a:	635a      	str	r2, [r3, #52]	; 0x34
 800157c:	4b06      	ldr	r3, [pc, #24]	; (8001598 <adc2_init+0x7c>)
 800157e:	4a06      	ldr	r2, [pc, #24]	; (8001598 <adc2_init+0x7c>)
 8001580:	6892      	ldr	r2, [r2, #8]
 8001582:	f042 0201 	orr.w	r2, r2, #1
 8001586:	609a      	str	r2, [r3, #8]
 8001588:	46bd      	mov	sp, r7
 800158a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800158e:	4770      	bx	lr
 8001590:	40023800 	.word	0x40023800
 8001594:	40020000 	.word	0x40020000
 8001598:	40012100 	.word	0x40012100

0800159c <adc3_init>:
 800159c:	b480      	push	{r7}
 800159e:	af00      	add	r7, sp, #0
 80015a0:	4b1b      	ldr	r3, [pc, #108]	; (8001610 <adc3_init+0x74>)
 80015a2:	4a1b      	ldr	r2, [pc, #108]	; (8001610 <adc3_init+0x74>)
 80015a4:	6c52      	ldr	r2, [r2, #68]	; 0x44
 80015a6:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80015aa:	645a      	str	r2, [r3, #68]	; 0x44
 80015ac:	4b18      	ldr	r3, [pc, #96]	; (8001610 <adc3_init+0x74>)
 80015ae:	4a18      	ldr	r2, [pc, #96]	; (8001610 <adc3_init+0x74>)
 80015b0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80015b2:	f042 0201 	orr.w	r2, r2, #1
 80015b6:	631a      	str	r2, [r3, #48]	; 0x30
 80015b8:	4b16      	ldr	r3, [pc, #88]	; (8001614 <adc3_init+0x78>)
 80015ba:	4a16      	ldr	r2, [pc, #88]	; (8001614 <adc3_init+0x78>)
 80015bc:	6812      	ldr	r2, [r2, #0]
 80015be:	f022 02c0 	bic.w	r2, r2, #192	; 0xc0
 80015c2:	601a      	str	r2, [r3, #0]
 80015c4:	4b13      	ldr	r3, [pc, #76]	; (8001614 <adc3_init+0x78>)
 80015c6:	4a13      	ldr	r2, [pc, #76]	; (8001614 <adc3_init+0x78>)
 80015c8:	6812      	ldr	r2, [r2, #0]
 80015ca:	f042 02c0 	orr.w	r2, r2, #192	; 0xc0
 80015ce:	601a      	str	r2, [r3, #0]
 80015d0:	4b11      	ldr	r3, [pc, #68]	; (8001618 <adc3_init+0x7c>)
 80015d2:	4a11      	ldr	r2, [pc, #68]	; (8001618 <adc3_init+0x7c>)
 80015d4:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80015d6:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 80015da:	62da      	str	r2, [r3, #44]	; 0x2c
 80015dc:	4b0e      	ldr	r3, [pc, #56]	; (8001618 <adc3_init+0x7c>)
 80015de:	4a0e      	ldr	r2, [pc, #56]	; (8001618 <adc3_init+0x7c>)
 80015e0:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80015e2:	62da      	str	r2, [r3, #44]	; 0x2c
 80015e4:	4b0c      	ldr	r3, [pc, #48]	; (8001618 <adc3_init+0x7c>)
 80015e6:	4a0c      	ldr	r2, [pc, #48]	; (8001618 <adc3_init+0x7c>)
 80015e8:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80015ea:	f022 021f 	bic.w	r2, r2, #31
 80015ee:	635a      	str	r2, [r3, #52]	; 0x34
 80015f0:	4b09      	ldr	r3, [pc, #36]	; (8001618 <adc3_init+0x7c>)
 80015f2:	4a09      	ldr	r2, [pc, #36]	; (8001618 <adc3_init+0x7c>)
 80015f4:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80015f6:	f042 0203 	orr.w	r2, r2, #3
 80015fa:	635a      	str	r2, [r3, #52]	; 0x34
 80015fc:	4b06      	ldr	r3, [pc, #24]	; (8001618 <adc3_init+0x7c>)
 80015fe:	4a06      	ldr	r2, [pc, #24]	; (8001618 <adc3_init+0x7c>)
 8001600:	6892      	ldr	r2, [r2, #8]
 8001602:	f042 0201 	orr.w	r2, r2, #1
 8001606:	609a      	str	r2, [r3, #8]
 8001608:	46bd      	mov	sp, r7
 800160a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800160e:	4770      	bx	lr
 8001610:	40023800 	.word	0x40023800
 8001614:	40020000 	.word	0x40020000
 8001618:	40012200 	.word	0x40012200

0800161c <adc_set_trigger>:
 800161c:	b480      	push	{r7}
 800161e:	af00      	add	r7, sp, #0
 8001620:	4b2d      	ldr	r3, [pc, #180]	; (80016d8 <adc_set_trigger+0xbc>)
 8001622:	4a2d      	ldr	r2, [pc, #180]	; (80016d8 <adc_set_trigger+0xbc>)
 8001624:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001626:	f042 0201 	orr.w	r2, r2, #1
 800162a:	641a      	str	r2, [r3, #64]	; 0x40
 800162c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001630:	2229      	movs	r2, #41	; 0x29
 8001632:	851a      	strh	r2, [r3, #40]	; 0x28
 8001634:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001638:	2203      	movs	r2, #3
 800163a:	62da      	str	r2, [r3, #44]	; 0x2c
 800163c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001640:	2202      	movs	r2, #2
 8001642:	641a      	str	r2, [r3, #64]	; 0x40
 8001644:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001648:	2200      	movs	r2, #0
 800164a:	839a      	strh	r2, [r3, #28]
 800164c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001650:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001654:	8b92      	ldrh	r2, [r2, #28]
 8001656:	b292      	uxth	r2, r2
 8001658:	f442 42d0 	orr.w	r2, r2, #26624	; 0x6800
 800165c:	b292      	uxth	r2, r2
 800165e:	839a      	strh	r2, [r3, #28]
 8001660:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001664:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001668:	8c12      	ldrh	r2, [r2, #32]
 800166a:	b292      	uxth	r2, r2
 800166c:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 8001670:	b292      	uxth	r2, r2
 8001672:	841a      	strh	r2, [r3, #32]
 8001674:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001678:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800167c:	8812      	ldrh	r2, [r2, #0]
 800167e:	b292      	uxth	r2, r2
 8001680:	f042 0201 	orr.w	r2, r2, #1
 8001684:	b292      	uxth	r2, r2
 8001686:	801a      	strh	r2, [r3, #0]
 8001688:	4b13      	ldr	r3, [pc, #76]	; (80016d8 <adc_set_trigger+0xbc>)
 800168a:	4a13      	ldr	r2, [pc, #76]	; (80016d8 <adc_set_trigger+0xbc>)
 800168c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800168e:	f042 0202 	orr.w	r2, r2, #2
 8001692:	631a      	str	r2, [r3, #48]	; 0x30
 8001694:	4b11      	ldr	r3, [pc, #68]	; (80016dc <adc_set_trigger+0xc0>)
 8001696:	4a11      	ldr	r2, [pc, #68]	; (80016dc <adc_set_trigger+0xc0>)
 8001698:	6812      	ldr	r2, [r2, #0]
 800169a:	f422 0240 	bic.w	r2, r2, #12582912	; 0xc00000
 800169e:	601a      	str	r2, [r3, #0]
 80016a0:	4b0e      	ldr	r3, [pc, #56]	; (80016dc <adc_set_trigger+0xc0>)
 80016a2:	4a0e      	ldr	r2, [pc, #56]	; (80016dc <adc_set_trigger+0xc0>)
 80016a4:	6812      	ldr	r2, [r2, #0]
 80016a6:	f442 0200 	orr.w	r2, r2, #8388608	; 0x800000
 80016aa:	601a      	str	r2, [r3, #0]
 80016ac:	4b0b      	ldr	r3, [pc, #44]	; (80016dc <adc_set_trigger+0xc0>)
 80016ae:	4a0b      	ldr	r2, [pc, #44]	; (80016dc <adc_set_trigger+0xc0>)
 80016b0:	6892      	ldr	r2, [r2, #8]
 80016b2:	f442 0240 	orr.w	r2, r2, #12582912	; 0xc00000
 80016b6:	609a      	str	r2, [r3, #8]
 80016b8:	4b08      	ldr	r3, [pc, #32]	; (80016dc <adc_set_trigger+0xc0>)
 80016ba:	4a08      	ldr	r2, [pc, #32]	; (80016dc <adc_set_trigger+0xc0>)
 80016bc:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80016be:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 80016c2:	625a      	str	r2, [r3, #36]	; 0x24
 80016c4:	4b05      	ldr	r3, [pc, #20]	; (80016dc <adc_set_trigger+0xc0>)
 80016c6:	4a05      	ldr	r2, [pc, #20]	; (80016dc <adc_set_trigger+0xc0>)
 80016c8:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80016ca:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 80016ce:	625a      	str	r2, [r3, #36]	; 0x24
 80016d0:	46bd      	mov	sp, r7
 80016d2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80016d6:	4770      	bx	lr
 80016d8:	40023800 	.word	0x40023800
 80016dc:	40020400 	.word	0x40020400

080016e0 <adc_init>:
 80016e0:	b580      	push	{r7, lr}
 80016e2:	af00      	add	r7, sp, #0
 80016e4:	f7ff feaa 	bl	800143c <adc_common_init>
 80016e8:	f7ff febc 	bl	8001464 <adc1_init>
 80016ec:	f7ff ff16 	bl	800151c <adc2_init>
 80016f0:	f7ff ff54 	bl	800159c <adc3_init>
 80016f4:	f7ff ff92 	bl	800161c <adc_set_trigger>
 80016f8:	4b07      	ldr	r3, [pc, #28]	; (8001718 <adc_init+0x38>)
 80016fa:	4a07      	ldr	r2, [pc, #28]	; (8001718 <adc_init+0x38>)
 80016fc:	6852      	ldr	r2, [r2, #4]
 80016fe:	f022 021f 	bic.w	r2, r2, #31
 8001702:	605a      	str	r2, [r3, #4]
 8001704:	4b04      	ldr	r3, [pc, #16]	; (8001718 <adc_init+0x38>)
 8001706:	4a04      	ldr	r2, [pc, #16]	; (8001718 <adc_init+0x38>)
 8001708:	6852      	ldr	r2, [r2, #4]
 800170a:	f042 0216 	orr.w	r2, r2, #22
 800170e:	605a      	str	r2, [r3, #4]
 8001710:	2012      	movs	r0, #18
 8001712:	f7ff fe7b 	bl	800140c <NVIC_EnableIRQ>
 8001716:	bd80      	pop	{r7, pc}
 8001718:	40012300 	.word	0x40012300

0800171c <TIM2_IRQHandler>:
 800171c:	b480      	push	{r7}
 800171e:	af00      	add	r7, sp, #0
 8001720:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001724:	8a1b      	ldrh	r3, [r3, #16]
 8001726:	b29b      	uxth	r3, r3
 8001728:	f003 0301 	and.w	r3, r3, #1
 800172c:	2b00      	cmp	r3, #0
 800172e:	d009      	beq.n	8001744 <TIM2_IRQHandler+0x28>
 8001730:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001734:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001738:	8a12      	ldrh	r2, [r2, #16]
 800173a:	b292      	uxth	r2, r2
 800173c:	f022 0201 	bic.w	r2, r2, #1
 8001740:	b292      	uxth	r2, r2
 8001742:	821a      	strh	r2, [r3, #16]
 8001744:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001748:	8a1b      	ldrh	r3, [r3, #16]
 800174a:	b29b      	uxth	r3, r3
 800174c:	f003 0302 	and.w	r3, r3, #2
 8001750:	2b00      	cmp	r3, #0
 8001752:	d009      	beq.n	8001768 <TIM2_IRQHandler+0x4c>
 8001754:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001758:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800175c:	8a12      	ldrh	r2, [r2, #16]
 800175e:	b292      	uxth	r2, r2
 8001760:	f022 0202 	bic.w	r2, r2, #2
 8001764:	b292      	uxth	r2, r2
 8001766:	821a      	strh	r2, [r3, #16]
 8001768:	46bd      	mov	sp, r7
 800176a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800176e:	4770      	bx	lr

08001770 <offset_pwm_init>:
 8001770:	b480      	push	{r7}
 8001772:	af00      	add	r7, sp, #0
 8001774:	4b31      	ldr	r3, [pc, #196]	; (800183c <offset_pwm_init+0xcc>)
 8001776:	4a31      	ldr	r2, [pc, #196]	; (800183c <offset_pwm_init+0xcc>)
 8001778:	6c12      	ldr	r2, [r2, #64]	; 0x40
 800177a:	f042 0204 	orr.w	r2, r2, #4
 800177e:	641a      	str	r2, [r3, #64]	; 0x40
 8001780:	4b2f      	ldr	r3, [pc, #188]	; (8001840 <offset_pwm_init+0xd0>)
 8001782:	2203      	movs	r2, #3
 8001784:	851a      	strh	r2, [r3, #40]	; 0x28
 8001786:	4b2e      	ldr	r3, [pc, #184]	; (8001840 <offset_pwm_init+0xd0>)
 8001788:	2263      	movs	r2, #99	; 0x63
 800178a:	62da      	str	r2, [r3, #44]	; 0x2c
 800178c:	4b2c      	ldr	r3, [pc, #176]	; (8001840 <offset_pwm_init+0xd0>)
 800178e:	2232      	movs	r2, #50	; 0x32
 8001790:	635a      	str	r2, [r3, #52]	; 0x34
 8001792:	4b2b      	ldr	r3, [pc, #172]	; (8001840 <offset_pwm_init+0xd0>)
 8001794:	2232      	movs	r2, #50	; 0x32
 8001796:	639a      	str	r2, [r3, #56]	; 0x38
 8001798:	4b29      	ldr	r3, [pc, #164]	; (8001840 <offset_pwm_init+0xd0>)
 800179a:	2200      	movs	r2, #0
 800179c:	831a      	strh	r2, [r3, #24]
 800179e:	4a28      	ldr	r2, [pc, #160]	; (8001840 <offset_pwm_init+0xd0>)
 80017a0:	4b27      	ldr	r3, [pc, #156]	; (8001840 <offset_pwm_init+0xd0>)
 80017a2:	8b1b      	ldrh	r3, [r3, #24]
 80017a4:	b29b      	uxth	r3, r3
 80017a6:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 80017aa:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 80017ae:	b29b      	uxth	r3, r3
 80017b0:	8313      	strh	r3, [r2, #24]
 80017b2:	4b23      	ldr	r3, [pc, #140]	; (8001840 <offset_pwm_init+0xd0>)
 80017b4:	4a22      	ldr	r2, [pc, #136]	; (8001840 <offset_pwm_init+0xd0>)
 80017b6:	8c12      	ldrh	r2, [r2, #32]
 80017b8:	b292      	uxth	r2, r2
 80017ba:	f042 0211 	orr.w	r2, r2, #17
 80017be:	b292      	uxth	r2, r2
 80017c0:	841a      	strh	r2, [r3, #32]
 80017c2:	4b1f      	ldr	r3, [pc, #124]	; (8001840 <offset_pwm_init+0xd0>)
 80017c4:	4a1e      	ldr	r2, [pc, #120]	; (8001840 <offset_pwm_init+0xd0>)
 80017c6:	8812      	ldrh	r2, [r2, #0]
 80017c8:	b292      	uxth	r2, r2
 80017ca:	f042 0201 	orr.w	r2, r2, #1
 80017ce:	b292      	uxth	r2, r2
 80017d0:	801a      	strh	r2, [r3, #0]
 80017d2:	4b1a      	ldr	r3, [pc, #104]	; (800183c <offset_pwm_init+0xcc>)
 80017d4:	4a19      	ldr	r2, [pc, #100]	; (800183c <offset_pwm_init+0xcc>)
 80017d6:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80017d8:	f042 0208 	orr.w	r2, r2, #8
 80017dc:	631a      	str	r2, [r3, #48]	; 0x30
 80017de:	4b19      	ldr	r3, [pc, #100]	; (8001844 <offset_pwm_init+0xd4>)
 80017e0:	4a18      	ldr	r2, [pc, #96]	; (8001844 <offset_pwm_init+0xd4>)
 80017e2:	6812      	ldr	r2, [r2, #0]
 80017e4:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 80017e8:	601a      	str	r2, [r3, #0]
 80017ea:	4b16      	ldr	r3, [pc, #88]	; (8001844 <offset_pwm_init+0xd4>)
 80017ec:	4a15      	ldr	r2, [pc, #84]	; (8001844 <offset_pwm_init+0xd4>)
 80017ee:	6812      	ldr	r2, [r2, #0]
 80017f0:	f042 6220 	orr.w	r2, r2, #167772160	; 0xa000000
 80017f4:	601a      	str	r2, [r3, #0]
 80017f6:	4b13      	ldr	r3, [pc, #76]	; (8001844 <offset_pwm_init+0xd4>)
 80017f8:	4a12      	ldr	r2, [pc, #72]	; (8001844 <offset_pwm_init+0xd4>)
 80017fa:	6892      	ldr	r2, [r2, #8]
 80017fc:	f042 6270 	orr.w	r2, r2, #251658240	; 0xf000000
 8001800:	609a      	str	r2, [r3, #8]
 8001802:	4b10      	ldr	r3, [pc, #64]	; (8001844 <offset_pwm_init+0xd4>)
 8001804:	4a0f      	ldr	r2, [pc, #60]	; (8001844 <offset_pwm_init+0xd4>)
 8001806:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001808:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 800180c:	625a      	str	r2, [r3, #36]	; 0x24
 800180e:	4b0d      	ldr	r3, [pc, #52]	; (8001844 <offset_pwm_init+0xd4>)
 8001810:	4a0c      	ldr	r2, [pc, #48]	; (8001844 <offset_pwm_init+0xd4>)
 8001812:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001814:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 8001818:	625a      	str	r2, [r3, #36]	; 0x24
 800181a:	4b0a      	ldr	r3, [pc, #40]	; (8001844 <offset_pwm_init+0xd4>)
 800181c:	4a09      	ldr	r2, [pc, #36]	; (8001844 <offset_pwm_init+0xd4>)
 800181e:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001820:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8001824:	625a      	str	r2, [r3, #36]	; 0x24
 8001826:	4b07      	ldr	r3, [pc, #28]	; (8001844 <offset_pwm_init+0xd4>)
 8001828:	4a06      	ldr	r2, [pc, #24]	; (8001844 <offset_pwm_init+0xd4>)
 800182a:	6a52      	ldr	r2, [r2, #36]	; 0x24
 800182c:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 8001830:	625a      	str	r2, [r3, #36]	; 0x24
 8001832:	46bd      	mov	sp, r7
 8001834:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001838:	4770      	bx	lr
 800183a:	bf00      	nop
 800183c:	40023800 	.word	0x40023800
 8001840:	40000800 	.word	0x40000800
 8001844:	40020c00 	.word	0x40020c00

08001848 <dac_init>:
 8001848:	b580      	push	{r7, lr}
 800184a:	af00      	add	r7, sp, #0
 800184c:	4b16      	ldr	r3, [pc, #88]	; (80018a8 <dac_init+0x60>)
 800184e:	4a16      	ldr	r2, [pc, #88]	; (80018a8 <dac_init+0x60>)
 8001850:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001852:	f042 5200 	orr.w	r2, r2, #536870912	; 0x20000000
 8001856:	641a      	str	r2, [r3, #64]	; 0x40
 8001858:	4b14      	ldr	r3, [pc, #80]	; (80018ac <dac_init+0x64>)
 800185a:	4a14      	ldr	r2, [pc, #80]	; (80018ac <dac_init+0x64>)
 800185c:	6812      	ldr	r2, [r2, #0]
 800185e:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001862:	601a      	str	r2, [r3, #0]
 8001864:	4b11      	ldr	r3, [pc, #68]	; (80018ac <dac_init+0x64>)
 8001866:	4a11      	ldr	r2, [pc, #68]	; (80018ac <dac_init+0x64>)
 8001868:	6812      	ldr	r2, [r2, #0]
 800186a:	f442 7240 	orr.w	r2, r2, #768	; 0x300
 800186e:	601a      	str	r2, [r3, #0]
 8001870:	4b0e      	ldr	r3, [pc, #56]	; (80018ac <dac_init+0x64>)
 8001872:	4a0e      	ldr	r2, [pc, #56]	; (80018ac <dac_init+0x64>)
 8001874:	6812      	ldr	r2, [r2, #0]
 8001876:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 800187a:	601a      	str	r2, [r3, #0]
 800187c:	4b0b      	ldr	r3, [pc, #44]	; (80018ac <dac_init+0x64>)
 800187e:	4a0b      	ldr	r2, [pc, #44]	; (80018ac <dac_init+0x64>)
 8001880:	6812      	ldr	r2, [r2, #0]
 8001882:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
 8001886:	601a      	str	r2, [r3, #0]
 8001888:	4b09      	ldr	r3, [pc, #36]	; (80018b0 <dac_init+0x68>)
 800188a:	4a09      	ldr	r2, [pc, #36]	; (80018b0 <dac_init+0x68>)
 800188c:	6812      	ldr	r2, [r2, #0]
 800188e:	f042 0201 	orr.w	r2, r2, #1
 8001892:	601a      	str	r2, [r3, #0]
 8001894:	4b06      	ldr	r3, [pc, #24]	; (80018b0 <dac_init+0x68>)
 8001896:	4a06      	ldr	r2, [pc, #24]	; (80018b0 <dac_init+0x68>)
 8001898:	6812      	ldr	r2, [r2, #0]
 800189a:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800189e:	601a      	str	r2, [r3, #0]
 80018a0:	f7ff ff66 	bl	8001770 <offset_pwm_init>
 80018a4:	bd80      	pop	{r7, pc}
 80018a6:	bf00      	nop
 80018a8:	40023800 	.word	0x40023800
 80018ac:	40020000 	.word	0x40020000
 80018b0:	40007400 	.word	0x40007400

080018b4 <dac_offset_set>:
 80018b4:	b480      	push	{r7}
 80018b6:	b083      	sub	sp, #12
 80018b8:	af00      	add	r7, sp, #0
 80018ba:	4603      	mov	r3, r0
 80018bc:	80fb      	strh	r3, [r7, #6]
 80018be:	4b04      	ldr	r3, [pc, #16]	; (80018d0 <dac_offset_set+0x1c>)
 80018c0:	88fa      	ldrh	r2, [r7, #6]
 80018c2:	635a      	str	r2, [r3, #52]	; 0x34
 80018c4:	370c      	adds	r7, #12
 80018c6:	46bd      	mov	sp, r7
 80018c8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80018cc:	4770      	bx	lr
 80018ce:	bf00      	nop
 80018d0:	40000800 	.word	0x40000800

080018d4 <NVIC_EnableIRQ>:
 80018d4:	b480      	push	{r7}
 80018d6:	b083      	sub	sp, #12
 80018d8:	af00      	add	r7, sp, #0
 80018da:	4603      	mov	r3, r0
 80018dc:	71fb      	strb	r3, [r7, #7]
 80018de:	4b08      	ldr	r3, [pc, #32]	; (8001900 <NVIC_EnableIRQ+0x2c>)
 80018e0:	f997 2007 	ldrsb.w	r2, [r7, #7]
 80018e4:	0952      	lsrs	r2, r2, #5
 80018e6:	79f9      	ldrb	r1, [r7, #7]
 80018e8:	f001 011f 	and.w	r1, r1, #31
 80018ec:	2001      	movs	r0, #1
 80018ee:	fa00 f101 	lsl.w	r1, r0, r1
 80018f2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80018f6:	370c      	adds	r7, #12
 80018f8:	46bd      	mov	sp, r7
 80018fa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80018fe:	4770      	bx	lr
 8001900:	e000e100 	.word	0xe000e100

08001904 <start_trans>:
 8001904:	b480      	push	{r7}
 8001906:	b083      	sub	sp, #12
 8001908:	af00      	add	r7, sp, #0
 800190a:	6078      	str	r0, [r7, #4]
 800190c:	687a      	ldr	r2, [r7, #4]
 800190e:	4b18      	ldr	r3, [pc, #96]	; (8001970 <start_trans+0x6c>)
 8001910:	601a      	str	r2, [r3, #0]
 8001912:	4b18      	ldr	r3, [pc, #96]	; (8001974 <start_trans+0x70>)
 8001914:	2200      	movs	r2, #0
 8001916:	601a      	str	r2, [r3, #0]
 8001918:	4b17      	ldr	r3, [pc, #92]	; (8001978 <start_trans+0x74>)
 800191a:	4a17      	ldr	r2, [pc, #92]	; (8001978 <start_trans+0x74>)
 800191c:	6952      	ldr	r2, [r2, #20]
 800191e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001922:	615a      	str	r2, [r3, #20]
 8001924:	4b15      	ldr	r3, [pc, #84]	; (800197c <start_trans+0x78>)
 8001926:	4a15      	ldr	r2, [pc, #84]	; (800197c <start_trans+0x78>)
 8001928:	8992      	ldrh	r2, [r2, #12]
 800192a:	b292      	uxth	r2, r2
 800192c:	f042 0208 	orr.w	r2, r2, #8
 8001930:	b292      	uxth	r2, r2
 8001932:	819a      	strh	r2, [r3, #12]
 8001934:	4b11      	ldr	r3, [pc, #68]	; (800197c <start_trans+0x78>)
 8001936:	4a11      	ldr	r2, [pc, #68]	; (800197c <start_trans+0x78>)
 8001938:	8992      	ldrh	r2, [r2, #12]
 800193a:	b292      	uxth	r2, r2
 800193c:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8001940:	b292      	uxth	r2, r2
 8001942:	819a      	strh	r2, [r3, #12]
 8001944:	4b0d      	ldr	r3, [pc, #52]	; (800197c <start_trans+0x78>)
 8001946:	4a0b      	ldr	r2, [pc, #44]	; (8001974 <start_trans+0x70>)
 8001948:	6812      	ldr	r2, [r2, #0]
 800194a:	490d      	ldr	r1, [pc, #52]	; (8001980 <start_trans+0x7c>)
 800194c:	5c8a      	ldrb	r2, [r1, r2]
 800194e:	809a      	strh	r2, [r3, #4]
 8001950:	4b08      	ldr	r3, [pc, #32]	; (8001974 <start_trans+0x70>)
 8001952:	681b      	ldr	r3, [r3, #0]
 8001954:	3301      	adds	r3, #1
 8001956:	b2da      	uxtb	r2, r3
 8001958:	4b06      	ldr	r3, [pc, #24]	; (8001974 <start_trans+0x70>)
 800195a:	601a      	str	r2, [r3, #0]
 800195c:	4b04      	ldr	r3, [pc, #16]	; (8001970 <start_trans+0x6c>)
 800195e:	681b      	ldr	r3, [r3, #0]
 8001960:	1e5a      	subs	r2, r3, #1
 8001962:	4b03      	ldr	r3, [pc, #12]	; (8001970 <start_trans+0x6c>)
 8001964:	601a      	str	r2, [r3, #0]
 8001966:	370c      	adds	r7, #12
 8001968:	46bd      	mov	sp, r7
 800196a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800196e:	4770      	bx	lr
 8001970:	20000c84 	.word	0x20000c84
 8001974:	20000c80 	.word	0x20000c80
 8001978:	40020c00 	.word	0x40020c00
 800197c:	40004800 	.word	0x40004800
 8001980:	20000b80 	.word	0x20000b80

08001984 <modbus_init>:
 8001984:	b580      	push	{r7, lr}
 8001986:	af00      	add	r7, sp, #0
 8001988:	4b40      	ldr	r3, [pc, #256]	; (8001a8c <modbus_init+0x108>)
 800198a:	4a40      	ldr	r2, [pc, #256]	; (8001a8c <modbus_init+0x108>)
 800198c:	6c12      	ldr	r2, [r2, #64]	; 0x40
 800198e:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
 8001992:	641a      	str	r2, [r3, #64]	; 0x40
 8001994:	4b3e      	ldr	r3, [pc, #248]	; (8001a90 <modbus_init+0x10c>)
 8001996:	2200      	movs	r2, #0
 8001998:	819a      	strh	r2, [r3, #12]
 800199a:	4b3d      	ldr	r3, [pc, #244]	; (8001a90 <modbus_init+0x10c>)
 800199c:	4a3c      	ldr	r2, [pc, #240]	; (8001a90 <modbus_init+0x10c>)
 800199e:	8992      	ldrh	r2, [r2, #12]
 80019a0:	b292      	uxth	r2, r2
 80019a2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80019a6:	b292      	uxth	r2, r2
 80019a8:	819a      	strh	r2, [r3, #12]
 80019aa:	4b39      	ldr	r3, [pc, #228]	; (8001a90 <modbus_init+0x10c>)
 80019ac:	4a38      	ldr	r2, [pc, #224]	; (8001a90 <modbus_init+0x10c>)
 80019ae:	8992      	ldrh	r2, [r2, #12]
 80019b0:	b292      	uxth	r2, r2
 80019b2:	f042 0204 	orr.w	r2, r2, #4
 80019b6:	b292      	uxth	r2, r2
 80019b8:	819a      	strh	r2, [r3, #12]
 80019ba:	4b35      	ldr	r3, [pc, #212]	; (8001a90 <modbus_init+0x10c>)
 80019bc:	4a34      	ldr	r2, [pc, #208]	; (8001a90 <modbus_init+0x10c>)
 80019be:	8992      	ldrh	r2, [r2, #12]
 80019c0:	b292      	uxth	r2, r2
 80019c2:	f042 0220 	orr.w	r2, r2, #32
 80019c6:	b292      	uxth	r2, r2
 80019c8:	819a      	strh	r2, [r3, #12]
 80019ca:	4b31      	ldr	r3, [pc, #196]	; (8001a90 <modbus_init+0x10c>)
 80019cc:	4a30      	ldr	r2, [pc, #192]	; (8001a90 <modbus_init+0x10c>)
 80019ce:	8992      	ldrh	r2, [r2, #12]
 80019d0:	b292      	uxth	r2, r2
 80019d2:	f042 0210 	orr.w	r2, r2, #16
 80019d6:	b292      	uxth	r2, r2
 80019d8:	819a      	strh	r2, [r3, #12]
 80019da:	2027      	movs	r0, #39	; 0x27
 80019dc:	f7ff ff7a 	bl	80018d4 <NVIC_EnableIRQ>
 80019e0:	4b2b      	ldr	r3, [pc, #172]	; (8001a90 <modbus_init+0x10c>)
 80019e2:	891b      	ldrh	r3, [r3, #8]
 80019e4:	4b2a      	ldr	r3, [pc, #168]	; (8001a90 <modbus_init+0x10c>)
 80019e6:	2200      	movs	r2, #0
 80019e8:	811a      	strh	r2, [r3, #8]
 80019ea:	4a29      	ldr	r2, [pc, #164]	; (8001a90 <modbus_init+0x10c>)
 80019ec:	4b28      	ldr	r3, [pc, #160]	; (8001a90 <modbus_init+0x10c>)
 80019ee:	891b      	ldrh	r3, [r3, #8]
 80019f0:	b29b      	uxth	r3, r3
 80019f2:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 80019f6:	f043 0301 	orr.w	r3, r3, #1
 80019fa:	b29b      	uxth	r3, r3
 80019fc:	8113      	strh	r3, [r2, #8]
 80019fe:	4b23      	ldr	r3, [pc, #140]	; (8001a8c <modbus_init+0x108>)
 8001a00:	4a22      	ldr	r2, [pc, #136]	; (8001a8c <modbus_init+0x108>)
 8001a02:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001a04:	f042 0208 	orr.w	r2, r2, #8
 8001a08:	631a      	str	r2, [r3, #48]	; 0x30
 8001a0a:	4b22      	ldr	r3, [pc, #136]	; (8001a94 <modbus_init+0x110>)
 8001a0c:	4a21      	ldr	r2, [pc, #132]	; (8001a94 <modbus_init+0x110>)
 8001a0e:	6812      	ldr	r2, [r2, #0]
 8001a10:	f422 1240 	bic.w	r2, r2, #3145728	; 0x300000
 8001a14:	601a      	str	r2, [r3, #0]
 8001a16:	4b1f      	ldr	r3, [pc, #124]	; (8001a94 <modbus_init+0x110>)
 8001a18:	4a1e      	ldr	r2, [pc, #120]	; (8001a94 <modbus_init+0x110>)
 8001a1a:	6812      	ldr	r2, [r2, #0]
 8001a1c:	f442 1280 	orr.w	r2, r2, #1048576	; 0x100000
 8001a20:	601a      	str	r2, [r3, #0]
 8001a22:	4b1c      	ldr	r3, [pc, #112]	; (8001a94 <modbus_init+0x110>)
 8001a24:	4a1b      	ldr	r2, [pc, #108]	; (8001a94 <modbus_init+0x110>)
 8001a26:	6812      	ldr	r2, [r2, #0]
 8001a28:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 8001a2c:	601a      	str	r2, [r3, #0]
 8001a2e:	4b19      	ldr	r3, [pc, #100]	; (8001a94 <modbus_init+0x110>)
 8001a30:	4a18      	ldr	r2, [pc, #96]	; (8001a94 <modbus_init+0x110>)
 8001a32:	6812      	ldr	r2, [r2, #0]
 8001a34:	f442 2220 	orr.w	r2, r2, #655360	; 0xa0000
 8001a38:	601a      	str	r2, [r3, #0]
 8001a3a:	4b16      	ldr	r3, [pc, #88]	; (8001a94 <modbus_init+0x110>)
 8001a3c:	4a15      	ldr	r2, [pc, #84]	; (8001a94 <modbus_init+0x110>)
 8001a3e:	6892      	ldr	r2, [r2, #8]
 8001a40:	f442 2270 	orr.w	r2, r2, #983040	; 0xf0000
 8001a44:	609a      	str	r2, [r3, #8]
 8001a46:	4b13      	ldr	r3, [pc, #76]	; (8001a94 <modbus_init+0x110>)
 8001a48:	4a12      	ldr	r2, [pc, #72]	; (8001a94 <modbus_init+0x110>)
 8001a4a:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001a4c:	f022 020f 	bic.w	r2, r2, #15
 8001a50:	625a      	str	r2, [r3, #36]	; 0x24
 8001a52:	4b10      	ldr	r3, [pc, #64]	; (8001a94 <modbus_init+0x110>)
 8001a54:	4a0f      	ldr	r2, [pc, #60]	; (8001a94 <modbus_init+0x110>)
 8001a56:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001a58:	f042 0207 	orr.w	r2, r2, #7
 8001a5c:	625a      	str	r2, [r3, #36]	; 0x24
 8001a5e:	4b0d      	ldr	r3, [pc, #52]	; (8001a94 <modbus_init+0x110>)
 8001a60:	4a0c      	ldr	r2, [pc, #48]	; (8001a94 <modbus_init+0x110>)
 8001a62:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001a64:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8001a68:	625a      	str	r2, [r3, #36]	; 0x24
 8001a6a:	4b0a      	ldr	r3, [pc, #40]	; (8001a94 <modbus_init+0x110>)
 8001a6c:	4a09      	ldr	r2, [pc, #36]	; (8001a94 <modbus_init+0x110>)
 8001a6e:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001a70:	f042 0270 	orr.w	r2, r2, #112	; 0x70
 8001a74:	625a      	str	r2, [r3, #36]	; 0x24
 8001a76:	2000      	movs	r0, #0
 8001a78:	f7ff ff44 	bl	8001904 <start_trans>
 8001a7c:	4b05      	ldr	r3, [pc, #20]	; (8001a94 <modbus_init+0x110>)
 8001a7e:	4a05      	ldr	r2, [pc, #20]	; (8001a94 <modbus_init+0x110>)
 8001a80:	6952      	ldr	r2, [r2, #20]
 8001a82:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8001a86:	615a      	str	r2, [r3, #20]
 8001a88:	bd80      	pop	{r7, pc}
 8001a8a:	bf00      	nop
 8001a8c:	40023800 	.word	0x40023800
 8001a90:	40004800 	.word	0x40004800
 8001a94:	40020c00 	.word	0x40020c00

08001a98 <USART3_IRQHandler>:
 8001a98:	b580      	push	{r7, lr}
 8001a9a:	b082      	sub	sp, #8
 8001a9c:	af00      	add	r7, sp, #0
 8001a9e:	4b37      	ldr	r3, [pc, #220]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001aa0:	881b      	ldrh	r3, [r3, #0]
 8001aa2:	b29b      	uxth	r3, r3
 8001aa4:	f003 0310 	and.w	r3, r3, #16
 8001aa8:	2b00      	cmp	r3, #0
 8001aaa:	d00c      	beq.n	8001ac6 <USART3_IRQHandler+0x2e>
 8001aac:	4b33      	ldr	r3, [pc, #204]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001aae:	889b      	ldrh	r3, [r3, #4]
 8001ab0:	b29b      	uxth	r3, r3
 8001ab2:	71fb      	strb	r3, [r7, #7]
 8001ab4:	f000 fe1a 	bl	80026ec <proc_ADU>
 8001ab8:	4b31      	ldr	r3, [pc, #196]	; (8001b80 <USART3_IRQHandler+0xe8>)
 8001aba:	681a      	ldr	r2, [r3, #0]
 8001abc:	4b31      	ldr	r3, [pc, #196]	; (8001b84 <USART3_IRQHandler+0xec>)
 8001abe:	601a      	str	r2, [r3, #0]
 8001ac0:	4b2f      	ldr	r3, [pc, #188]	; (8001b80 <USART3_IRQHandler+0xe8>)
 8001ac2:	2200      	movs	r2, #0
 8001ac4:	601a      	str	r2, [r3, #0]
 8001ac6:	4b2d      	ldr	r3, [pc, #180]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001ac8:	881b      	ldrh	r3, [r3, #0]
 8001aca:	b29b      	uxth	r3, r3
 8001acc:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8001ad0:	2b00      	cmp	r3, #0
 8001ad2:	d01d      	beq.n	8001b10 <USART3_IRQHandler+0x78>
 8001ad4:	4b2c      	ldr	r3, [pc, #176]	; (8001b88 <USART3_IRQHandler+0xf0>)
 8001ad6:	681b      	ldr	r3, [r3, #0]
 8001ad8:	2b00      	cmp	r3, #0
 8001ada:	d108      	bne.n	8001aee <USART3_IRQHandler+0x56>
 8001adc:	4b27      	ldr	r3, [pc, #156]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001ade:	4a27      	ldr	r2, [pc, #156]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001ae0:	8992      	ldrh	r2, [r2, #12]
 8001ae2:	b292      	uxth	r2, r2
 8001ae4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8001ae8:	b292      	uxth	r2, r2
 8001aea:	819a      	strh	r2, [r3, #12]
 8001aec:	e010      	b.n	8001b10 <USART3_IRQHandler+0x78>
 8001aee:	4b23      	ldr	r3, [pc, #140]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001af0:	4a26      	ldr	r2, [pc, #152]	; (8001b8c <USART3_IRQHandler+0xf4>)
 8001af2:	6812      	ldr	r2, [r2, #0]
 8001af4:	4926      	ldr	r1, [pc, #152]	; (8001b90 <USART3_IRQHandler+0xf8>)
 8001af6:	5c8a      	ldrb	r2, [r1, r2]
 8001af8:	809a      	strh	r2, [r3, #4]
 8001afa:	4b24      	ldr	r3, [pc, #144]	; (8001b8c <USART3_IRQHandler+0xf4>)
 8001afc:	681b      	ldr	r3, [r3, #0]
 8001afe:	3301      	adds	r3, #1
 8001b00:	b2da      	uxtb	r2, r3
 8001b02:	4b22      	ldr	r3, [pc, #136]	; (8001b8c <USART3_IRQHandler+0xf4>)
 8001b04:	601a      	str	r2, [r3, #0]
 8001b06:	4b20      	ldr	r3, [pc, #128]	; (8001b88 <USART3_IRQHandler+0xf0>)
 8001b08:	681b      	ldr	r3, [r3, #0]
 8001b0a:	1e5a      	subs	r2, r3, #1
 8001b0c:	4b1e      	ldr	r3, [pc, #120]	; (8001b88 <USART3_IRQHandler+0xf0>)
 8001b0e:	601a      	str	r2, [r3, #0]
 8001b10:	4b1a      	ldr	r3, [pc, #104]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001b12:	881b      	ldrh	r3, [r3, #0]
 8001b14:	b29b      	uxth	r3, r3
 8001b16:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8001b1a:	2b00      	cmp	r3, #0
 8001b1c:	d015      	beq.n	8001b4a <USART3_IRQHandler+0xb2>
 8001b1e:	4b17      	ldr	r3, [pc, #92]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001b20:	4a16      	ldr	r2, [pc, #88]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001b22:	8812      	ldrh	r2, [r2, #0]
 8001b24:	b292      	uxth	r2, r2
 8001b26:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 8001b2a:	b292      	uxth	r2, r2
 8001b2c:	801a      	strh	r2, [r3, #0]
 8001b2e:	4b13      	ldr	r3, [pc, #76]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001b30:	4a12      	ldr	r2, [pc, #72]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001b32:	8992      	ldrh	r2, [r2, #12]
 8001b34:	b292      	uxth	r2, r2
 8001b36:	f022 02c0 	bic.w	r2, r2, #192	; 0xc0
 8001b3a:	b292      	uxth	r2, r2
 8001b3c:	819a      	strh	r2, [r3, #12]
 8001b3e:	4b15      	ldr	r3, [pc, #84]	; (8001b94 <USART3_IRQHandler+0xfc>)
 8001b40:	4a14      	ldr	r2, [pc, #80]	; (8001b94 <USART3_IRQHandler+0xfc>)
 8001b42:	6952      	ldr	r2, [r2, #20]
 8001b44:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8001b48:	615a      	str	r2, [r3, #20]
 8001b4a:	4b0c      	ldr	r3, [pc, #48]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001b4c:	881b      	ldrh	r3, [r3, #0]
 8001b4e:	b29b      	uxth	r3, r3
 8001b50:	f003 0320 	and.w	r3, r3, #32
 8001b54:	2b00      	cmp	r3, #0
 8001b56:	d00d      	beq.n	8001b74 <USART3_IRQHandler+0xdc>
 8001b58:	4b09      	ldr	r3, [pc, #36]	; (8001b80 <USART3_IRQHandler+0xe8>)
 8001b5a:	681b      	ldr	r3, [r3, #0]
 8001b5c:	4a07      	ldr	r2, [pc, #28]	; (8001b7c <USART3_IRQHandler+0xe4>)
 8001b5e:	8892      	ldrh	r2, [r2, #4]
 8001b60:	b292      	uxth	r2, r2
 8001b62:	b2d1      	uxtb	r1, r2
 8001b64:	4a0c      	ldr	r2, [pc, #48]	; (8001b98 <USART3_IRQHandler+0x100>)
 8001b66:	54d1      	strb	r1, [r2, r3]
 8001b68:	4b05      	ldr	r3, [pc, #20]	; (8001b80 <USART3_IRQHandler+0xe8>)
 8001b6a:	681b      	ldr	r3, [r3, #0]
 8001b6c:	3301      	adds	r3, #1
 8001b6e:	b2da      	uxtb	r2, r3
 8001b70:	4b03      	ldr	r3, [pc, #12]	; (8001b80 <USART3_IRQHandler+0xe8>)
 8001b72:	601a      	str	r2, [r3, #0]
 8001b74:	3708      	adds	r7, #8
 8001b76:	46bd      	mov	sp, r7
 8001b78:	bd80      	pop	{r7, pc}
 8001b7a:	bf00      	nop
 8001b7c:	40004800 	.word	0x40004800
 8001b80:	20000b78 	.word	0x20000b78
 8001b84:	20000b7c 	.word	0x20000b7c
 8001b88:	20000c84 	.word	0x20000c84
 8001b8c:	20000c80 	.word	0x20000c80
 8001b90:	20000b80 	.word	0x20000b80
 8001b94:	40020c00 	.word	0x40020c00
 8001b98:	20000a78 	.word	0x20000a78

08001b9c <pack_bits_to_bytes>:
 8001b9c:	b480      	push	{r7}
 8001b9e:	b089      	sub	sp, #36	; 0x24
 8001ba0:	af00      	add	r7, sp, #0
 8001ba2:	60f8      	str	r0, [r7, #12]
 8001ba4:	60b9      	str	r1, [r7, #8]
 8001ba6:	607a      	str	r2, [r7, #4]
 8001ba8:	603b      	str	r3, [r7, #0]
 8001baa:	687b      	ldr	r3, [r7, #4]
 8001bac:	10db      	asrs	r3, r3, #3
 8001bae:	61fb      	str	r3, [r7, #28]
 8001bb0:	687b      	ldr	r3, [r7, #4]
 8001bb2:	f003 0307 	and.w	r3, r3, #7
 8001bb6:	617b      	str	r3, [r7, #20]
 8001bb8:	2300      	movs	r3, #0
 8001bba:	61bb      	str	r3, [r7, #24]
 8001bbc:	69fb      	ldr	r3, [r7, #28]
 8001bbe:	1c5a      	adds	r2, r3, #1
 8001bc0:	61fa      	str	r2, [r7, #28]
 8001bc2:	68ba      	ldr	r2, [r7, #8]
 8001bc4:	4413      	add	r3, r2
 8001bc6:	781b      	ldrb	r3, [r3, #0]
 8001bc8:	461a      	mov	r2, r3
 8001bca:	697b      	ldr	r3, [r7, #20]
 8001bcc:	fa42 f303 	asr.w	r3, r2, r3
 8001bd0:	74fb      	strb	r3, [r7, #19]
 8001bd2:	69fb      	ldr	r3, [r7, #28]
 8001bd4:	68ba      	ldr	r2, [r7, #8]
 8001bd6:	4413      	add	r3, r2
 8001bd8:	781b      	ldrb	r3, [r3, #0]
 8001bda:	461a      	mov	r2, r3
 8001bdc:	697b      	ldr	r3, [r7, #20]
 8001bde:	f1c3 0308 	rsb	r3, r3, #8
 8001be2:	fa02 f303 	lsl.w	r3, r2, r3
 8001be6:	b2da      	uxtb	r2, r3
 8001be8:	7cfb      	ldrb	r3, [r7, #19]
 8001bea:	4313      	orrs	r3, r2
 8001bec:	b2db      	uxtb	r3, r3
 8001bee:	74fb      	strb	r3, [r7, #19]
 8001bf0:	69bb      	ldr	r3, [r7, #24]
 8001bf2:	68fa      	ldr	r2, [r7, #12]
 8001bf4:	4413      	add	r3, r2
 8001bf6:	7cfa      	ldrb	r2, [r7, #19]
 8001bf8:	701a      	strb	r2, [r3, #0]
 8001bfa:	683b      	ldr	r3, [r7, #0]
 8001bfc:	2b08      	cmp	r3, #8
 8001bfe:	dd06      	ble.n	8001c0e <pack_bits_to_bytes+0x72>
 8001c00:	683b      	ldr	r3, [r7, #0]
 8001c02:	3b08      	subs	r3, #8
 8001c04:	603b      	str	r3, [r7, #0]
 8001c06:	69bb      	ldr	r3, [r7, #24]
 8001c08:	3301      	adds	r3, #1
 8001c0a:	61bb      	str	r3, [r7, #24]
 8001c0c:	e7d6      	b.n	8001bbc <pack_bits_to_bytes+0x20>
 8001c0e:	69bb      	ldr	r3, [r7, #24]
 8001c10:	68fa      	ldr	r2, [r7, #12]
 8001c12:	4413      	add	r3, r2
 8001c14:	69ba      	ldr	r2, [r7, #24]
 8001c16:	68f9      	ldr	r1, [r7, #12]
 8001c18:	440a      	add	r2, r1
 8001c1a:	7812      	ldrb	r2, [r2, #0]
 8001c1c:	b2d1      	uxtb	r1, r2
 8001c1e:	683a      	ldr	r2, [r7, #0]
 8001c20:	f1c2 0208 	rsb	r2, r2, #8
 8001c24:	20ff      	movs	r0, #255	; 0xff
 8001c26:	fa40 f202 	asr.w	r2, r0, r2
 8001c2a:	b2d2      	uxtb	r2, r2
 8001c2c:	400a      	ands	r2, r1
 8001c2e:	b2d2      	uxtb	r2, r2
 8001c30:	b2d2      	uxtb	r2, r2
 8001c32:	701a      	strb	r2, [r3, #0]
 8001c34:	bf00      	nop
 8001c36:	69bb      	ldr	r3, [r7, #24]
 8001c38:	3301      	adds	r3, #1
 8001c3a:	4618      	mov	r0, r3
 8001c3c:	3724      	adds	r7, #36	; 0x24
 8001c3e:	46bd      	mov	sp, r7
 8001c40:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001c44:	4770      	bx	lr
 8001c46:	bf00      	nop

08001c48 <set_coil>:
 8001c48:	b480      	push	{r7}
 8001c4a:	b085      	sub	sp, #20
 8001c4c:	af00      	add	r7, sp, #0
 8001c4e:	6078      	str	r0, [r7, #4]
 8001c50:	460b      	mov	r3, r1
 8001c52:	70fb      	strb	r3, [r7, #3]
 8001c54:	687b      	ldr	r3, [r7, #4]
 8001c56:	3b13      	subs	r3, #19
 8001c58:	607b      	str	r3, [r7, #4]
 8001c5a:	687b      	ldr	r3, [r7, #4]
 8001c5c:	10db      	asrs	r3, r3, #3
 8001c5e:	60fb      	str	r3, [r7, #12]
 8001c60:	687b      	ldr	r3, [r7, #4]
 8001c62:	f003 0307 	and.w	r3, r3, #7
 8001c66:	60bb      	str	r3, [r7, #8]
 8001c68:	4a14      	ldr	r2, [pc, #80]	; (8001cbc <set_coil+0x74>)
 8001c6a:	68fb      	ldr	r3, [r7, #12]
 8001c6c:	4413      	add	r3, r2
 8001c6e:	781b      	ldrb	r3, [r3, #0]
 8001c70:	b2da      	uxtb	r2, r3
 8001c72:	2101      	movs	r1, #1
 8001c74:	68bb      	ldr	r3, [r7, #8]
 8001c76:	fa01 f303 	lsl.w	r3, r1, r3
 8001c7a:	b2db      	uxtb	r3, r3
 8001c7c:	43db      	mvns	r3, r3
 8001c7e:	b2db      	uxtb	r3, r3
 8001c80:	4013      	ands	r3, r2
 8001c82:	b2db      	uxtb	r3, r3
 8001c84:	b2da      	uxtb	r2, r3
 8001c86:	490d      	ldr	r1, [pc, #52]	; (8001cbc <set_coil+0x74>)
 8001c88:	68fb      	ldr	r3, [r7, #12]
 8001c8a:	440b      	add	r3, r1
 8001c8c:	701a      	strb	r2, [r3, #0]
 8001c8e:	4a0b      	ldr	r2, [pc, #44]	; (8001cbc <set_coil+0x74>)
 8001c90:	68fb      	ldr	r3, [r7, #12]
 8001c92:	4413      	add	r3, r2
 8001c94:	781b      	ldrb	r3, [r3, #0]
 8001c96:	b2da      	uxtb	r2, r3
 8001c98:	78f9      	ldrb	r1, [r7, #3]
 8001c9a:	68bb      	ldr	r3, [r7, #8]
 8001c9c:	fa01 f303 	lsl.w	r3, r1, r3
 8001ca0:	b2db      	uxtb	r3, r3
 8001ca2:	4313      	orrs	r3, r2
 8001ca4:	b2db      	uxtb	r3, r3
 8001ca6:	b2da      	uxtb	r2, r3
 8001ca8:	4904      	ldr	r1, [pc, #16]	; (8001cbc <set_coil+0x74>)
 8001caa:	68fb      	ldr	r3, [r7, #12]
 8001cac:	440b      	add	r3, r1
 8001cae:	701a      	strb	r2, [r3, #0]
 8001cb0:	3714      	adds	r7, #20
 8001cb2:	46bd      	mov	sp, r7
 8001cb4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001cb8:	4770      	bx	lr
 8001cba:	bf00      	nop
 8001cbc:	20000008 	.word	0x20000008

08001cc0 <pdu_write_single_coil>:
 8001cc0:	b580      	push	{r7, lr}
 8001cc2:	b084      	sub	sp, #16
 8001cc4:	af00      	add	r7, sp, #0
 8001cc6:	4b3c      	ldr	r3, [pc, #240]	; (8001db8 <pdu_write_single_coil+0xf8>)
 8001cc8:	785b      	ldrb	r3, [r3, #1]
 8001cca:	73fb      	strb	r3, [r7, #15]
 8001ccc:	4b3a      	ldr	r3, [pc, #232]	; (8001db8 <pdu_write_single_coil+0xf8>)
 8001cce:	789b      	ldrb	r3, [r3, #2]
 8001cd0:	021b      	lsls	r3, r3, #8
 8001cd2:	b29a      	uxth	r2, r3
 8001cd4:	4b38      	ldr	r3, [pc, #224]	; (8001db8 <pdu_write_single_coil+0xf8>)
 8001cd6:	78db      	ldrb	r3, [r3, #3]
 8001cd8:	4313      	orrs	r3, r2
 8001cda:	b29b      	uxth	r3, r3
 8001cdc:	81bb      	strh	r3, [r7, #12]
 8001cde:	4b36      	ldr	r3, [pc, #216]	; (8001db8 <pdu_write_single_coil+0xf8>)
 8001ce0:	791b      	ldrb	r3, [r3, #4]
 8001ce2:	021b      	lsls	r3, r3, #8
 8001ce4:	b29a      	uxth	r2, r3
 8001ce6:	4b34      	ldr	r3, [pc, #208]	; (8001db8 <pdu_write_single_coil+0xf8>)
 8001ce8:	795b      	ldrb	r3, [r3, #5]
 8001cea:	4313      	orrs	r3, r2
 8001cec:	b29b      	uxth	r3, r3
 8001cee:	817b      	strh	r3, [r7, #10]
 8001cf0:	2301      	movs	r3, #1
 8001cf2:	607b      	str	r3, [r7, #4]
 8001cf4:	89bb      	ldrh	r3, [r7, #12]
 8001cf6:	2b12      	cmp	r3, #18
 8001cf8:	d902      	bls.n	8001d00 <pdu_write_single_coil+0x40>
 8001cfa:	89bb      	ldrh	r3, [r7, #12]
 8001cfc:	2b37      	cmp	r3, #55	; 0x37
 8001cfe:	d910      	bls.n	8001d22 <pdu_write_single_coil+0x62>
 8001d00:	687b      	ldr	r3, [r7, #4]
 8001d02:	1c5a      	adds	r2, r3, #1
 8001d04:	607a      	str	r2, [r7, #4]
 8001d06:	7bfa      	ldrb	r2, [r7, #15]
 8001d08:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001d0c:	b2d1      	uxtb	r1, r2
 8001d0e:	4a2b      	ldr	r2, [pc, #172]	; (8001dbc <pdu_write_single_coil+0xfc>)
 8001d10:	54d1      	strb	r1, [r2, r3]
 8001d12:	687b      	ldr	r3, [r7, #4]
 8001d14:	1c5a      	adds	r2, r3, #1
 8001d16:	607a      	str	r2, [r7, #4]
 8001d18:	4a28      	ldr	r2, [pc, #160]	; (8001dbc <pdu_write_single_coil+0xfc>)
 8001d1a:	2102      	movs	r1, #2
 8001d1c:	54d1      	strb	r1, [r2, r3]
 8001d1e:	687b      	ldr	r3, [r7, #4]
 8001d20:	e046      	b.n	8001db0 <pdu_write_single_coil+0xf0>
 8001d22:	897b      	ldrh	r3, [r7, #10]
 8001d24:	2b00      	cmp	r3, #0
 8001d26:	d105      	bne.n	8001d34 <pdu_write_single_coil+0x74>
 8001d28:	89bb      	ldrh	r3, [r7, #12]
 8001d2a:	4618      	mov	r0, r3
 8001d2c:	2100      	movs	r1, #0
 8001d2e:	f7ff ff8b 	bl	8001c48 <set_coil>
 8001d32:	e01a      	b.n	8001d6a <pdu_write_single_coil+0xaa>
 8001d34:	897b      	ldrh	r3, [r7, #10]
 8001d36:	f5b3 4f7f 	cmp.w	r3, #65280	; 0xff00
 8001d3a:	d105      	bne.n	8001d48 <pdu_write_single_coil+0x88>
 8001d3c:	89bb      	ldrh	r3, [r7, #12]
 8001d3e:	4618      	mov	r0, r3
 8001d40:	2101      	movs	r1, #1
 8001d42:	f7ff ff81 	bl	8001c48 <set_coil>
 8001d46:	e010      	b.n	8001d6a <pdu_write_single_coil+0xaa>
 8001d48:	687b      	ldr	r3, [r7, #4]
 8001d4a:	1c5a      	adds	r2, r3, #1
 8001d4c:	607a      	str	r2, [r7, #4]
 8001d4e:	7bfa      	ldrb	r2, [r7, #15]
 8001d50:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001d54:	b2d1      	uxtb	r1, r2
 8001d56:	4a19      	ldr	r2, [pc, #100]	; (8001dbc <pdu_write_single_coil+0xfc>)
 8001d58:	54d1      	strb	r1, [r2, r3]
 8001d5a:	687b      	ldr	r3, [r7, #4]
 8001d5c:	1c5a      	adds	r2, r3, #1
 8001d5e:	607a      	str	r2, [r7, #4]
 8001d60:	4a16      	ldr	r2, [pc, #88]	; (8001dbc <pdu_write_single_coil+0xfc>)
 8001d62:	2103      	movs	r1, #3
 8001d64:	54d1      	strb	r1, [r2, r3]
 8001d66:	687b      	ldr	r3, [r7, #4]
 8001d68:	e022      	b.n	8001db0 <pdu_write_single_coil+0xf0>
 8001d6a:	687b      	ldr	r3, [r7, #4]
 8001d6c:	1c5a      	adds	r2, r3, #1
 8001d6e:	607a      	str	r2, [r7, #4]
 8001d70:	4a12      	ldr	r2, [pc, #72]	; (8001dbc <pdu_write_single_coil+0xfc>)
 8001d72:	7bf9      	ldrb	r1, [r7, #15]
 8001d74:	54d1      	strb	r1, [r2, r3]
 8001d76:	687b      	ldr	r3, [r7, #4]
 8001d78:	1c5a      	adds	r2, r3, #1
 8001d7a:	607a      	str	r2, [r7, #4]
 8001d7c:	4a0e      	ldr	r2, [pc, #56]	; (8001db8 <pdu_write_single_coil+0xf8>)
 8001d7e:	7891      	ldrb	r1, [r2, #2]
 8001d80:	4a0e      	ldr	r2, [pc, #56]	; (8001dbc <pdu_write_single_coil+0xfc>)
 8001d82:	54d1      	strb	r1, [r2, r3]
 8001d84:	687b      	ldr	r3, [r7, #4]
 8001d86:	1c5a      	adds	r2, r3, #1
 8001d88:	607a      	str	r2, [r7, #4]
 8001d8a:	4a0b      	ldr	r2, [pc, #44]	; (8001db8 <pdu_write_single_coil+0xf8>)
 8001d8c:	78d1      	ldrb	r1, [r2, #3]
 8001d8e:	4a0b      	ldr	r2, [pc, #44]	; (8001dbc <pdu_write_single_coil+0xfc>)
 8001d90:	54d1      	strb	r1, [r2, r3]
 8001d92:	687b      	ldr	r3, [r7, #4]
 8001d94:	1c5a      	adds	r2, r3, #1
 8001d96:	607a      	str	r2, [r7, #4]
 8001d98:	4a07      	ldr	r2, [pc, #28]	; (8001db8 <pdu_write_single_coil+0xf8>)
 8001d9a:	7911      	ldrb	r1, [r2, #4]
 8001d9c:	4a07      	ldr	r2, [pc, #28]	; (8001dbc <pdu_write_single_coil+0xfc>)
 8001d9e:	54d1      	strb	r1, [r2, r3]
 8001da0:	687b      	ldr	r3, [r7, #4]
 8001da2:	1c5a      	adds	r2, r3, #1
 8001da4:	607a      	str	r2, [r7, #4]
 8001da6:	4a04      	ldr	r2, [pc, #16]	; (8001db8 <pdu_write_single_coil+0xf8>)
 8001da8:	7951      	ldrb	r1, [r2, #5]
 8001daa:	4a04      	ldr	r2, [pc, #16]	; (8001dbc <pdu_write_single_coil+0xfc>)
 8001dac:	54d1      	strb	r1, [r2, r3]
 8001dae:	687b      	ldr	r3, [r7, #4]
 8001db0:	4618      	mov	r0, r3
 8001db2:	3710      	adds	r7, #16
 8001db4:	46bd      	mov	sp, r7
 8001db6:	bd80      	pop	{r7, pc}
 8001db8:	20000a78 	.word	0x20000a78
 8001dbc:	20000b80 	.word	0x20000b80

08001dc0 <pdu_write_multiply_coils>:
 8001dc0:	b580      	push	{r7, lr}
 8001dc2:	b086      	sub	sp, #24
 8001dc4:	af00      	add	r7, sp, #0
 8001dc6:	4b43      	ldr	r3, [pc, #268]	; (8001ed4 <pdu_write_multiply_coils+0x114>)
 8001dc8:	785b      	ldrb	r3, [r3, #1]
 8001dca:	72bb      	strb	r3, [r7, #10]
 8001dcc:	4b41      	ldr	r3, [pc, #260]	; (8001ed4 <pdu_write_multiply_coils+0x114>)
 8001dce:	789b      	ldrb	r3, [r3, #2]
 8001dd0:	021b      	lsls	r3, r3, #8
 8001dd2:	b29a      	uxth	r2, r3
 8001dd4:	4b3f      	ldr	r3, [pc, #252]	; (8001ed4 <pdu_write_multiply_coils+0x114>)
 8001dd6:	78db      	ldrb	r3, [r3, #3]
 8001dd8:	4313      	orrs	r3, r2
 8001dda:	b29b      	uxth	r3, r3
 8001ddc:	82fb      	strh	r3, [r7, #22]
 8001dde:	4b3d      	ldr	r3, [pc, #244]	; (8001ed4 <pdu_write_multiply_coils+0x114>)
 8001de0:	791b      	ldrb	r3, [r3, #4]
 8001de2:	021b      	lsls	r3, r3, #8
 8001de4:	b29a      	uxth	r2, r3
 8001de6:	4b3b      	ldr	r3, [pc, #236]	; (8001ed4 <pdu_write_multiply_coils+0x114>)
 8001de8:	795b      	ldrb	r3, [r3, #5]
 8001dea:	4313      	orrs	r3, r2
 8001dec:	b29b      	uxth	r3, r3
 8001dee:	813b      	strh	r3, [r7, #8]
 8001df0:	4b38      	ldr	r3, [pc, #224]	; (8001ed4 <pdu_write_multiply_coils+0x114>)
 8001df2:	799b      	ldrb	r3, [r3, #6]
 8001df4:	71fb      	strb	r3, [r7, #7]
 8001df6:	2301      	movs	r3, #1
 8001df8:	603b      	str	r3, [r7, #0]
 8001dfa:	8afb      	ldrh	r3, [r7, #22]
 8001dfc:	2b12      	cmp	r3, #18
 8001dfe:	d904      	bls.n	8001e0a <pdu_write_multiply_coils+0x4a>
 8001e00:	8afa      	ldrh	r2, [r7, #22]
 8001e02:	893b      	ldrh	r3, [r7, #8]
 8001e04:	4413      	add	r3, r2
 8001e06:	2b38      	cmp	r3, #56	; 0x38
 8001e08:	dd10      	ble.n	8001e2c <pdu_write_multiply_coils+0x6c>
 8001e0a:	683b      	ldr	r3, [r7, #0]
 8001e0c:	1c5a      	adds	r2, r3, #1
 8001e0e:	603a      	str	r2, [r7, #0]
 8001e10:	7aba      	ldrb	r2, [r7, #10]
 8001e12:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001e16:	b2d1      	uxtb	r1, r2
 8001e18:	4a2f      	ldr	r2, [pc, #188]	; (8001ed8 <pdu_write_multiply_coils+0x118>)
 8001e1a:	54d1      	strb	r1, [r2, r3]
 8001e1c:	683b      	ldr	r3, [r7, #0]
 8001e1e:	1c5a      	adds	r2, r3, #1
 8001e20:	603a      	str	r2, [r7, #0]
 8001e22:	4a2d      	ldr	r2, [pc, #180]	; (8001ed8 <pdu_write_multiply_coils+0x118>)
 8001e24:	2102      	movs	r1, #2
 8001e26:	54d1      	strb	r1, [r2, r3]
 8001e28:	683b      	ldr	r3, [r7, #0]
 8001e2a:	e04f      	b.n	8001ecc <pdu_write_multiply_coils+0x10c>
 8001e2c:	2300      	movs	r3, #0
 8001e2e:	613b      	str	r3, [r7, #16]
 8001e30:	e025      	b.n	8001e7e <pdu_write_multiply_coils+0xbe>
 8001e32:	693b      	ldr	r3, [r7, #16]
 8001e34:	3307      	adds	r3, #7
 8001e36:	4a27      	ldr	r2, [pc, #156]	; (8001ed4 <pdu_write_multiply_coils+0x114>)
 8001e38:	5cd3      	ldrb	r3, [r2, r3]
 8001e3a:	72fb      	strb	r3, [r7, #11]
 8001e3c:	2300      	movs	r3, #0
 8001e3e:	60fb      	str	r3, [r7, #12]
 8001e40:	e017      	b.n	8001e72 <pdu_write_multiply_coils+0xb2>
 8001e42:	8afb      	ldrh	r3, [r7, #22]
 8001e44:	1c5a      	adds	r2, r3, #1
 8001e46:	82fa      	strh	r2, [r7, #22]
 8001e48:	461a      	mov	r2, r3
 8001e4a:	7afb      	ldrb	r3, [r7, #11]
 8001e4c:	f003 0301 	and.w	r3, r3, #1
 8001e50:	b2db      	uxtb	r3, r3
 8001e52:	4610      	mov	r0, r2
 8001e54:	4619      	mov	r1, r3
 8001e56:	f7ff fef7 	bl	8001c48 <set_coil>
 8001e5a:	8afa      	ldrh	r2, [r7, #22]
 8001e5c:	893b      	ldrh	r3, [r7, #8]
 8001e5e:	3313      	adds	r3, #19
 8001e60:	429a      	cmp	r2, r3
 8001e62:	d100      	bne.n	8001e66 <pdu_write_multiply_coils+0xa6>
 8001e64:	e008      	b.n	8001e78 <pdu_write_multiply_coils+0xb8>
 8001e66:	7afb      	ldrb	r3, [r7, #11]
 8001e68:	085b      	lsrs	r3, r3, #1
 8001e6a:	72fb      	strb	r3, [r7, #11]
 8001e6c:	68fb      	ldr	r3, [r7, #12]
 8001e6e:	3301      	adds	r3, #1
 8001e70:	60fb      	str	r3, [r7, #12]
 8001e72:	68fb      	ldr	r3, [r7, #12]
 8001e74:	2b07      	cmp	r3, #7
 8001e76:	dde4      	ble.n	8001e42 <pdu_write_multiply_coils+0x82>
 8001e78:	693b      	ldr	r3, [r7, #16]
 8001e7a:	3301      	adds	r3, #1
 8001e7c:	613b      	str	r3, [r7, #16]
 8001e7e:	79fa      	ldrb	r2, [r7, #7]
 8001e80:	693b      	ldr	r3, [r7, #16]
 8001e82:	429a      	cmp	r2, r3
 8001e84:	dcd5      	bgt.n	8001e32 <pdu_write_multiply_coils+0x72>
 8001e86:	683b      	ldr	r3, [r7, #0]
 8001e88:	1c5a      	adds	r2, r3, #1
 8001e8a:	603a      	str	r2, [r7, #0]
 8001e8c:	4a12      	ldr	r2, [pc, #72]	; (8001ed8 <pdu_write_multiply_coils+0x118>)
 8001e8e:	7ab9      	ldrb	r1, [r7, #10]
 8001e90:	54d1      	strb	r1, [r2, r3]
 8001e92:	683b      	ldr	r3, [r7, #0]
 8001e94:	1c5a      	adds	r2, r3, #1
 8001e96:	603a      	str	r2, [r7, #0]
 8001e98:	4a0e      	ldr	r2, [pc, #56]	; (8001ed4 <pdu_write_multiply_coils+0x114>)
 8001e9a:	7891      	ldrb	r1, [r2, #2]
 8001e9c:	4a0e      	ldr	r2, [pc, #56]	; (8001ed8 <pdu_write_multiply_coils+0x118>)
 8001e9e:	54d1      	strb	r1, [r2, r3]
 8001ea0:	683b      	ldr	r3, [r7, #0]
 8001ea2:	1c5a      	adds	r2, r3, #1
 8001ea4:	603a      	str	r2, [r7, #0]
 8001ea6:	4a0b      	ldr	r2, [pc, #44]	; (8001ed4 <pdu_write_multiply_coils+0x114>)
 8001ea8:	78d1      	ldrb	r1, [r2, #3]
 8001eaa:	4a0b      	ldr	r2, [pc, #44]	; (8001ed8 <pdu_write_multiply_coils+0x118>)
 8001eac:	54d1      	strb	r1, [r2, r3]
 8001eae:	683b      	ldr	r3, [r7, #0]
 8001eb0:	1c5a      	adds	r2, r3, #1
 8001eb2:	603a      	str	r2, [r7, #0]
 8001eb4:	4a07      	ldr	r2, [pc, #28]	; (8001ed4 <pdu_write_multiply_coils+0x114>)
 8001eb6:	7911      	ldrb	r1, [r2, #4]
 8001eb8:	4a07      	ldr	r2, [pc, #28]	; (8001ed8 <pdu_write_multiply_coils+0x118>)
 8001eba:	54d1      	strb	r1, [r2, r3]
 8001ebc:	683b      	ldr	r3, [r7, #0]
 8001ebe:	1c5a      	adds	r2, r3, #1
 8001ec0:	603a      	str	r2, [r7, #0]
 8001ec2:	4a04      	ldr	r2, [pc, #16]	; (8001ed4 <pdu_write_multiply_coils+0x114>)
 8001ec4:	7951      	ldrb	r1, [r2, #5]
 8001ec6:	4a04      	ldr	r2, [pc, #16]	; (8001ed8 <pdu_write_multiply_coils+0x118>)
 8001ec8:	54d1      	strb	r1, [r2, r3]
 8001eca:	683b      	ldr	r3, [r7, #0]
 8001ecc:	4618      	mov	r0, r3
 8001ece:	3718      	adds	r7, #24
 8001ed0:	46bd      	mov	sp, r7
 8001ed2:	bd80      	pop	{r7, pc}
 8001ed4:	20000a78 	.word	0x20000a78
 8001ed8:	20000b80 	.word	0x20000b80

08001edc <pdu_read_coils>:
 8001edc:	b580      	push	{r7, lr}
 8001ede:	b084      	sub	sp, #16
 8001ee0:	af00      	add	r7, sp, #0
 8001ee2:	4b28      	ldr	r3, [pc, #160]	; (8001f84 <pdu_read_coils+0xa8>)
 8001ee4:	785b      	ldrb	r3, [r3, #1]
 8001ee6:	73fb      	strb	r3, [r7, #15]
 8001ee8:	4b26      	ldr	r3, [pc, #152]	; (8001f84 <pdu_read_coils+0xa8>)
 8001eea:	789b      	ldrb	r3, [r3, #2]
 8001eec:	021b      	lsls	r3, r3, #8
 8001eee:	b29a      	uxth	r2, r3
 8001ef0:	4b24      	ldr	r3, [pc, #144]	; (8001f84 <pdu_read_coils+0xa8>)
 8001ef2:	78db      	ldrb	r3, [r3, #3]
 8001ef4:	4313      	orrs	r3, r2
 8001ef6:	b29b      	uxth	r3, r3
 8001ef8:	81bb      	strh	r3, [r7, #12]
 8001efa:	4b22      	ldr	r3, [pc, #136]	; (8001f84 <pdu_read_coils+0xa8>)
 8001efc:	791b      	ldrb	r3, [r3, #4]
 8001efe:	021b      	lsls	r3, r3, #8
 8001f00:	b29a      	uxth	r2, r3
 8001f02:	4b20      	ldr	r3, [pc, #128]	; (8001f84 <pdu_read_coils+0xa8>)
 8001f04:	795b      	ldrb	r3, [r3, #5]
 8001f06:	4313      	orrs	r3, r2
 8001f08:	b29b      	uxth	r3, r3
 8001f0a:	817b      	strh	r3, [r7, #10]
 8001f0c:	2301      	movs	r3, #1
 8001f0e:	607b      	str	r3, [r7, #4]
 8001f10:	89bb      	ldrh	r3, [r7, #12]
 8001f12:	2b12      	cmp	r3, #18
 8001f14:	d904      	bls.n	8001f20 <pdu_read_coils+0x44>
 8001f16:	89ba      	ldrh	r2, [r7, #12]
 8001f18:	897b      	ldrh	r3, [r7, #10]
 8001f1a:	4413      	add	r3, r2
 8001f1c:	2b38      	cmp	r3, #56	; 0x38
 8001f1e:	dd10      	ble.n	8001f42 <pdu_read_coils+0x66>
 8001f20:	687b      	ldr	r3, [r7, #4]
 8001f22:	1c5a      	adds	r2, r3, #1
 8001f24:	607a      	str	r2, [r7, #4]
 8001f26:	7bfa      	ldrb	r2, [r7, #15]
 8001f28:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001f2c:	b2d1      	uxtb	r1, r2
 8001f2e:	4a16      	ldr	r2, [pc, #88]	; (8001f88 <pdu_read_coils+0xac>)
 8001f30:	54d1      	strb	r1, [r2, r3]
 8001f32:	687b      	ldr	r3, [r7, #4]
 8001f34:	1c5a      	adds	r2, r3, #1
 8001f36:	607a      	str	r2, [r7, #4]
 8001f38:	4a13      	ldr	r2, [pc, #76]	; (8001f88 <pdu_read_coils+0xac>)
 8001f3a:	2102      	movs	r1, #2
 8001f3c:	54d1      	strb	r1, [r2, r3]
 8001f3e:	687b      	ldr	r3, [r7, #4]
 8001f40:	e01b      	b.n	8001f7a <pdu_read_coils+0x9e>
 8001f42:	687b      	ldr	r3, [r7, #4]
 8001f44:	1c5a      	adds	r2, r3, #1
 8001f46:	607a      	str	r2, [r7, #4]
 8001f48:	4a0f      	ldr	r2, [pc, #60]	; (8001f88 <pdu_read_coils+0xac>)
 8001f4a:	7bf9      	ldrb	r1, [r7, #15]
 8001f4c:	54d1      	strb	r1, [r2, r3]
 8001f4e:	687b      	ldr	r3, [r7, #4]
 8001f50:	3301      	adds	r3, #1
 8001f52:	607b      	str	r3, [r7, #4]
 8001f54:	687a      	ldr	r2, [r7, #4]
 8001f56:	4b0c      	ldr	r3, [pc, #48]	; (8001f88 <pdu_read_coils+0xac>)
 8001f58:	18d1      	adds	r1, r2, r3
 8001f5a:	89bb      	ldrh	r3, [r7, #12]
 8001f5c:	f1a3 0213 	sub.w	r2, r3, #19
 8001f60:	897b      	ldrh	r3, [r7, #10]
 8001f62:	4608      	mov	r0, r1
 8001f64:	4909      	ldr	r1, [pc, #36]	; (8001f8c <pdu_read_coils+0xb0>)
 8001f66:	f7ff fe19 	bl	8001b9c <pack_bits_to_bytes>
 8001f6a:	6038      	str	r0, [r7, #0]
 8001f6c:	683b      	ldr	r3, [r7, #0]
 8001f6e:	b2da      	uxtb	r2, r3
 8001f70:	4b05      	ldr	r3, [pc, #20]	; (8001f88 <pdu_read_coils+0xac>)
 8001f72:	709a      	strb	r2, [r3, #2]
 8001f74:	683a      	ldr	r2, [r7, #0]
 8001f76:	687b      	ldr	r3, [r7, #4]
 8001f78:	4413      	add	r3, r2
 8001f7a:	4618      	mov	r0, r3
 8001f7c:	3710      	adds	r7, #16
 8001f7e:	46bd      	mov	sp, r7
 8001f80:	bd80      	pop	{r7, pc}
 8001f82:	bf00      	nop
 8001f84:	20000a78 	.word	0x20000a78
 8001f88:	20000b80 	.word	0x20000b80
 8001f8c:	20000008 	.word	0x20000008

08001f90 <pdu_read_discrete_inputs>:
 8001f90:	b580      	push	{r7, lr}
 8001f92:	b084      	sub	sp, #16
 8001f94:	af00      	add	r7, sp, #0
 8001f96:	4b28      	ldr	r3, [pc, #160]	; (8002038 <pdu_read_discrete_inputs+0xa8>)
 8001f98:	785b      	ldrb	r3, [r3, #1]
 8001f9a:	73fb      	strb	r3, [r7, #15]
 8001f9c:	4b26      	ldr	r3, [pc, #152]	; (8002038 <pdu_read_discrete_inputs+0xa8>)
 8001f9e:	789b      	ldrb	r3, [r3, #2]
 8001fa0:	021b      	lsls	r3, r3, #8
 8001fa2:	b29a      	uxth	r2, r3
 8001fa4:	4b24      	ldr	r3, [pc, #144]	; (8002038 <pdu_read_discrete_inputs+0xa8>)
 8001fa6:	78db      	ldrb	r3, [r3, #3]
 8001fa8:	4313      	orrs	r3, r2
 8001faa:	b29b      	uxth	r3, r3
 8001fac:	81bb      	strh	r3, [r7, #12]
 8001fae:	4b22      	ldr	r3, [pc, #136]	; (8002038 <pdu_read_discrete_inputs+0xa8>)
 8001fb0:	791b      	ldrb	r3, [r3, #4]
 8001fb2:	021b      	lsls	r3, r3, #8
 8001fb4:	b29a      	uxth	r2, r3
 8001fb6:	4b20      	ldr	r3, [pc, #128]	; (8002038 <pdu_read_discrete_inputs+0xa8>)
 8001fb8:	795b      	ldrb	r3, [r3, #5]
 8001fba:	4313      	orrs	r3, r2
 8001fbc:	b29b      	uxth	r3, r3
 8001fbe:	817b      	strh	r3, [r7, #10]
 8001fc0:	2301      	movs	r3, #1
 8001fc2:	607b      	str	r3, [r7, #4]
 8001fc4:	89bb      	ldrh	r3, [r7, #12]
 8001fc6:	2bc3      	cmp	r3, #195	; 0xc3
 8001fc8:	d904      	bls.n	8001fd4 <pdu_read_discrete_inputs+0x44>
 8001fca:	89ba      	ldrh	r2, [r7, #12]
 8001fcc:	897b      	ldrh	r3, [r7, #10]
 8001fce:	4413      	add	r3, r2
 8001fd0:	2bda      	cmp	r3, #218	; 0xda
 8001fd2:	dd10      	ble.n	8001ff6 <pdu_read_discrete_inputs+0x66>
 8001fd4:	687b      	ldr	r3, [r7, #4]
 8001fd6:	1c5a      	adds	r2, r3, #1
 8001fd8:	607a      	str	r2, [r7, #4]
 8001fda:	7bfa      	ldrb	r2, [r7, #15]
 8001fdc:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001fe0:	b2d1      	uxtb	r1, r2
 8001fe2:	4a16      	ldr	r2, [pc, #88]	; (800203c <pdu_read_discrete_inputs+0xac>)
 8001fe4:	54d1      	strb	r1, [r2, r3]
 8001fe6:	687b      	ldr	r3, [r7, #4]
 8001fe8:	1c5a      	adds	r2, r3, #1
 8001fea:	607a      	str	r2, [r7, #4]
 8001fec:	4a13      	ldr	r2, [pc, #76]	; (800203c <pdu_read_discrete_inputs+0xac>)
 8001fee:	2102      	movs	r1, #2
 8001ff0:	54d1      	strb	r1, [r2, r3]
 8001ff2:	687b      	ldr	r3, [r7, #4]
 8001ff4:	e01b      	b.n	800202e <pdu_read_discrete_inputs+0x9e>
 8001ff6:	687b      	ldr	r3, [r7, #4]
 8001ff8:	1c5a      	adds	r2, r3, #1
 8001ffa:	607a      	str	r2, [r7, #4]
 8001ffc:	4a0f      	ldr	r2, [pc, #60]	; (800203c <pdu_read_discrete_inputs+0xac>)
 8001ffe:	7bf9      	ldrb	r1, [r7, #15]
 8002000:	54d1      	strb	r1, [r2, r3]
 8002002:	687b      	ldr	r3, [r7, #4]
 8002004:	3301      	adds	r3, #1
 8002006:	607b      	str	r3, [r7, #4]
 8002008:	687a      	ldr	r2, [r7, #4]
 800200a:	4b0c      	ldr	r3, [pc, #48]	; (800203c <pdu_read_discrete_inputs+0xac>)
 800200c:	18d1      	adds	r1, r2, r3
 800200e:	89bb      	ldrh	r3, [r7, #12]
 8002010:	f1a3 02c4 	sub.w	r2, r3, #196	; 0xc4
 8002014:	897b      	ldrh	r3, [r7, #10]
 8002016:	4608      	mov	r0, r1
 8002018:	4909      	ldr	r1, [pc, #36]	; (8002040 <pdu_read_discrete_inputs+0xb0>)
 800201a:	f7ff fdbf 	bl	8001b9c <pack_bits_to_bytes>
 800201e:	6038      	str	r0, [r7, #0]
 8002020:	683b      	ldr	r3, [r7, #0]
 8002022:	b2da      	uxtb	r2, r3
 8002024:	4b05      	ldr	r3, [pc, #20]	; (800203c <pdu_read_discrete_inputs+0xac>)
 8002026:	709a      	strb	r2, [r3, #2]
 8002028:	683a      	ldr	r2, [r7, #0]
 800202a:	687b      	ldr	r3, [r7, #4]
 800202c:	4413      	add	r3, r2
 800202e:	4618      	mov	r0, r3
 8002030:	3710      	adds	r7, #16
 8002032:	46bd      	mov	sp, r7
 8002034:	bd80      	pop	{r7, pc}
 8002036:	bf00      	nop
 8002038:	20000a78 	.word	0x20000a78
 800203c:	20000b80 	.word	0x20000b80
 8002040:	20000010 	.word	0x20000010

08002044 <pdu_report_server_id>:
 8002044:	b480      	push	{r7}
 8002046:	b085      	sub	sp, #20
 8002048:	af00      	add	r7, sp, #0
 800204a:	2316      	movs	r3, #22
 800204c:	607b      	str	r3, [r7, #4]
 800204e:	4b1d      	ldr	r3, [pc, #116]	; (80020c4 <pdu_report_server_id+0x80>)
 8002050:	785b      	ldrb	r3, [r3, #1]
 8002052:	70fb      	strb	r3, [r7, #3]
 8002054:	2301      	movs	r3, #1
 8002056:	60fb      	str	r3, [r7, #12]
 8002058:	68fb      	ldr	r3, [r7, #12]
 800205a:	1c5a      	adds	r2, r3, #1
 800205c:	60fa      	str	r2, [r7, #12]
 800205e:	4a1a      	ldr	r2, [pc, #104]	; (80020c8 <pdu_report_server_id+0x84>)
 8002060:	78f9      	ldrb	r1, [r7, #3]
 8002062:	54d1      	strb	r1, [r2, r3]
 8002064:	68fb      	ldr	r3, [r7, #12]
 8002066:	1c5a      	adds	r2, r3, #1
 8002068:	60fa      	str	r2, [r7, #12]
 800206a:	687a      	ldr	r2, [r7, #4]
 800206c:	b2d2      	uxtb	r2, r2
 800206e:	3202      	adds	r2, #2
 8002070:	b2d1      	uxtb	r1, r2
 8002072:	4a15      	ldr	r2, [pc, #84]	; (80020c8 <pdu_report_server_id+0x84>)
 8002074:	54d1      	strb	r1, [r2, r3]
 8002076:	68fb      	ldr	r3, [r7, #12]
 8002078:	1c5a      	adds	r2, r3, #1
 800207a:	60fa      	str	r2, [r7, #12]
 800207c:	4a12      	ldr	r2, [pc, #72]	; (80020c8 <pdu_report_server_id+0x84>)
 800207e:	2112      	movs	r1, #18
 8002080:	54d1      	strb	r1, [r2, r3]
 8002082:	68fb      	ldr	r3, [r7, #12]
 8002084:	1c5a      	adds	r2, r3, #1
 8002086:	60fa      	str	r2, [r7, #12]
 8002088:	4a0f      	ldr	r2, [pc, #60]	; (80020c8 <pdu_report_server_id+0x84>)
 800208a:	21ff      	movs	r1, #255	; 0xff
 800208c:	54d1      	strb	r1, [r2, r3]
 800208e:	2300      	movs	r3, #0
 8002090:	60bb      	str	r3, [r7, #8]
 8002092:	e00b      	b.n	80020ac <pdu_report_server_id+0x68>
 8002094:	68fb      	ldr	r3, [r7, #12]
 8002096:	1c5a      	adds	r2, r3, #1
 8002098:	60fa      	str	r2, [r7, #12]
 800209a:	490c      	ldr	r1, [pc, #48]	; (80020cc <pdu_report_server_id+0x88>)
 800209c:	68ba      	ldr	r2, [r7, #8]
 800209e:	440a      	add	r2, r1
 80020a0:	7811      	ldrb	r1, [r2, #0]
 80020a2:	4a09      	ldr	r2, [pc, #36]	; (80020c8 <pdu_report_server_id+0x84>)
 80020a4:	54d1      	strb	r1, [r2, r3]
 80020a6:	68bb      	ldr	r3, [r7, #8]
 80020a8:	3301      	adds	r3, #1
 80020aa:	60bb      	str	r3, [r7, #8]
 80020ac:	68ba      	ldr	r2, [r7, #8]
 80020ae:	687b      	ldr	r3, [r7, #4]
 80020b0:	429a      	cmp	r2, r3
 80020b2:	dbef      	blt.n	8002094 <pdu_report_server_id+0x50>
 80020b4:	68fb      	ldr	r3, [r7, #12]
 80020b6:	4618      	mov	r0, r3
 80020b8:	3714      	adds	r7, #20
 80020ba:	46bd      	mov	sp, r7
 80020bc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80020c0:	4770      	bx	lr
 80020c2:	bf00      	nop
 80020c4:	20000a78 	.word	0x20000a78
 80020c8:	20000b80 	.word	0x20000b80
 80020cc:	08003898 	.word	0x08003898

080020d0 <pdu_diagnostics>:
 80020d0:	b480      	push	{r7}
 80020d2:	b085      	sub	sp, #20
 80020d4:	af00      	add	r7, sp, #0
 80020d6:	4b1e      	ldr	r3, [pc, #120]	; (8002150 <pdu_diagnostics+0x80>)
 80020d8:	785b      	ldrb	r3, [r3, #1]
 80020da:	71fb      	strb	r3, [r7, #7]
 80020dc:	4b1c      	ldr	r3, [pc, #112]	; (8002150 <pdu_diagnostics+0x80>)
 80020de:	789b      	ldrb	r3, [r3, #2]
 80020e0:	021b      	lsls	r3, r3, #8
 80020e2:	b29a      	uxth	r2, r3
 80020e4:	4b1a      	ldr	r3, [pc, #104]	; (8002150 <pdu_diagnostics+0x80>)
 80020e6:	78db      	ldrb	r3, [r3, #3]
 80020e8:	4313      	orrs	r3, r2
 80020ea:	b29b      	uxth	r3, r3
 80020ec:	80bb      	strh	r3, [r7, #4]
 80020ee:	2301      	movs	r3, #1
 80020f0:	60bb      	str	r3, [r7, #8]
 80020f2:	88bb      	ldrh	r3, [r7, #4]
 80020f4:	2b00      	cmp	r3, #0
 80020f6:	d114      	bne.n	8002122 <pdu_diagnostics+0x52>
 80020f8:	2301      	movs	r3, #1
 80020fa:	60fb      	str	r3, [r7, #12]
 80020fc:	e00b      	b.n	8002116 <pdu_diagnostics+0x46>
 80020fe:	68bb      	ldr	r3, [r7, #8]
 8002100:	1c5a      	adds	r2, r3, #1
 8002102:	60ba      	str	r2, [r7, #8]
 8002104:	4912      	ldr	r1, [pc, #72]	; (8002150 <pdu_diagnostics+0x80>)
 8002106:	68fa      	ldr	r2, [r7, #12]
 8002108:	440a      	add	r2, r1
 800210a:	7811      	ldrb	r1, [r2, #0]
 800210c:	4a11      	ldr	r2, [pc, #68]	; (8002154 <pdu_diagnostics+0x84>)
 800210e:	54d1      	strb	r1, [r2, r3]
 8002110:	68fb      	ldr	r3, [r7, #12]
 8002112:	3301      	adds	r3, #1
 8002114:	60fb      	str	r3, [r7, #12]
 8002116:	68fa      	ldr	r2, [r7, #12]
 8002118:	4b0f      	ldr	r3, [pc, #60]	; (8002158 <pdu_diagnostics+0x88>)
 800211a:	681b      	ldr	r3, [r3, #0]
 800211c:	429a      	cmp	r2, r3
 800211e:	d3ee      	bcc.n	80020fe <pdu_diagnostics+0x2e>
 8002120:	e00e      	b.n	8002140 <pdu_diagnostics+0x70>
 8002122:	68bb      	ldr	r3, [r7, #8]
 8002124:	1c5a      	adds	r2, r3, #1
 8002126:	60ba      	str	r2, [r7, #8]
 8002128:	79fa      	ldrb	r2, [r7, #7]
 800212a:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800212e:	b2d1      	uxtb	r1, r2
 8002130:	4a08      	ldr	r2, [pc, #32]	; (8002154 <pdu_diagnostics+0x84>)
 8002132:	54d1      	strb	r1, [r2, r3]
 8002134:	68bb      	ldr	r3, [r7, #8]
 8002136:	1c5a      	adds	r2, r3, #1
 8002138:	60ba      	str	r2, [r7, #8]
 800213a:	4a06      	ldr	r2, [pc, #24]	; (8002154 <pdu_diagnostics+0x84>)
 800213c:	2101      	movs	r1, #1
 800213e:	54d1      	strb	r1, [r2, r3]
 8002140:	68bb      	ldr	r3, [r7, #8]
 8002142:	4618      	mov	r0, r3
 8002144:	3714      	adds	r7, #20
 8002146:	46bd      	mov	sp, r7
 8002148:	f85d 7b04 	ldr.w	r7, [sp], #4
 800214c:	4770      	bx	lr
 800214e:	bf00      	nop
 8002150:	20000a78 	.word	0x20000a78
 8002154:	20000b80 	.word	0x20000b80
 8002158:	20000b7c 	.word	0x20000b7c

0800215c <pdu_read_input_registers>:
 800215c:	b480      	push	{r7}
 800215e:	b085      	sub	sp, #20
 8002160:	af00      	add	r7, sp, #0
 8002162:	4b35      	ldr	r3, [pc, #212]	; (8002238 <pdu_read_input_registers+0xdc>)
 8002164:	785b      	ldrb	r3, [r3, #1]
 8002166:	71fb      	strb	r3, [r7, #7]
 8002168:	4b33      	ldr	r3, [pc, #204]	; (8002238 <pdu_read_input_registers+0xdc>)
 800216a:	789b      	ldrb	r3, [r3, #2]
 800216c:	021b      	lsls	r3, r3, #8
 800216e:	b29a      	uxth	r2, r3
 8002170:	4b31      	ldr	r3, [pc, #196]	; (8002238 <pdu_read_input_registers+0xdc>)
 8002172:	78db      	ldrb	r3, [r3, #3]
 8002174:	4313      	orrs	r3, r2
 8002176:	b29b      	uxth	r3, r3
 8002178:	80bb      	strh	r3, [r7, #4]
 800217a:	4b2f      	ldr	r3, [pc, #188]	; (8002238 <pdu_read_input_registers+0xdc>)
 800217c:	791b      	ldrb	r3, [r3, #4]
 800217e:	021b      	lsls	r3, r3, #8
 8002180:	b29a      	uxth	r2, r3
 8002182:	4b2d      	ldr	r3, [pc, #180]	; (8002238 <pdu_read_input_registers+0xdc>)
 8002184:	795b      	ldrb	r3, [r3, #5]
 8002186:	4313      	orrs	r3, r2
 8002188:	b29b      	uxth	r3, r3
 800218a:	807b      	strh	r3, [r7, #2]
 800218c:	88bb      	ldrh	r3, [r7, #4]
 800218e:	2b07      	cmp	r3, #7
 8002190:	d904      	bls.n	800219c <pdu_read_input_registers+0x40>
 8002192:	88ba      	ldrh	r2, [r7, #4]
 8002194:	887b      	ldrh	r3, [r7, #2]
 8002196:	4413      	add	r3, r2
 8002198:	2b09      	cmp	r3, #9
 800219a:	dd12      	ble.n	80021c2 <pdu_read_input_registers+0x66>
 800219c:	2301      	movs	r3, #1
 800219e:	60bb      	str	r3, [r7, #8]
 80021a0:	68bb      	ldr	r3, [r7, #8]
 80021a2:	1c5a      	adds	r2, r3, #1
 80021a4:	60ba      	str	r2, [r7, #8]
 80021a6:	79fa      	ldrb	r2, [r7, #7]
 80021a8:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80021ac:	b2d1      	uxtb	r1, r2
 80021ae:	4a23      	ldr	r2, [pc, #140]	; (800223c <pdu_read_input_registers+0xe0>)
 80021b0:	54d1      	strb	r1, [r2, r3]
 80021b2:	68bb      	ldr	r3, [r7, #8]
 80021b4:	1c5a      	adds	r2, r3, #1
 80021b6:	60ba      	str	r2, [r7, #8]
 80021b8:	4a20      	ldr	r2, [pc, #128]	; (800223c <pdu_read_input_registers+0xe0>)
 80021ba:	2102      	movs	r1, #2
 80021bc:	54d1      	strb	r1, [r2, r3]
 80021be:	68bb      	ldr	r3, [r7, #8]
 80021c0:	e034      	b.n	800222c <pdu_read_input_registers+0xd0>
 80021c2:	2301      	movs	r3, #1
 80021c4:	60bb      	str	r3, [r7, #8]
 80021c6:	68bb      	ldr	r3, [r7, #8]
 80021c8:	1c5a      	adds	r2, r3, #1
 80021ca:	60ba      	str	r2, [r7, #8]
 80021cc:	4a1b      	ldr	r2, [pc, #108]	; (800223c <pdu_read_input_registers+0xe0>)
 80021ce:	79f9      	ldrb	r1, [r7, #7]
 80021d0:	54d1      	strb	r1, [r2, r3]
 80021d2:	68bb      	ldr	r3, [r7, #8]
 80021d4:	1c5a      	adds	r2, r3, #1
 80021d6:	60ba      	str	r2, [r7, #8]
 80021d8:	887a      	ldrh	r2, [r7, #2]
 80021da:	b2d2      	uxtb	r2, r2
 80021dc:	0052      	lsls	r2, r2, #1
 80021de:	b2d1      	uxtb	r1, r2
 80021e0:	4a16      	ldr	r2, [pc, #88]	; (800223c <pdu_read_input_registers+0xe0>)
 80021e2:	54d1      	strb	r1, [r2, r3]
 80021e4:	2300      	movs	r3, #0
 80021e6:	60fb      	str	r3, [r7, #12]
 80021e8:	e01b      	b.n	8002222 <pdu_read_input_registers+0xc6>
 80021ea:	88bb      	ldrh	r3, [r7, #4]
 80021ec:	f1a3 0208 	sub.w	r2, r3, #8
 80021f0:	68fb      	ldr	r3, [r7, #12]
 80021f2:	441a      	add	r2, r3
 80021f4:	4b12      	ldr	r3, [pc, #72]	; (8002240 <pdu_read_input_registers+0xe4>)
 80021f6:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
 80021fa:	803b      	strh	r3, [r7, #0]
 80021fc:	68bb      	ldr	r3, [r7, #8]
 80021fe:	1c5a      	adds	r2, r3, #1
 8002200:	60ba      	str	r2, [r7, #8]
 8002202:	883a      	ldrh	r2, [r7, #0]
 8002204:	0a12      	lsrs	r2, r2, #8
 8002206:	b292      	uxth	r2, r2
 8002208:	b2d1      	uxtb	r1, r2
 800220a:	4a0c      	ldr	r2, [pc, #48]	; (800223c <pdu_read_input_registers+0xe0>)
 800220c:	54d1      	strb	r1, [r2, r3]
 800220e:	68bb      	ldr	r3, [r7, #8]
 8002210:	1c5a      	adds	r2, r3, #1
 8002212:	60ba      	str	r2, [r7, #8]
 8002214:	883a      	ldrh	r2, [r7, #0]
 8002216:	b2d1      	uxtb	r1, r2
 8002218:	4a08      	ldr	r2, [pc, #32]	; (800223c <pdu_read_input_registers+0xe0>)
 800221a:	54d1      	strb	r1, [r2, r3]
 800221c:	68fb      	ldr	r3, [r7, #12]
 800221e:	3301      	adds	r3, #1
 8002220:	60fb      	str	r3, [r7, #12]
 8002222:	887a      	ldrh	r2, [r7, #2]
 8002224:	68fb      	ldr	r3, [r7, #12]
 8002226:	429a      	cmp	r2, r3
 8002228:	dcdf      	bgt.n	80021ea <pdu_read_input_registers+0x8e>
 800222a:	68bb      	ldr	r3, [r7, #8]
 800222c:	4618      	mov	r0, r3
 800222e:	3714      	adds	r7, #20
 8002230:	46bd      	mov	sp, r7
 8002232:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002236:	4770      	bx	lr
 8002238:	20000a78 	.word	0x20000a78
 800223c:	20000b80 	.word	0x20000b80
 8002240:	20000014 	.word	0x20000014

08002244 <pdu_write_single_register>:
 8002244:	b480      	push	{r7}
 8002246:	b085      	sub	sp, #20
 8002248:	af00      	add	r7, sp, #0
 800224a:	4b2f      	ldr	r3, [pc, #188]	; (8002308 <pdu_write_single_register+0xc4>)
 800224c:	785b      	ldrb	r3, [r3, #1]
 800224e:	72fb      	strb	r3, [r7, #11]
 8002250:	4b2d      	ldr	r3, [pc, #180]	; (8002308 <pdu_write_single_register+0xc4>)
 8002252:	789b      	ldrb	r3, [r3, #2]
 8002254:	021b      	lsls	r3, r3, #8
 8002256:	b29a      	uxth	r2, r3
 8002258:	4b2b      	ldr	r3, [pc, #172]	; (8002308 <pdu_write_single_register+0xc4>)
 800225a:	78db      	ldrb	r3, [r3, #3]
 800225c:	4313      	orrs	r3, r2
 800225e:	b29b      	uxth	r3, r3
 8002260:	813b      	strh	r3, [r7, #8]
 8002262:	4b29      	ldr	r3, [pc, #164]	; (8002308 <pdu_write_single_register+0xc4>)
 8002264:	791b      	ldrb	r3, [r3, #4]
 8002266:	021b      	lsls	r3, r3, #8
 8002268:	b29a      	uxth	r2, r3
 800226a:	4b27      	ldr	r3, [pc, #156]	; (8002308 <pdu_write_single_register+0xc4>)
 800226c:	795b      	ldrb	r3, [r3, #5]
 800226e:	4313      	orrs	r3, r2
 8002270:	b29b      	uxth	r3, r3
 8002272:	80fb      	strh	r3, [r7, #6]
 8002274:	893b      	ldrh	r3, [r7, #8]
 8002276:	2b6a      	cmp	r3, #106	; 0x6a
 8002278:	d902      	bls.n	8002280 <pdu_write_single_register+0x3c>
 800227a:	893b      	ldrh	r3, [r7, #8]
 800227c:	2b72      	cmp	r3, #114	; 0x72
 800227e:	d911      	bls.n	80022a4 <pdu_write_single_register+0x60>
 8002280:	2301      	movs	r3, #1
 8002282:	60fb      	str	r3, [r7, #12]
 8002284:	68fb      	ldr	r3, [r7, #12]
 8002286:	1c5a      	adds	r2, r3, #1
 8002288:	60fa      	str	r2, [r7, #12]
 800228a:	7afa      	ldrb	r2, [r7, #11]
 800228c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002290:	b2d1      	uxtb	r1, r2
 8002292:	4a1e      	ldr	r2, [pc, #120]	; (800230c <pdu_write_single_register+0xc8>)
 8002294:	54d1      	strb	r1, [r2, r3]
 8002296:	68fb      	ldr	r3, [r7, #12]
 8002298:	1c5a      	adds	r2, r3, #1
 800229a:	60fa      	str	r2, [r7, #12]
 800229c:	4a1b      	ldr	r2, [pc, #108]	; (800230c <pdu_write_single_register+0xc8>)
 800229e:	2102      	movs	r1, #2
 80022a0:	54d1      	strb	r1, [r2, r3]
 80022a2:	e02a      	b.n	80022fa <pdu_write_single_register+0xb6>
 80022a4:	893b      	ldrh	r3, [r7, #8]
 80022a6:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 80022aa:	4b19      	ldr	r3, [pc, #100]	; (8002310 <pdu_write_single_register+0xcc>)
 80022ac:	88f9      	ldrh	r1, [r7, #6]
 80022ae:	f823 1012 	strh.w	r1, [r3, r2, lsl #1]
 80022b2:	2301      	movs	r3, #1
 80022b4:	60fb      	str	r3, [r7, #12]
 80022b6:	68fb      	ldr	r3, [r7, #12]
 80022b8:	1c5a      	adds	r2, r3, #1
 80022ba:	60fa      	str	r2, [r7, #12]
 80022bc:	4a13      	ldr	r2, [pc, #76]	; (800230c <pdu_write_single_register+0xc8>)
 80022be:	7af9      	ldrb	r1, [r7, #11]
 80022c0:	54d1      	strb	r1, [r2, r3]
 80022c2:	68fb      	ldr	r3, [r7, #12]
 80022c4:	1c5a      	adds	r2, r3, #1
 80022c6:	60fa      	str	r2, [r7, #12]
 80022c8:	4a0f      	ldr	r2, [pc, #60]	; (8002308 <pdu_write_single_register+0xc4>)
 80022ca:	7891      	ldrb	r1, [r2, #2]
 80022cc:	4a0f      	ldr	r2, [pc, #60]	; (800230c <pdu_write_single_register+0xc8>)
 80022ce:	54d1      	strb	r1, [r2, r3]
 80022d0:	68fb      	ldr	r3, [r7, #12]
 80022d2:	1c5a      	adds	r2, r3, #1
 80022d4:	60fa      	str	r2, [r7, #12]
 80022d6:	4a0c      	ldr	r2, [pc, #48]	; (8002308 <pdu_write_single_register+0xc4>)
 80022d8:	78d1      	ldrb	r1, [r2, #3]
 80022da:	4a0c      	ldr	r2, [pc, #48]	; (800230c <pdu_write_single_register+0xc8>)
 80022dc:	54d1      	strb	r1, [r2, r3]
 80022de:	68fb      	ldr	r3, [r7, #12]
 80022e0:	1c5a      	adds	r2, r3, #1
 80022e2:	60fa      	str	r2, [r7, #12]
 80022e4:	4a08      	ldr	r2, [pc, #32]	; (8002308 <pdu_write_single_register+0xc4>)
 80022e6:	7911      	ldrb	r1, [r2, #4]
 80022e8:	4a08      	ldr	r2, [pc, #32]	; (800230c <pdu_write_single_register+0xc8>)
 80022ea:	54d1      	strb	r1, [r2, r3]
 80022ec:	68fb      	ldr	r3, [r7, #12]
 80022ee:	1c5a      	adds	r2, r3, #1
 80022f0:	60fa      	str	r2, [r7, #12]
 80022f2:	4a05      	ldr	r2, [pc, #20]	; (8002308 <pdu_write_single_register+0xc4>)
 80022f4:	7951      	ldrb	r1, [r2, #5]
 80022f6:	4a05      	ldr	r2, [pc, #20]	; (800230c <pdu_write_single_register+0xc8>)
 80022f8:	54d1      	strb	r1, [r2, r3]
 80022fa:	68fb      	ldr	r3, [r7, #12]
 80022fc:	4618      	mov	r0, r3
 80022fe:	3714      	adds	r7, #20
 8002300:	46bd      	mov	sp, r7
 8002302:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002306:	4770      	bx	lr
 8002308:	20000a78 	.word	0x20000a78
 800230c:	20000b80 	.word	0x20000b80
 8002310:	20000a64 	.word	0x20000a64

08002314 <pdu_write_multiply_registers>:
 8002314:	b480      	push	{r7}
 8002316:	b087      	sub	sp, #28
 8002318:	af00      	add	r7, sp, #0
 800231a:	4b41      	ldr	r3, [pc, #260]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 800231c:	785b      	ldrb	r3, [r3, #1]
 800231e:	73fb      	strb	r3, [r7, #15]
 8002320:	4b3f      	ldr	r3, [pc, #252]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 8002322:	789b      	ldrb	r3, [r3, #2]
 8002324:	021b      	lsls	r3, r3, #8
 8002326:	b29a      	uxth	r2, r3
 8002328:	4b3d      	ldr	r3, [pc, #244]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 800232a:	78db      	ldrb	r3, [r3, #3]
 800232c:	4313      	orrs	r3, r2
 800232e:	b29b      	uxth	r3, r3
 8002330:	81bb      	strh	r3, [r7, #12]
 8002332:	4b3b      	ldr	r3, [pc, #236]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 8002334:	791b      	ldrb	r3, [r3, #4]
 8002336:	021b      	lsls	r3, r3, #8
 8002338:	b29a      	uxth	r2, r3
 800233a:	4b39      	ldr	r3, [pc, #228]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 800233c:	795b      	ldrb	r3, [r3, #5]
 800233e:	4313      	orrs	r3, r2
 8002340:	b29b      	uxth	r3, r3
 8002342:	817b      	strh	r3, [r7, #10]
 8002344:	4b36      	ldr	r3, [pc, #216]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 8002346:	799b      	ldrb	r3, [r3, #6]
 8002348:	727b      	strb	r3, [r7, #9]
 800234a:	89bb      	ldrh	r3, [r7, #12]
 800234c:	2b6a      	cmp	r3, #106	; 0x6a
 800234e:	d904      	bls.n	800235a <pdu_write_multiply_registers+0x46>
 8002350:	89ba      	ldrh	r2, [r7, #12]
 8002352:	897b      	ldrh	r3, [r7, #10]
 8002354:	4413      	add	r3, r2
 8002356:	2b73      	cmp	r3, #115	; 0x73
 8002358:	dd11      	ble.n	800237e <pdu_write_multiply_registers+0x6a>
 800235a:	2301      	movs	r3, #1
 800235c:	613b      	str	r3, [r7, #16]
 800235e:	693b      	ldr	r3, [r7, #16]
 8002360:	1c5a      	adds	r2, r3, #1
 8002362:	613a      	str	r2, [r7, #16]
 8002364:	7bfa      	ldrb	r2, [r7, #15]
 8002366:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800236a:	b2d1      	uxtb	r1, r2
 800236c:	4a2d      	ldr	r2, [pc, #180]	; (8002424 <pdu_write_multiply_registers+0x110>)
 800236e:	54d1      	strb	r1, [r2, r3]
 8002370:	693b      	ldr	r3, [r7, #16]
 8002372:	1c5a      	adds	r2, r3, #1
 8002374:	613a      	str	r2, [r7, #16]
 8002376:	4a2b      	ldr	r2, [pc, #172]	; (8002424 <pdu_write_multiply_registers+0x110>)
 8002378:	2102      	movs	r1, #2
 800237a:	54d1      	strb	r1, [r2, r3]
 800237c:	e048      	b.n	8002410 <pdu_write_multiply_registers+0xfc>
 800237e:	2307      	movs	r3, #7
 8002380:	613b      	str	r3, [r7, #16]
 8002382:	2300      	movs	r3, #0
 8002384:	617b      	str	r3, [r7, #20]
 8002386:	e01b      	b.n	80023c0 <pdu_write_multiply_registers+0xac>
 8002388:	693b      	ldr	r3, [r7, #16]
 800238a:	1c5a      	adds	r2, r3, #1
 800238c:	613a      	str	r2, [r7, #16]
 800238e:	4a24      	ldr	r2, [pc, #144]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 8002390:	5cd3      	ldrb	r3, [r2, r3]
 8002392:	021b      	lsls	r3, r3, #8
 8002394:	80fb      	strh	r3, [r7, #6]
 8002396:	693b      	ldr	r3, [r7, #16]
 8002398:	1c5a      	adds	r2, r3, #1
 800239a:	613a      	str	r2, [r7, #16]
 800239c:	4a20      	ldr	r2, [pc, #128]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 800239e:	5cd3      	ldrb	r3, [r2, r3]
 80023a0:	461a      	mov	r2, r3
 80023a2:	88fb      	ldrh	r3, [r7, #6]
 80023a4:	4313      	orrs	r3, r2
 80023a6:	80fb      	strh	r3, [r7, #6]
 80023a8:	89bb      	ldrh	r3, [r7, #12]
 80023aa:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 80023ae:	697b      	ldr	r3, [r7, #20]
 80023b0:	441a      	add	r2, r3
 80023b2:	4b1d      	ldr	r3, [pc, #116]	; (8002428 <pdu_write_multiply_registers+0x114>)
 80023b4:	88f9      	ldrh	r1, [r7, #6]
 80023b6:	f823 1012 	strh.w	r1, [r3, r2, lsl #1]
 80023ba:	697b      	ldr	r3, [r7, #20]
 80023bc:	3301      	adds	r3, #1
 80023be:	617b      	str	r3, [r7, #20]
 80023c0:	897a      	ldrh	r2, [r7, #10]
 80023c2:	697b      	ldr	r3, [r7, #20]
 80023c4:	429a      	cmp	r2, r3
 80023c6:	dcdf      	bgt.n	8002388 <pdu_write_multiply_registers+0x74>
 80023c8:	2301      	movs	r3, #1
 80023ca:	613b      	str	r3, [r7, #16]
 80023cc:	693b      	ldr	r3, [r7, #16]
 80023ce:	1c5a      	adds	r2, r3, #1
 80023d0:	613a      	str	r2, [r7, #16]
 80023d2:	4a14      	ldr	r2, [pc, #80]	; (8002424 <pdu_write_multiply_registers+0x110>)
 80023d4:	7bf9      	ldrb	r1, [r7, #15]
 80023d6:	54d1      	strb	r1, [r2, r3]
 80023d8:	693b      	ldr	r3, [r7, #16]
 80023da:	1c5a      	adds	r2, r3, #1
 80023dc:	613a      	str	r2, [r7, #16]
 80023de:	4a10      	ldr	r2, [pc, #64]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 80023e0:	7891      	ldrb	r1, [r2, #2]
 80023e2:	4a10      	ldr	r2, [pc, #64]	; (8002424 <pdu_write_multiply_registers+0x110>)
 80023e4:	54d1      	strb	r1, [r2, r3]
 80023e6:	693b      	ldr	r3, [r7, #16]
 80023e8:	1c5a      	adds	r2, r3, #1
 80023ea:	613a      	str	r2, [r7, #16]
 80023ec:	4a0c      	ldr	r2, [pc, #48]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 80023ee:	78d1      	ldrb	r1, [r2, #3]
 80023f0:	4a0c      	ldr	r2, [pc, #48]	; (8002424 <pdu_write_multiply_registers+0x110>)
 80023f2:	54d1      	strb	r1, [r2, r3]
 80023f4:	693b      	ldr	r3, [r7, #16]
 80023f6:	1c5a      	adds	r2, r3, #1
 80023f8:	613a      	str	r2, [r7, #16]
 80023fa:	4a09      	ldr	r2, [pc, #36]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 80023fc:	7911      	ldrb	r1, [r2, #4]
 80023fe:	4a09      	ldr	r2, [pc, #36]	; (8002424 <pdu_write_multiply_registers+0x110>)
 8002400:	54d1      	strb	r1, [r2, r3]
 8002402:	693b      	ldr	r3, [r7, #16]
 8002404:	1c5a      	adds	r2, r3, #1
 8002406:	613a      	str	r2, [r7, #16]
 8002408:	4a05      	ldr	r2, [pc, #20]	; (8002420 <pdu_write_multiply_registers+0x10c>)
 800240a:	7951      	ldrb	r1, [r2, #5]
 800240c:	4a05      	ldr	r2, [pc, #20]	; (8002424 <pdu_write_multiply_registers+0x110>)
 800240e:	54d1      	strb	r1, [r2, r3]
 8002410:	693b      	ldr	r3, [r7, #16]
 8002412:	4618      	mov	r0, r3
 8002414:	371c      	adds	r7, #28
 8002416:	46bd      	mov	sp, r7
 8002418:	f85d 7b04 	ldr.w	r7, [sp], #4
 800241c:	4770      	bx	lr
 800241e:	bf00      	nop
 8002420:	20000a78 	.word	0x20000a78
 8002424:	20000b80 	.word	0x20000b80
 8002428:	20000a64 	.word	0x20000a64

0800242c <pdu_read_holding_registers>:
 800242c:	b480      	push	{r7}
 800242e:	b085      	sub	sp, #20
 8002430:	af00      	add	r7, sp, #0
 8002432:	4b35      	ldr	r3, [pc, #212]	; (8002508 <pdu_read_holding_registers+0xdc>)
 8002434:	785b      	ldrb	r3, [r3, #1]
 8002436:	71fb      	strb	r3, [r7, #7]
 8002438:	4b33      	ldr	r3, [pc, #204]	; (8002508 <pdu_read_holding_registers+0xdc>)
 800243a:	789b      	ldrb	r3, [r3, #2]
 800243c:	021b      	lsls	r3, r3, #8
 800243e:	b29a      	uxth	r2, r3
 8002440:	4b31      	ldr	r3, [pc, #196]	; (8002508 <pdu_read_holding_registers+0xdc>)
 8002442:	78db      	ldrb	r3, [r3, #3]
 8002444:	4313      	orrs	r3, r2
 8002446:	b29b      	uxth	r3, r3
 8002448:	80bb      	strh	r3, [r7, #4]
 800244a:	4b2f      	ldr	r3, [pc, #188]	; (8002508 <pdu_read_holding_registers+0xdc>)
 800244c:	791b      	ldrb	r3, [r3, #4]
 800244e:	021b      	lsls	r3, r3, #8
 8002450:	b29a      	uxth	r2, r3
 8002452:	4b2d      	ldr	r3, [pc, #180]	; (8002508 <pdu_read_holding_registers+0xdc>)
 8002454:	795b      	ldrb	r3, [r3, #5]
 8002456:	4313      	orrs	r3, r2
 8002458:	b29b      	uxth	r3, r3
 800245a:	807b      	strh	r3, [r7, #2]
 800245c:	88bb      	ldrh	r3, [r7, #4]
 800245e:	2b6a      	cmp	r3, #106	; 0x6a
 8002460:	d904      	bls.n	800246c <pdu_read_holding_registers+0x40>
 8002462:	88ba      	ldrh	r2, [r7, #4]
 8002464:	887b      	ldrh	r3, [r7, #2]
 8002466:	4413      	add	r3, r2
 8002468:	2b73      	cmp	r3, #115	; 0x73
 800246a:	dd11      	ble.n	8002490 <pdu_read_holding_registers+0x64>
 800246c:	2301      	movs	r3, #1
 800246e:	60bb      	str	r3, [r7, #8]
 8002470:	68bb      	ldr	r3, [r7, #8]
 8002472:	1c5a      	adds	r2, r3, #1
 8002474:	60ba      	str	r2, [r7, #8]
 8002476:	79fa      	ldrb	r2, [r7, #7]
 8002478:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800247c:	b2d1      	uxtb	r1, r2
 800247e:	4a23      	ldr	r2, [pc, #140]	; (800250c <pdu_read_holding_registers+0xe0>)
 8002480:	54d1      	strb	r1, [r2, r3]
 8002482:	68bb      	ldr	r3, [r7, #8]
 8002484:	1c5a      	adds	r2, r3, #1
 8002486:	60ba      	str	r2, [r7, #8]
 8002488:	4a20      	ldr	r2, [pc, #128]	; (800250c <pdu_read_holding_registers+0xe0>)
 800248a:	2102      	movs	r1, #2
 800248c:	54d1      	strb	r1, [r2, r3]
 800248e:	e033      	b.n	80024f8 <pdu_read_holding_registers+0xcc>
 8002490:	2301      	movs	r3, #1
 8002492:	60bb      	str	r3, [r7, #8]
 8002494:	68bb      	ldr	r3, [r7, #8]
 8002496:	1c5a      	adds	r2, r3, #1
 8002498:	60ba      	str	r2, [r7, #8]
 800249a:	4a1c      	ldr	r2, [pc, #112]	; (800250c <pdu_read_holding_registers+0xe0>)
 800249c:	79f9      	ldrb	r1, [r7, #7]
 800249e:	54d1      	strb	r1, [r2, r3]
 80024a0:	68bb      	ldr	r3, [r7, #8]
 80024a2:	1c5a      	adds	r2, r3, #1
 80024a4:	60ba      	str	r2, [r7, #8]
 80024a6:	887a      	ldrh	r2, [r7, #2]
 80024a8:	b2d2      	uxtb	r2, r2
 80024aa:	0052      	lsls	r2, r2, #1
 80024ac:	b2d1      	uxtb	r1, r2
 80024ae:	4a17      	ldr	r2, [pc, #92]	; (800250c <pdu_read_holding_registers+0xe0>)
 80024b0:	54d1      	strb	r1, [r2, r3]
 80024b2:	2300      	movs	r3, #0
 80024b4:	60fb      	str	r3, [r7, #12]
 80024b6:	e01b      	b.n	80024f0 <pdu_read_holding_registers+0xc4>
 80024b8:	88bb      	ldrh	r3, [r7, #4]
 80024ba:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 80024be:	68fb      	ldr	r3, [r7, #12]
 80024c0:	441a      	add	r2, r3
 80024c2:	4b13      	ldr	r3, [pc, #76]	; (8002510 <pdu_read_holding_registers+0xe4>)
 80024c4:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
 80024c8:	803b      	strh	r3, [r7, #0]
 80024ca:	68bb      	ldr	r3, [r7, #8]
 80024cc:	1c5a      	adds	r2, r3, #1
 80024ce:	60ba      	str	r2, [r7, #8]
 80024d0:	883a      	ldrh	r2, [r7, #0]
 80024d2:	0a12      	lsrs	r2, r2, #8
 80024d4:	b292      	uxth	r2, r2
 80024d6:	b2d1      	uxtb	r1, r2
 80024d8:	4a0c      	ldr	r2, [pc, #48]	; (800250c <pdu_read_holding_registers+0xe0>)
 80024da:	54d1      	strb	r1, [r2, r3]
 80024dc:	68bb      	ldr	r3, [r7, #8]
 80024de:	1c5a      	adds	r2, r3, #1
 80024e0:	60ba      	str	r2, [r7, #8]
 80024e2:	883a      	ldrh	r2, [r7, #0]
 80024e4:	b2d1      	uxtb	r1, r2
 80024e6:	4a09      	ldr	r2, [pc, #36]	; (800250c <pdu_read_holding_registers+0xe0>)
 80024e8:	54d1      	strb	r1, [r2, r3]
 80024ea:	68fb      	ldr	r3, [r7, #12]
 80024ec:	3301      	adds	r3, #1
 80024ee:	60fb      	str	r3, [r7, #12]
 80024f0:	887a      	ldrh	r2, [r7, #2]
 80024f2:	68fb      	ldr	r3, [r7, #12]
 80024f4:	429a      	cmp	r2, r3
 80024f6:	dcdf      	bgt.n	80024b8 <pdu_read_holding_registers+0x8c>
 80024f8:	68bb      	ldr	r3, [r7, #8]
 80024fa:	4618      	mov	r0, r3
 80024fc:	3714      	adds	r7, #20
 80024fe:	46bd      	mov	sp, r7
 8002500:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002504:	4770      	bx	lr
 8002506:	bf00      	nop
 8002508:	20000a78 	.word	0x20000a78
 800250c:	20000b80 	.word	0x20000b80
 8002510:	20000a64 	.word	0x20000a64

08002514 <pdu_read_write_multiply_registers>:
 8002514:	b480      	push	{r7}
 8002516:	b087      	sub	sp, #28
 8002518:	af00      	add	r7, sp, #0
 800251a:	4b60      	ldr	r3, [pc, #384]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 800251c:	785b      	ldrb	r3, [r3, #1]
 800251e:	73fb      	strb	r3, [r7, #15]
 8002520:	4b5e      	ldr	r3, [pc, #376]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 8002522:	789b      	ldrb	r3, [r3, #2]
 8002524:	021b      	lsls	r3, r3, #8
 8002526:	b29a      	uxth	r2, r3
 8002528:	4b5c      	ldr	r3, [pc, #368]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 800252a:	78db      	ldrb	r3, [r3, #3]
 800252c:	4313      	orrs	r3, r2
 800252e:	b29b      	uxth	r3, r3
 8002530:	81bb      	strh	r3, [r7, #12]
 8002532:	4b5a      	ldr	r3, [pc, #360]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 8002534:	791b      	ldrb	r3, [r3, #4]
 8002536:	021b      	lsls	r3, r3, #8
 8002538:	b29a      	uxth	r2, r3
 800253a:	4b58      	ldr	r3, [pc, #352]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 800253c:	795b      	ldrb	r3, [r3, #5]
 800253e:	4313      	orrs	r3, r2
 8002540:	b29b      	uxth	r3, r3
 8002542:	817b      	strh	r3, [r7, #10]
 8002544:	4b55      	ldr	r3, [pc, #340]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 8002546:	799b      	ldrb	r3, [r3, #6]
 8002548:	021b      	lsls	r3, r3, #8
 800254a:	b29a      	uxth	r2, r3
 800254c:	4b53      	ldr	r3, [pc, #332]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 800254e:	79db      	ldrb	r3, [r3, #7]
 8002550:	4313      	orrs	r3, r2
 8002552:	b29b      	uxth	r3, r3
 8002554:	813b      	strh	r3, [r7, #8]
 8002556:	4b51      	ldr	r3, [pc, #324]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 8002558:	7a1b      	ldrb	r3, [r3, #8]
 800255a:	021b      	lsls	r3, r3, #8
 800255c:	b29a      	uxth	r2, r3
 800255e:	4b4f      	ldr	r3, [pc, #316]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 8002560:	7a5b      	ldrb	r3, [r3, #9]
 8002562:	4313      	orrs	r3, r2
 8002564:	b29b      	uxth	r3, r3
 8002566:	80fb      	strh	r3, [r7, #6]
 8002568:	4b4c      	ldr	r3, [pc, #304]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 800256a:	7a9b      	ldrb	r3, [r3, #10]
 800256c:	717b      	strb	r3, [r7, #5]
 800256e:	89bb      	ldrh	r3, [r7, #12]
 8002570:	2b6a      	cmp	r3, #106	; 0x6a
 8002572:	d904      	bls.n	800257e <pdu_read_write_multiply_registers+0x6a>
 8002574:	89ba      	ldrh	r2, [r7, #12]
 8002576:	897b      	ldrh	r3, [r7, #10]
 8002578:	4413      	add	r3, r2
 800257a:	2b73      	cmp	r3, #115	; 0x73
 800257c:	dd12      	ble.n	80025a4 <pdu_read_write_multiply_registers+0x90>
 800257e:	2301      	movs	r3, #1
 8002580:	613b      	str	r3, [r7, #16]
 8002582:	693b      	ldr	r3, [r7, #16]
 8002584:	1c5a      	adds	r2, r3, #1
 8002586:	613a      	str	r2, [r7, #16]
 8002588:	7bfa      	ldrb	r2, [r7, #15]
 800258a:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800258e:	b2d1      	uxtb	r1, r2
 8002590:	4a43      	ldr	r2, [pc, #268]	; (80026a0 <pdu_read_write_multiply_registers+0x18c>)
 8002592:	54d1      	strb	r1, [r2, r3]
 8002594:	693b      	ldr	r3, [r7, #16]
 8002596:	1c5a      	adds	r2, r3, #1
 8002598:	613a      	str	r2, [r7, #16]
 800259a:	4a41      	ldr	r2, [pc, #260]	; (80026a0 <pdu_read_write_multiply_registers+0x18c>)
 800259c:	2102      	movs	r1, #2
 800259e:	54d1      	strb	r1, [r2, r3]
 80025a0:	693b      	ldr	r3, [r7, #16]
 80025a2:	e074      	b.n	800268e <pdu_read_write_multiply_registers+0x17a>
 80025a4:	893b      	ldrh	r3, [r7, #8]
 80025a6:	2b6a      	cmp	r3, #106	; 0x6a
 80025a8:	d904      	bls.n	80025b4 <pdu_read_write_multiply_registers+0xa0>
 80025aa:	893a      	ldrh	r2, [r7, #8]
 80025ac:	88fb      	ldrh	r3, [r7, #6]
 80025ae:	4413      	add	r3, r2
 80025b0:	2b73      	cmp	r3, #115	; 0x73
 80025b2:	dd12      	ble.n	80025da <pdu_read_write_multiply_registers+0xc6>
 80025b4:	2301      	movs	r3, #1
 80025b6:	613b      	str	r3, [r7, #16]
 80025b8:	693b      	ldr	r3, [r7, #16]
 80025ba:	1c5a      	adds	r2, r3, #1
 80025bc:	613a      	str	r2, [r7, #16]
 80025be:	7bfa      	ldrb	r2, [r7, #15]
 80025c0:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80025c4:	b2d1      	uxtb	r1, r2
 80025c6:	4a36      	ldr	r2, [pc, #216]	; (80026a0 <pdu_read_write_multiply_registers+0x18c>)
 80025c8:	54d1      	strb	r1, [r2, r3]
 80025ca:	693b      	ldr	r3, [r7, #16]
 80025cc:	1c5a      	adds	r2, r3, #1
 80025ce:	613a      	str	r2, [r7, #16]
 80025d0:	4a33      	ldr	r2, [pc, #204]	; (80026a0 <pdu_read_write_multiply_registers+0x18c>)
 80025d2:	2102      	movs	r1, #2
 80025d4:	54d1      	strb	r1, [r2, r3]
 80025d6:	693b      	ldr	r3, [r7, #16]
 80025d8:	e059      	b.n	800268e <pdu_read_write_multiply_registers+0x17a>
 80025da:	230b      	movs	r3, #11
 80025dc:	613b      	str	r3, [r7, #16]
 80025de:	2300      	movs	r3, #0
 80025e0:	617b      	str	r3, [r7, #20]
 80025e2:	e01b      	b.n	800261c <pdu_read_write_multiply_registers+0x108>
 80025e4:	693b      	ldr	r3, [r7, #16]
 80025e6:	1c5a      	adds	r2, r3, #1
 80025e8:	613a      	str	r2, [r7, #16]
 80025ea:	4a2c      	ldr	r2, [pc, #176]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 80025ec:	5cd3      	ldrb	r3, [r2, r3]
 80025ee:	021b      	lsls	r3, r3, #8
 80025f0:	807b      	strh	r3, [r7, #2]
 80025f2:	693b      	ldr	r3, [r7, #16]
 80025f4:	1c5a      	adds	r2, r3, #1
 80025f6:	613a      	str	r2, [r7, #16]
 80025f8:	4a28      	ldr	r2, [pc, #160]	; (800269c <pdu_read_write_multiply_registers+0x188>)
 80025fa:	5cd3      	ldrb	r3, [r2, r3]
 80025fc:	461a      	mov	r2, r3
 80025fe:	887b      	ldrh	r3, [r7, #2]
 8002600:	4313      	orrs	r3, r2
 8002602:	807b      	strh	r3, [r7, #2]
 8002604:	893b      	ldrh	r3, [r7, #8]
 8002606:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 800260a:	697b      	ldr	r3, [r7, #20]
 800260c:	441a      	add	r2, r3
 800260e:	4b25      	ldr	r3, [pc, #148]	; (80026a4 <pdu_read_write_multiply_registers+0x190>)
 8002610:	8879      	ldrh	r1, [r7, #2]
 8002612:	f823 1012 	strh.w	r1, [r3, r2, lsl #1]
 8002616:	697b      	ldr	r3, [r7, #20]
 8002618:	3301      	adds	r3, #1
 800261a:	617b      	str	r3, [r7, #20]
 800261c:	88fa      	ldrh	r2, [r7, #6]
 800261e:	697b      	ldr	r3, [r7, #20]
 8002620:	429a      	cmp	r2, r3
 8002622:	dcdf      	bgt.n	80025e4 <pdu_read_write_multiply_registers+0xd0>
 8002624:	2301      	movs	r3, #1
 8002626:	613b      	str	r3, [r7, #16]
 8002628:	693b      	ldr	r3, [r7, #16]
 800262a:	1c5a      	adds	r2, r3, #1
 800262c:	613a      	str	r2, [r7, #16]
 800262e:	4a1c      	ldr	r2, [pc, #112]	; (80026a0 <pdu_read_write_multiply_registers+0x18c>)
 8002630:	7bf9      	ldrb	r1, [r7, #15]
 8002632:	54d1      	strb	r1, [r2, r3]
 8002634:	693b      	ldr	r3, [r7, #16]
 8002636:	1c5a      	adds	r2, r3, #1
 8002638:	613a      	str	r2, [r7, #16]
 800263a:	897a      	ldrh	r2, [r7, #10]
 800263c:	b2d2      	uxtb	r2, r2
 800263e:	0052      	lsls	r2, r2, #1
 8002640:	b2d1      	uxtb	r1, r2
 8002642:	4a17      	ldr	r2, [pc, #92]	; (80026a0 <pdu_read_write_multiply_registers+0x18c>)
 8002644:	54d1      	strb	r1, [r2, r3]
 8002646:	2300      	movs	r3, #0
 8002648:	617b      	str	r3, [r7, #20]
 800264a:	e01b      	b.n	8002684 <pdu_read_write_multiply_registers+0x170>
 800264c:	89bb      	ldrh	r3, [r7, #12]
 800264e:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 8002652:	697b      	ldr	r3, [r7, #20]
 8002654:	441a      	add	r2, r3
 8002656:	4b13      	ldr	r3, [pc, #76]	; (80026a4 <pdu_read_write_multiply_registers+0x190>)
 8002658:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
 800265c:	803b      	strh	r3, [r7, #0]
 800265e:	693b      	ldr	r3, [r7, #16]
 8002660:	1c5a      	adds	r2, r3, #1
 8002662:	613a      	str	r2, [r7, #16]
 8002664:	883a      	ldrh	r2, [r7, #0]
 8002666:	0a12      	lsrs	r2, r2, #8
 8002668:	b292      	uxth	r2, r2
 800266a:	b2d1      	uxtb	r1, r2
 800266c:	4a0c      	ldr	r2, [pc, #48]	; (80026a0 <pdu_read_write_multiply_registers+0x18c>)
 800266e:	54d1      	strb	r1, [r2, r3]
 8002670:	693b      	ldr	r3, [r7, #16]
 8002672:	1c5a      	adds	r2, r3, #1
 8002674:	613a      	str	r2, [r7, #16]
 8002676:	883a      	ldrh	r2, [r7, #0]
 8002678:	b2d1      	uxtb	r1, r2
 800267a:	4a09      	ldr	r2, [pc, #36]	; (80026a0 <pdu_read_write_multiply_registers+0x18c>)
 800267c:	54d1      	strb	r1, [r2, r3]
 800267e:	697b      	ldr	r3, [r7, #20]
 8002680:	3301      	adds	r3, #1
 8002682:	617b      	str	r3, [r7, #20]
 8002684:	897a      	ldrh	r2, [r7, #10]
 8002686:	697b      	ldr	r3, [r7, #20]
 8002688:	429a      	cmp	r2, r3
 800268a:	dcdf      	bgt.n	800264c <pdu_read_write_multiply_registers+0x138>
 800268c:	693b      	ldr	r3, [r7, #16]
 800268e:	4618      	mov	r0, r3
 8002690:	371c      	adds	r7, #28
 8002692:	46bd      	mov	sp, r7
 8002694:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002698:	4770      	bx	lr
 800269a:	bf00      	nop
 800269c:	20000a78 	.word	0x20000a78
 80026a0:	20000b80 	.word	0x20000b80
 80026a4:	20000a64 	.word	0x20000a64

080026a8 <pdu_illegal_function_error>:
 80026a8:	b480      	push	{r7}
 80026aa:	b083      	sub	sp, #12
 80026ac:	af00      	add	r7, sp, #0
 80026ae:	4b0d      	ldr	r3, [pc, #52]	; (80026e4 <pdu_illegal_function_error+0x3c>)
 80026b0:	785b      	ldrb	r3, [r3, #1]
 80026b2:	71fb      	strb	r3, [r7, #7]
 80026b4:	2301      	movs	r3, #1
 80026b6:	603b      	str	r3, [r7, #0]
 80026b8:	683b      	ldr	r3, [r7, #0]
 80026ba:	1c5a      	adds	r2, r3, #1
 80026bc:	603a      	str	r2, [r7, #0]
 80026be:	79fa      	ldrb	r2, [r7, #7]
 80026c0:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80026c4:	b2d1      	uxtb	r1, r2
 80026c6:	4a08      	ldr	r2, [pc, #32]	; (80026e8 <pdu_illegal_function_error+0x40>)
 80026c8:	54d1      	strb	r1, [r2, r3]
 80026ca:	683b      	ldr	r3, [r7, #0]
 80026cc:	1c5a      	adds	r2, r3, #1
 80026ce:	603a      	str	r2, [r7, #0]
 80026d0:	4a05      	ldr	r2, [pc, #20]	; (80026e8 <pdu_illegal_function_error+0x40>)
 80026d2:	2101      	movs	r1, #1
 80026d4:	54d1      	strb	r1, [r2, r3]
 80026d6:	683b      	ldr	r3, [r7, #0]
 80026d8:	4618      	mov	r0, r3
 80026da:	370c      	adds	r7, #12
 80026dc:	46bd      	mov	sp, r7
 80026de:	f85d 7b04 	ldr.w	r7, [sp], #4
 80026e2:	4770      	bx	lr
 80026e4:	20000a78 	.word	0x20000a78
 80026e8:	20000b80 	.word	0x20000b80

080026ec <proc_ADU>:
 80026ec:	b580      	push	{r7, lr}
 80026ee:	b082      	sub	sp, #8
 80026f0:	af00      	add	r7, sp, #0
 80026f2:	4b23      	ldr	r3, [pc, #140]	; (8002780 <proc_ADU+0x94>)
 80026f4:	681b      	ldr	r3, [r3, #0]
 80026f6:	4823      	ldr	r0, [pc, #140]	; (8002784 <proc_ADU+0x98>)
 80026f8:	4619      	mov	r1, r3
 80026fa:	f000 f84b 	bl	8002794 <crc16>
 80026fe:	4603      	mov	r3, r0
 8002700:	80fb      	strh	r3, [r7, #6]
 8002702:	88fb      	ldrh	r3, [r7, #6]
 8002704:	2b00      	cmp	r3, #0
 8002706:	d003      	beq.n	8002710 <proc_ADU+0x24>
 8002708:	4b1f      	ldr	r3, [pc, #124]	; (8002788 <proc_ADU+0x9c>)
 800270a:	2201      	movs	r2, #1
 800270c:	601a      	str	r2, [r3, #0]
 800270e:	e033      	b.n	8002778 <proc_ADU+0x8c>
 8002710:	4b1c      	ldr	r3, [pc, #112]	; (8002784 <proc_ADU+0x98>)
 8002712:	781b      	ldrb	r3, [r3, #0]
 8002714:	717b      	strb	r3, [r7, #5]
 8002716:	4b1b      	ldr	r3, [pc, #108]	; (8002784 <proc_ADU+0x98>)
 8002718:	785b      	ldrb	r3, [r3, #1]
 800271a:	713b      	strb	r3, [r7, #4]
 800271c:	797b      	ldrb	r3, [r7, #5]
 800271e:	2b00      	cmp	r3, #0
 8002720:	d105      	bne.n	800272e <proc_ADU+0x42>
 8002722:	793a      	ldrb	r2, [r7, #4]
 8002724:	4b19      	ldr	r3, [pc, #100]	; (800278c <proc_ADU+0xa0>)
 8002726:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 800272a:	4798      	blx	r3
 800272c:	e024      	b.n	8002778 <proc_ADU+0x8c>
 800272e:	797b      	ldrb	r3, [r7, #5]
 8002730:	2b12      	cmp	r3, #18
 8002732:	d121      	bne.n	8002778 <proc_ADU+0x8c>
 8002734:	4b16      	ldr	r3, [pc, #88]	; (8002790 <proc_ADU+0xa4>)
 8002736:	2212      	movs	r2, #18
 8002738:	701a      	strb	r2, [r3, #0]
 800273a:	793a      	ldrb	r2, [r7, #4]
 800273c:	4b13      	ldr	r3, [pc, #76]	; (800278c <proc_ADU+0xa0>)
 800273e:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8002742:	4798      	blx	r3
 8002744:	6038      	str	r0, [r7, #0]
 8002746:	4812      	ldr	r0, [pc, #72]	; (8002790 <proc_ADU+0xa4>)
 8002748:	6839      	ldr	r1, [r7, #0]
 800274a:	f000 f823 	bl	8002794 <crc16>
 800274e:	4603      	mov	r3, r0
 8002750:	80fb      	strh	r3, [r7, #6]
 8002752:	683b      	ldr	r3, [r7, #0]
 8002754:	1c5a      	adds	r2, r3, #1
 8002756:	603a      	str	r2, [r7, #0]
 8002758:	88fa      	ldrh	r2, [r7, #6]
 800275a:	b2d1      	uxtb	r1, r2
 800275c:	4a0c      	ldr	r2, [pc, #48]	; (8002790 <proc_ADU+0xa4>)
 800275e:	54d1      	strb	r1, [r2, r3]
 8002760:	683b      	ldr	r3, [r7, #0]
 8002762:	1c5a      	adds	r2, r3, #1
 8002764:	603a      	str	r2, [r7, #0]
 8002766:	88fa      	ldrh	r2, [r7, #6]
 8002768:	0a12      	lsrs	r2, r2, #8
 800276a:	b292      	uxth	r2, r2
 800276c:	b2d1      	uxtb	r1, r2
 800276e:	4a08      	ldr	r2, [pc, #32]	; (8002790 <proc_ADU+0xa4>)
 8002770:	54d1      	strb	r1, [r2, r3]
 8002772:	6838      	ldr	r0, [r7, #0]
 8002774:	f7ff f8c6 	bl	8001904 <start_trans>
 8002778:	3708      	adds	r7, #8
 800277a:	46bd      	mov	sp, r7
 800277c:	bd80      	pop	{r7, pc}
 800277e:	bf00      	nop
 8002780:	20000b78 	.word	0x20000b78
 8002784:	20000a78 	.word	0x20000a78
 8002788:	20000a74 	.word	0x20000a74
 800278c:	080038b0 	.word	0x080038b0
 8002790:	20000b80 	.word	0x20000b80

08002794 <crc16>:
 8002794:	b480      	push	{r7}
 8002796:	b087      	sub	sp, #28
 8002798:	af00      	add	r7, sp, #0
 800279a:	6078      	str	r0, [r7, #4]
 800279c:	6039      	str	r1, [r7, #0]
 800279e:	23ff      	movs	r3, #255	; 0xff
 80027a0:	75fb      	strb	r3, [r7, #23]
 80027a2:	23ff      	movs	r3, #255	; 0xff
 80027a4:	75bb      	strb	r3, [r7, #22]
 80027a6:	2300      	movs	r3, #0
 80027a8:	613b      	str	r3, [r7, #16]
 80027aa:	e016      	b.n	80027da <crc16+0x46>
 80027ac:	693b      	ldr	r3, [r7, #16]
 80027ae:	687a      	ldr	r2, [r7, #4]
 80027b0:	4413      	add	r3, r2
 80027b2:	781a      	ldrb	r2, [r3, #0]
 80027b4:	7dfb      	ldrb	r3, [r7, #23]
 80027b6:	4053      	eors	r3, r2
 80027b8:	b2db      	uxtb	r3, r3
 80027ba:	60fb      	str	r3, [r7, #12]
 80027bc:	4a10      	ldr	r2, [pc, #64]	; (8002800 <crc16+0x6c>)
 80027be:	68fb      	ldr	r3, [r7, #12]
 80027c0:	4413      	add	r3, r2
 80027c2:	781a      	ldrb	r2, [r3, #0]
 80027c4:	7dbb      	ldrb	r3, [r7, #22]
 80027c6:	4053      	eors	r3, r2
 80027c8:	75fb      	strb	r3, [r7, #23]
 80027ca:	4a0e      	ldr	r2, [pc, #56]	; (8002804 <crc16+0x70>)
 80027cc:	68fb      	ldr	r3, [r7, #12]
 80027ce:	4413      	add	r3, r2
 80027d0:	781b      	ldrb	r3, [r3, #0]
 80027d2:	75bb      	strb	r3, [r7, #22]
 80027d4:	693b      	ldr	r3, [r7, #16]
 80027d6:	3301      	adds	r3, #1
 80027d8:	613b      	str	r3, [r7, #16]
 80027da:	693a      	ldr	r2, [r7, #16]
 80027dc:	683b      	ldr	r3, [r7, #0]
 80027de:	429a      	cmp	r2, r3
 80027e0:	dbe4      	blt.n	80027ac <crc16+0x18>
 80027e2:	7dbb      	ldrb	r3, [r7, #22]
 80027e4:	021b      	lsls	r3, r3, #8
 80027e6:	b29a      	uxth	r2, r3
 80027e8:	7dfb      	ldrb	r3, [r7, #23]
 80027ea:	b29b      	uxth	r3, r3
 80027ec:	4313      	orrs	r3, r2
 80027ee:	b29b      	uxth	r3, r3
 80027f0:	b29b      	uxth	r3, r3
 80027f2:	4618      	mov	r0, r3
 80027f4:	371c      	adds	r7, #28
 80027f6:	46bd      	mov	sp, r7
 80027f8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80027fc:	4770      	bx	lr
 80027fe:	bf00      	nop
 8002800:	20000018 	.word	0x20000018
 8002804:	20000118 	.word	0x20000118

08002808 <NVIC_EnableIRQ>:
 8002808:	b480      	push	{r7}
 800280a:	b083      	sub	sp, #12
 800280c:	af00      	add	r7, sp, #0
 800280e:	4603      	mov	r3, r0
 8002810:	71fb      	strb	r3, [r7, #7]
 8002812:	4b08      	ldr	r3, [pc, #32]	; (8002834 <NVIC_EnableIRQ+0x2c>)
 8002814:	f997 2007 	ldrsb.w	r2, [r7, #7]
 8002818:	0952      	lsrs	r2, r2, #5
 800281a:	79f9      	ldrb	r1, [r7, #7]
 800281c:	f001 011f 	and.w	r1, r1, #31
 8002820:	2001      	movs	r0, #1
 8002822:	fa00 f101 	lsl.w	r1, r0, r1
 8002826:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800282a:	370c      	adds	r7, #12
 800282c:	46bd      	mov	sp, r7
 800282e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002832:	4770      	bx	lr
 8002834:	e000e100 	.word	0xe000e100

08002838 <init_spi_dma>:
 8002838:	b580      	push	{r7, lr}
 800283a:	af00      	add	r7, sp, #0
 800283c:	4b33      	ldr	r3, [pc, #204]	; (800290c <init_spi_dma+0xd4>)
 800283e:	4a33      	ldr	r2, [pc, #204]	; (800290c <init_spi_dma+0xd4>)
 8002840:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8002842:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 8002846:	631a      	str	r2, [r3, #48]	; 0x30
 8002848:	4b31      	ldr	r3, [pc, #196]	; (8002910 <init_spi_dma+0xd8>)
 800284a:	4a32      	ldr	r2, [pc, #200]	; (8002914 <init_spi_dma+0xdc>)
 800284c:	609a      	str	r2, [r3, #8]
 800284e:	4b30      	ldr	r3, [pc, #192]	; (8002910 <init_spi_dma+0xd8>)
 8002850:	4a31      	ldr	r2, [pc, #196]	; (8002918 <init_spi_dma+0xe0>)
 8002852:	60da      	str	r2, [r3, #12]
 8002854:	4b2e      	ldr	r3, [pc, #184]	; (8002910 <init_spi_dma+0xd8>)
 8002856:	2208      	movs	r2, #8
 8002858:	605a      	str	r2, [r3, #4]
 800285a:	4b2d      	ldr	r3, [pc, #180]	; (8002910 <init_spi_dma+0xd8>)
 800285c:	4a2c      	ldr	r2, [pc, #176]	; (8002910 <init_spi_dma+0xd8>)
 800285e:	6812      	ldr	r2, [r2, #0]
 8002860:	f022 6260 	bic.w	r2, r2, #234881024	; 0xe000000
 8002864:	601a      	str	r2, [r3, #0]
 8002866:	4b2a      	ldr	r3, [pc, #168]	; (8002910 <init_spi_dma+0xd8>)
 8002868:	4a29      	ldr	r2, [pc, #164]	; (8002910 <init_spi_dma+0xd8>)
 800286a:	6812      	ldr	r2, [r2, #0]
 800286c:	f022 0220 	bic.w	r2, r2, #32
 8002870:	601a      	str	r2, [r3, #0]
 8002872:	4b27      	ldr	r3, [pc, #156]	; (8002910 <init_spi_dma+0xd8>)
 8002874:	4a26      	ldr	r2, [pc, #152]	; (8002910 <init_spi_dma+0xd8>)
 8002876:	6812      	ldr	r2, [r2, #0]
 8002878:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 800287c:	601a      	str	r2, [r3, #0]
 800287e:	4b24      	ldr	r3, [pc, #144]	; (8002910 <init_spi_dma+0xd8>)
 8002880:	4a23      	ldr	r2, [pc, #140]	; (8002910 <init_spi_dma+0xd8>)
 8002882:	6812      	ldr	r2, [r2, #0]
 8002884:	f022 02c0 	bic.w	r2, r2, #192	; 0xc0
 8002888:	601a      	str	r2, [r3, #0]
 800288a:	4b21      	ldr	r3, [pc, #132]	; (8002910 <init_spi_dma+0xd8>)
 800288c:	4a20      	ldr	r2, [pc, #128]	; (8002910 <init_spi_dma+0xd8>)
 800288e:	6812      	ldr	r2, [r2, #0]
 8002890:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002894:	601a      	str	r2, [r3, #0]
 8002896:	4b1e      	ldr	r3, [pc, #120]	; (8002910 <init_spi_dma+0xd8>)
 8002898:	4a1d      	ldr	r2, [pc, #116]	; (8002910 <init_spi_dma+0xd8>)
 800289a:	6812      	ldr	r2, [r2, #0]
 800289c:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80028a0:	601a      	str	r2, [r3, #0]
 80028a2:	4b1b      	ldr	r3, [pc, #108]	; (8002910 <init_spi_dma+0xd8>)
 80028a4:	4a1a      	ldr	r2, [pc, #104]	; (8002910 <init_spi_dma+0xd8>)
 80028a6:	6812      	ldr	r2, [r2, #0]
 80028a8:	f022 72c0 	bic.w	r2, r2, #25165824	; 0x1800000
 80028ac:	601a      	str	r2, [r3, #0]
 80028ae:	4b18      	ldr	r3, [pc, #96]	; (8002910 <init_spi_dma+0xd8>)
 80028b0:	4a17      	ldr	r2, [pc, #92]	; (8002910 <init_spi_dma+0xd8>)
 80028b2:	6812      	ldr	r2, [r2, #0]
 80028b4:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 80028b8:	601a      	str	r2, [r3, #0]
 80028ba:	4b15      	ldr	r3, [pc, #84]	; (8002910 <init_spi_dma+0xd8>)
 80028bc:	4a14      	ldr	r2, [pc, #80]	; (8002910 <init_spi_dma+0xd8>)
 80028be:	6812      	ldr	r2, [r2, #0]
 80028c0:	f422 42c0 	bic.w	r2, r2, #24576	; 0x6000
 80028c4:	601a      	str	r2, [r3, #0]
 80028c6:	4b12      	ldr	r3, [pc, #72]	; (8002910 <init_spi_dma+0xd8>)
 80028c8:	4a11      	ldr	r2, [pc, #68]	; (8002910 <init_spi_dma+0xd8>)
 80028ca:	6812      	ldr	r2, [r2, #0]
 80028cc:	f422 52c0 	bic.w	r2, r2, #6144	; 0x1800
 80028d0:	601a      	str	r2, [r3, #0]
 80028d2:	4b0f      	ldr	r3, [pc, #60]	; (8002910 <init_spi_dma+0xd8>)
 80028d4:	4a0e      	ldr	r2, [pc, #56]	; (8002910 <init_spi_dma+0xd8>)
 80028d6:	6812      	ldr	r2, [r2, #0]
 80028d8:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 80028dc:	601a      	str	r2, [r3, #0]
 80028de:	4b0c      	ldr	r3, [pc, #48]	; (8002910 <init_spi_dma+0xd8>)
 80028e0:	4a0b      	ldr	r2, [pc, #44]	; (8002910 <init_spi_dma+0xd8>)
 80028e2:	6812      	ldr	r2, [r2, #0]
 80028e4:	f042 0210 	orr.w	r2, r2, #16
 80028e8:	601a      	str	r2, [r3, #0]
 80028ea:	200f      	movs	r0, #15
 80028ec:	f7ff ff8c 	bl	8002808 <NVIC_EnableIRQ>
 80028f0:	4b0a      	ldr	r3, [pc, #40]	; (800291c <init_spi_dma+0xe4>)
 80028f2:	4a0a      	ldr	r2, [pc, #40]	; (800291c <init_spi_dma+0xe4>)
 80028f4:	68d2      	ldr	r2, [r2, #12]
 80028f6:	f042 0220 	orr.w	r2, r2, #32
 80028fa:	60da      	str	r2, [r3, #12]
 80028fc:	4b04      	ldr	r3, [pc, #16]	; (8002910 <init_spi_dma+0xd8>)
 80028fe:	4a04      	ldr	r2, [pc, #16]	; (8002910 <init_spi_dma+0xd8>)
 8002900:	6812      	ldr	r2, [r2, #0]
 8002902:	f042 0201 	orr.w	r2, r2, #1
 8002906:	601a      	str	r2, [r3, #0]
 8002908:	bd80      	pop	{r7, pc}
 800290a:	bf00      	nop
 800290c:	40023800 	.word	0x40023800
 8002910:	40026070 	.word	0x40026070
 8002914:	4000380c 	.word	0x4000380c
 8002918:	20000c88 	.word	0x20000c88
 800291c:	40026000 	.word	0x40026000

08002920 <coll_pwm_set>:
 8002920:	b480      	push	{r7}
 8002922:	b083      	sub	sp, #12
 8002924:	af00      	add	r7, sp, #0
 8002926:	4603      	mov	r3, r0
 8002928:	80fb      	strh	r3, [r7, #6]
 800292a:	88fb      	ldrh	r3, [r7, #6]
 800292c:	2bc8      	cmp	r3, #200	; 0xc8
 800292e:	d902      	bls.n	8002936 <coll_pwm_set+0x16>
 8002930:	23c8      	movs	r3, #200	; 0xc8
 8002932:	80fb      	strh	r3, [r7, #6]
 8002934:	bf00      	nop
 8002936:	4b04      	ldr	r3, [pc, #16]	; (8002948 <coll_pwm_set+0x28>)
 8002938:	88fa      	ldrh	r2, [r7, #6]
 800293a:	641a      	str	r2, [r3, #64]	; 0x40
 800293c:	370c      	adds	r7, #12
 800293e:	46bd      	mov	sp, r7
 8002940:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002944:	4770      	bx	lr
 8002946:	bf00      	nop
 8002948:	40000400 	.word	0x40000400

0800294c <ind_pwm_init>:
 800294c:	b580      	push	{r7, lr}
 800294e:	af00      	add	r7, sp, #0
 8002950:	4b45      	ldr	r3, [pc, #276]	; (8002a68 <ind_pwm_init+0x11c>)
 8002952:	4a45      	ldr	r2, [pc, #276]	; (8002a68 <ind_pwm_init+0x11c>)
 8002954:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8002956:	f042 0202 	orr.w	r2, r2, #2
 800295a:	641a      	str	r2, [r3, #64]	; 0x40
 800295c:	4b43      	ldr	r3, [pc, #268]	; (8002a6c <ind_pwm_init+0x120>)
 800295e:	f240 12a3 	movw	r2, #419	; 0x1a3
 8002962:	851a      	strh	r2, [r3, #40]	; 0x28
 8002964:	4b41      	ldr	r3, [pc, #260]	; (8002a6c <ind_pwm_init+0x120>)
 8002966:	22c7      	movs	r2, #199	; 0xc7
 8002968:	62da      	str	r2, [r3, #44]	; 0x2c
 800296a:	4b40      	ldr	r3, [pc, #256]	; (8002a6c <ind_pwm_init+0x120>)
 800296c:	22b4      	movs	r2, #180	; 0xb4
 800296e:	63da      	str	r2, [r3, #60]	; 0x3c
 8002970:	4b3e      	ldr	r3, [pc, #248]	; (8002a6c <ind_pwm_init+0x120>)
 8002972:	22c8      	movs	r2, #200	; 0xc8
 8002974:	641a      	str	r2, [r3, #64]	; 0x40
 8002976:	4b3d      	ldr	r3, [pc, #244]	; (8002a6c <ind_pwm_init+0x120>)
 8002978:	4a3c      	ldr	r2, [pc, #240]	; (8002a6c <ind_pwm_init+0x120>)
 800297a:	8992      	ldrh	r2, [r2, #12]
 800297c:	b292      	uxth	r2, r2
 800297e:	f042 0201 	orr.w	r2, r2, #1
 8002982:	b292      	uxth	r2, r2
 8002984:	819a      	strh	r2, [r3, #12]
 8002986:	201d      	movs	r0, #29
 8002988:	f7ff ff3e 	bl	8002808 <NVIC_EnableIRQ>
 800298c:	4b37      	ldr	r3, [pc, #220]	; (8002a6c <ind_pwm_init+0x120>)
 800298e:	2200      	movs	r2, #0
 8002990:	839a      	strh	r2, [r3, #28]
 8002992:	4b36      	ldr	r3, [pc, #216]	; (8002a6c <ind_pwm_init+0x120>)
 8002994:	4a35      	ldr	r2, [pc, #212]	; (8002a6c <ind_pwm_init+0x120>)
 8002996:	8b92      	ldrh	r2, [r2, #28]
 8002998:	b292      	uxth	r2, r2
 800299a:	f042 0268 	orr.w	r2, r2, #104	; 0x68
 800299e:	b292      	uxth	r2, r2
 80029a0:	839a      	strh	r2, [r3, #28]
 80029a2:	4b32      	ldr	r3, [pc, #200]	; (8002a6c <ind_pwm_init+0x120>)
 80029a4:	4a31      	ldr	r2, [pc, #196]	; (8002a6c <ind_pwm_init+0x120>)
 80029a6:	8c12      	ldrh	r2, [r2, #32]
 80029a8:	b292      	uxth	r2, r2
 80029aa:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 80029ae:	b292      	uxth	r2, r2
 80029b0:	841a      	strh	r2, [r3, #32]
 80029b2:	4b2e      	ldr	r3, [pc, #184]	; (8002a6c <ind_pwm_init+0x120>)
 80029b4:	4a2d      	ldr	r2, [pc, #180]	; (8002a6c <ind_pwm_init+0x120>)
 80029b6:	8b92      	ldrh	r2, [r2, #28]
 80029b8:	b292      	uxth	r2, r2
 80029ba:	f442 42d0 	orr.w	r2, r2, #26624	; 0x6800
 80029be:	b292      	uxth	r2, r2
 80029c0:	839a      	strh	r2, [r3, #28]
 80029c2:	4b2a      	ldr	r3, [pc, #168]	; (8002a6c <ind_pwm_init+0x120>)
 80029c4:	4a29      	ldr	r2, [pc, #164]	; (8002a6c <ind_pwm_init+0x120>)
 80029c6:	8c12      	ldrh	r2, [r2, #32]
 80029c8:	b292      	uxth	r2, r2
 80029ca:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 80029ce:	b292      	uxth	r2, r2
 80029d0:	841a      	strh	r2, [r3, #32]
 80029d2:	4b26      	ldr	r3, [pc, #152]	; (8002a6c <ind_pwm_init+0x120>)
 80029d4:	4a25      	ldr	r2, [pc, #148]	; (8002a6c <ind_pwm_init+0x120>)
 80029d6:	8812      	ldrh	r2, [r2, #0]
 80029d8:	b292      	uxth	r2, r2
 80029da:	f042 0201 	orr.w	r2, r2, #1
 80029de:	b292      	uxth	r2, r2
 80029e0:	801a      	strh	r2, [r3, #0]
 80029e2:	4b21      	ldr	r3, [pc, #132]	; (8002a68 <ind_pwm_init+0x11c>)
 80029e4:	4a20      	ldr	r2, [pc, #128]	; (8002a68 <ind_pwm_init+0x11c>)
 80029e6:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80029e8:	f042 0202 	orr.w	r2, r2, #2
 80029ec:	631a      	str	r2, [r3, #48]	; 0x30
 80029ee:	4b20      	ldr	r3, [pc, #128]	; (8002a70 <ind_pwm_init+0x124>)
 80029f0:	4a1f      	ldr	r2, [pc, #124]	; (8002a70 <ind_pwm_init+0x124>)
 80029f2:	6812      	ldr	r2, [r2, #0]
 80029f4:	f022 0203 	bic.w	r2, r2, #3
 80029f8:	601a      	str	r2, [r3, #0]
 80029fa:	4b1d      	ldr	r3, [pc, #116]	; (8002a70 <ind_pwm_init+0x124>)
 80029fc:	4a1c      	ldr	r2, [pc, #112]	; (8002a70 <ind_pwm_init+0x124>)
 80029fe:	6812      	ldr	r2, [r2, #0]
 8002a00:	f042 0202 	orr.w	r2, r2, #2
 8002a04:	601a      	str	r2, [r3, #0]
 8002a06:	4b1a      	ldr	r3, [pc, #104]	; (8002a70 <ind_pwm_init+0x124>)
 8002a08:	4a19      	ldr	r2, [pc, #100]	; (8002a70 <ind_pwm_init+0x124>)
 8002a0a:	6892      	ldr	r2, [r2, #8]
 8002a0c:	f042 0203 	orr.w	r2, r2, #3
 8002a10:	609a      	str	r2, [r3, #8]
 8002a12:	4b17      	ldr	r3, [pc, #92]	; (8002a70 <ind_pwm_init+0x124>)
 8002a14:	4a16      	ldr	r2, [pc, #88]	; (8002a70 <ind_pwm_init+0x124>)
 8002a16:	6a12      	ldr	r2, [r2, #32]
 8002a18:	f022 020f 	bic.w	r2, r2, #15
 8002a1c:	621a      	str	r2, [r3, #32]
 8002a1e:	4b14      	ldr	r3, [pc, #80]	; (8002a70 <ind_pwm_init+0x124>)
 8002a20:	4a13      	ldr	r2, [pc, #76]	; (8002a70 <ind_pwm_init+0x124>)
 8002a22:	6a12      	ldr	r2, [r2, #32]
 8002a24:	f042 0202 	orr.w	r2, r2, #2
 8002a28:	621a      	str	r2, [r3, #32]
 8002a2a:	4b11      	ldr	r3, [pc, #68]	; (8002a70 <ind_pwm_init+0x124>)
 8002a2c:	4a10      	ldr	r2, [pc, #64]	; (8002a70 <ind_pwm_init+0x124>)
 8002a2e:	6812      	ldr	r2, [r2, #0]
 8002a30:	f022 020c 	bic.w	r2, r2, #12
 8002a34:	601a      	str	r2, [r3, #0]
 8002a36:	4b0e      	ldr	r3, [pc, #56]	; (8002a70 <ind_pwm_init+0x124>)
 8002a38:	4a0d      	ldr	r2, [pc, #52]	; (8002a70 <ind_pwm_init+0x124>)
 8002a3a:	6812      	ldr	r2, [r2, #0]
 8002a3c:	f042 0208 	orr.w	r2, r2, #8
 8002a40:	601a      	str	r2, [r3, #0]
 8002a42:	4b0b      	ldr	r3, [pc, #44]	; (8002a70 <ind_pwm_init+0x124>)
 8002a44:	4a0a      	ldr	r2, [pc, #40]	; (8002a70 <ind_pwm_init+0x124>)
 8002a46:	6892      	ldr	r2, [r2, #8]
 8002a48:	f042 020c 	orr.w	r2, r2, #12
 8002a4c:	609a      	str	r2, [r3, #8]
 8002a4e:	4b08      	ldr	r3, [pc, #32]	; (8002a70 <ind_pwm_init+0x124>)
 8002a50:	4a07      	ldr	r2, [pc, #28]	; (8002a70 <ind_pwm_init+0x124>)
 8002a52:	6a12      	ldr	r2, [r2, #32]
 8002a54:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8002a58:	621a      	str	r2, [r3, #32]
 8002a5a:	4b05      	ldr	r3, [pc, #20]	; (8002a70 <ind_pwm_init+0x124>)
 8002a5c:	4a04      	ldr	r2, [pc, #16]	; (8002a70 <ind_pwm_init+0x124>)
 8002a5e:	6a12      	ldr	r2, [r2, #32]
 8002a60:	f042 0220 	orr.w	r2, r2, #32
 8002a64:	621a      	str	r2, [r3, #32]
 8002a66:	bd80      	pop	{r7, pc}
 8002a68:	40023800 	.word	0x40023800
 8002a6c:	40000400 	.word	0x40000400
 8002a70:	40020400 	.word	0x40020400

08002a74 <spi_master_init>:
 8002a74:	b580      	push	{r7, lr}
 8002a76:	af00      	add	r7, sp, #0
 8002a78:	4b57      	ldr	r3, [pc, #348]	; (8002bd8 <spi_master_init+0x164>)
 8002a7a:	4a57      	ldr	r2, [pc, #348]	; (8002bd8 <spi_master_init+0x164>)
 8002a7c:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8002a7e:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 8002a82:	641a      	str	r2, [r3, #64]	; 0x40
 8002a84:	4b54      	ldr	r3, [pc, #336]	; (8002bd8 <spi_master_init+0x164>)
 8002a86:	4a54      	ldr	r2, [pc, #336]	; (8002bd8 <spi_master_init+0x164>)
 8002a88:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8002a8a:	f042 0202 	orr.w	r2, r2, #2
 8002a8e:	631a      	str	r2, [r3, #48]	; 0x30
 8002a90:	4a52      	ldr	r2, [pc, #328]	; (8002bdc <spi_master_init+0x168>)
 8002a92:	4b52      	ldr	r3, [pc, #328]	; (8002bdc <spi_master_init+0x168>)
 8002a94:	681b      	ldr	r3, [r3, #0]
 8002a96:	f023 4343 	bic.w	r3, r3, #3271557120	; 0xc3000000
 8002a9a:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
 8002a9e:	6013      	str	r3, [r2, #0]
 8002aa0:	4a4e      	ldr	r2, [pc, #312]	; (8002bdc <spi_master_init+0x168>)
 8002aa2:	4b4e      	ldr	r3, [pc, #312]	; (8002bdc <spi_master_init+0x168>)
 8002aa4:	681b      	ldr	r3, [r3, #0]
 8002aa6:	f043 4302 	orr.w	r3, r3, #2181038080	; 0x82000000
 8002aaa:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8002aae:	6013      	str	r3, [r2, #0]
 8002ab0:	4a4a      	ldr	r2, [pc, #296]	; (8002bdc <spi_master_init+0x168>)
 8002ab2:	4b4a      	ldr	r3, [pc, #296]	; (8002bdc <spi_master_init+0x168>)
 8002ab4:	689b      	ldr	r3, [r3, #8]
 8002ab6:	f043 4343 	orr.w	r3, r3, #3271557120	; 0xc3000000
 8002aba:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8002abe:	6093      	str	r3, [r2, #8]
 8002ac0:	4b46      	ldr	r3, [pc, #280]	; (8002bdc <spi_master_init+0x168>)
 8002ac2:	4a46      	ldr	r2, [pc, #280]	; (8002bdc <spi_master_init+0x168>)
 8002ac4:	6812      	ldr	r2, [r2, #0]
 8002ac6:	f022 7240 	bic.w	r2, r2, #50331648	; 0x3000000
 8002aca:	601a      	str	r2, [r3, #0]
 8002acc:	4b43      	ldr	r3, [pc, #268]	; (8002bdc <spi_master_init+0x168>)
 8002ace:	4a43      	ldr	r2, [pc, #268]	; (8002bdc <spi_master_init+0x168>)
 8002ad0:	6812      	ldr	r2, [r2, #0]
 8002ad2:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002ad6:	601a      	str	r2, [r3, #0]
 8002ad8:	4b40      	ldr	r3, [pc, #256]	; (8002bdc <spi_master_init+0x168>)
 8002ada:	4a40      	ldr	r2, [pc, #256]	; (8002bdc <spi_master_init+0x168>)
 8002adc:	6952      	ldr	r2, [r2, #20]
 8002ade:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 8002ae2:	615a      	str	r2, [r3, #20]
 8002ae4:	4b3d      	ldr	r3, [pc, #244]	; (8002bdc <spi_master_init+0x168>)
 8002ae6:	4a3d      	ldr	r2, [pc, #244]	; (8002bdc <spi_master_init+0x168>)
 8002ae8:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002aea:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 8002aee:	625a      	str	r2, [r3, #36]	; 0x24
 8002af0:	4b3a      	ldr	r3, [pc, #232]	; (8002bdc <spi_master_init+0x168>)
 8002af2:	4a3a      	ldr	r2, [pc, #232]	; (8002bdc <spi_master_init+0x168>)
 8002af4:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002af6:	f442 62a0 	orr.w	r2, r2, #1280	; 0x500
 8002afa:	625a      	str	r2, [r3, #36]	; 0x24
 8002afc:	4b37      	ldr	r3, [pc, #220]	; (8002bdc <spi_master_init+0x168>)
 8002afe:	4a37      	ldr	r2, [pc, #220]	; (8002bdc <spi_master_init+0x168>)
 8002b00:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002b02:	f022 4270 	bic.w	r2, r2, #4026531840	; 0xf0000000
 8002b06:	625a      	str	r2, [r3, #36]	; 0x24
 8002b08:	4b34      	ldr	r3, [pc, #208]	; (8002bdc <spi_master_init+0x168>)
 8002b0a:	4a34      	ldr	r2, [pc, #208]	; (8002bdc <spi_master_init+0x168>)
 8002b0c:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002b0e:	f042 42a0 	orr.w	r2, r2, #1342177280	; 0x50000000
 8002b12:	625a      	str	r2, [r3, #36]	; 0x24
 8002b14:	4b31      	ldr	r3, [pc, #196]	; (8002bdc <spi_master_init+0x168>)
 8002b16:	4a31      	ldr	r2, [pc, #196]	; (8002bdc <spi_master_init+0x168>)
 8002b18:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002b1a:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 8002b1e:	625a      	str	r2, [r3, #36]	; 0x24
 8002b20:	4b2e      	ldr	r3, [pc, #184]	; (8002bdc <spi_master_init+0x168>)
 8002b22:	4a2e      	ldr	r2, [pc, #184]	; (8002bdc <spi_master_init+0x168>)
 8002b24:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002b26:	f442 22a0 	orr.w	r2, r2, #327680	; 0x50000
 8002b2a:	625a      	str	r2, [r3, #36]	; 0x24
 8002b2c:	4b2c      	ldr	r3, [pc, #176]	; (8002be0 <spi_master_init+0x16c>)
 8002b2e:	4a2c      	ldr	r2, [pc, #176]	; (8002be0 <spi_master_init+0x16c>)
 8002b30:	8812      	ldrh	r2, [r2, #0]
 8002b32:	b292      	uxth	r2, r2
 8002b34:	f022 0238 	bic.w	r2, r2, #56	; 0x38
 8002b38:	b292      	uxth	r2, r2
 8002b3a:	801a      	strh	r2, [r3, #0]
 8002b3c:	4b28      	ldr	r3, [pc, #160]	; (8002be0 <spi_master_init+0x16c>)
 8002b3e:	4a28      	ldr	r2, [pc, #160]	; (8002be0 <spi_master_init+0x16c>)
 8002b40:	8812      	ldrh	r2, [r2, #0]
 8002b42:	b292      	uxth	r2, r2
 8002b44:	f042 0220 	orr.w	r2, r2, #32
 8002b48:	b292      	uxth	r2, r2
 8002b4a:	801a      	strh	r2, [r3, #0]
 8002b4c:	4b24      	ldr	r3, [pc, #144]	; (8002be0 <spi_master_init+0x16c>)
 8002b4e:	4a24      	ldr	r2, [pc, #144]	; (8002be0 <spi_master_init+0x16c>)
 8002b50:	8812      	ldrh	r2, [r2, #0]
 8002b52:	b292      	uxth	r2, r2
 8002b54:	f022 0203 	bic.w	r2, r2, #3
 8002b58:	b292      	uxth	r2, r2
 8002b5a:	801a      	strh	r2, [r3, #0]
 8002b5c:	4b20      	ldr	r3, [pc, #128]	; (8002be0 <spi_master_init+0x16c>)
 8002b5e:	4a20      	ldr	r2, [pc, #128]	; (8002be0 <spi_master_init+0x16c>)
 8002b60:	8812      	ldrh	r2, [r2, #0]
 8002b62:	b292      	uxth	r2, r2
 8002b64:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8002b68:	b292      	uxth	r2, r2
 8002b6a:	801a      	strh	r2, [r3, #0]
 8002b6c:	4b1c      	ldr	r3, [pc, #112]	; (8002be0 <spi_master_init+0x16c>)
 8002b6e:	4a1c      	ldr	r2, [pc, #112]	; (8002be0 <spi_master_init+0x16c>)
 8002b70:	8812      	ldrh	r2, [r2, #0]
 8002b72:	b292      	uxth	r2, r2
 8002b74:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002b78:	b292      	uxth	r2, r2
 8002b7a:	801a      	strh	r2, [r3, #0]
 8002b7c:	4b18      	ldr	r3, [pc, #96]	; (8002be0 <spi_master_init+0x16c>)
 8002b7e:	4a18      	ldr	r2, [pc, #96]	; (8002be0 <spi_master_init+0x16c>)
 8002b80:	8812      	ldrh	r2, [r2, #0]
 8002b82:	b292      	uxth	r2, r2
 8002b84:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 8002b88:	b292      	uxth	r2, r2
 8002b8a:	801a      	strh	r2, [r3, #0]
 8002b8c:	4b14      	ldr	r3, [pc, #80]	; (8002be0 <spi_master_init+0x16c>)
 8002b8e:	4a14      	ldr	r2, [pc, #80]	; (8002be0 <spi_master_init+0x16c>)
 8002b90:	8892      	ldrh	r2, [r2, #4]
 8002b92:	b292      	uxth	r2, r2
 8002b94:	f042 0204 	orr.w	r2, r2, #4
 8002b98:	b292      	uxth	r2, r2
 8002b9a:	809a      	strh	r2, [r3, #4]
 8002b9c:	4b10      	ldr	r3, [pc, #64]	; (8002be0 <spi_master_init+0x16c>)
 8002b9e:	4a10      	ldr	r2, [pc, #64]	; (8002be0 <spi_master_init+0x16c>)
 8002ba0:	8812      	ldrh	r2, [r2, #0]
 8002ba2:	b292      	uxth	r2, r2
 8002ba4:	f042 0204 	orr.w	r2, r2, #4
 8002ba8:	b292      	uxth	r2, r2
 8002baa:	801a      	strh	r2, [r3, #0]
 8002bac:	f7ff fe44 	bl	8002838 <init_spi_dma>
 8002bb0:	4b0b      	ldr	r3, [pc, #44]	; (8002be0 <spi_master_init+0x16c>)
 8002bb2:	4a0b      	ldr	r2, [pc, #44]	; (8002be0 <spi_master_init+0x16c>)
 8002bb4:	8892      	ldrh	r2, [r2, #4]
 8002bb6:	b292      	uxth	r2, r2
 8002bb8:	f042 0202 	orr.w	r2, r2, #2
 8002bbc:	b292      	uxth	r2, r2
 8002bbe:	809a      	strh	r2, [r3, #4]
 8002bc0:	4b07      	ldr	r3, [pc, #28]	; (8002be0 <spi_master_init+0x16c>)
 8002bc2:	4a07      	ldr	r2, [pc, #28]	; (8002be0 <spi_master_init+0x16c>)
 8002bc4:	8812      	ldrh	r2, [r2, #0]
 8002bc6:	b292      	uxth	r2, r2
 8002bc8:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002bcc:	b292      	uxth	r2, r2
 8002bce:	801a      	strh	r2, [r3, #0]
 8002bd0:	f7ff febc 	bl	800294c <ind_pwm_init>
 8002bd4:	bd80      	pop	{r7, pc}
 8002bd6:	bf00      	nop
 8002bd8:	40023800 	.word	0x40023800
 8002bdc:	40020400 	.word	0x40020400
 8002be0:	40003800 	.word	0x40003800

08002be4 <spi_slave_init>:
 8002be4:	b580      	push	{r7, lr}
 8002be6:	af00      	add	r7, sp, #0
 8002be8:	4b21      	ldr	r3, [pc, #132]	; (8002c70 <spi_slave_init+0x8c>)
 8002bea:	4a21      	ldr	r2, [pc, #132]	; (8002c70 <spi_slave_init+0x8c>)
 8002bec:	8812      	ldrh	r2, [r2, #0]
 8002bee:	b292      	uxth	r2, r2
 8002bf0:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8002bf4:	b292      	uxth	r2, r2
 8002bf6:	801a      	strh	r2, [r3, #0]
 8002bf8:	4b1d      	ldr	r3, [pc, #116]	; (8002c70 <spi_slave_init+0x8c>)
 8002bfa:	4a1d      	ldr	r2, [pc, #116]	; (8002c70 <spi_slave_init+0x8c>)
 8002bfc:	8812      	ldrh	r2, [r2, #0]
 8002bfe:	b292      	uxth	r2, r2
 8002c00:	f022 0203 	bic.w	r2, r2, #3
 8002c04:	b292      	uxth	r2, r2
 8002c06:	801a      	strh	r2, [r3, #0]
 8002c08:	4b19      	ldr	r3, [pc, #100]	; (8002c70 <spi_slave_init+0x8c>)
 8002c0a:	4a19      	ldr	r2, [pc, #100]	; (8002c70 <spi_slave_init+0x8c>)
 8002c0c:	8812      	ldrh	r2, [r2, #0]
 8002c0e:	b292      	uxth	r2, r2
 8002c10:	f042 0201 	orr.w	r2, r2, #1
 8002c14:	b292      	uxth	r2, r2
 8002c16:	801a      	strh	r2, [r3, #0]
 8002c18:	4b15      	ldr	r3, [pc, #84]	; (8002c70 <spi_slave_init+0x8c>)
 8002c1a:	4a15      	ldr	r2, [pc, #84]	; (8002c70 <spi_slave_init+0x8c>)
 8002c1c:	8812      	ldrh	r2, [r2, #0]
 8002c1e:	b292      	uxth	r2, r2
 8002c20:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002c24:	b292      	uxth	r2, r2
 8002c26:	801a      	strh	r2, [r3, #0]
 8002c28:	4b11      	ldr	r3, [pc, #68]	; (8002c70 <spi_slave_init+0x8c>)
 8002c2a:	4a11      	ldr	r2, [pc, #68]	; (8002c70 <spi_slave_init+0x8c>)
 8002c2c:	8812      	ldrh	r2, [r2, #0]
 8002c2e:	b292      	uxth	r2, r2
 8002c30:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 8002c34:	b292      	uxth	r2, r2
 8002c36:	801a      	strh	r2, [r3, #0]
 8002c38:	4b0d      	ldr	r3, [pc, #52]	; (8002c70 <spi_slave_init+0x8c>)
 8002c3a:	4a0d      	ldr	r2, [pc, #52]	; (8002c70 <spi_slave_init+0x8c>)
 8002c3c:	8892      	ldrh	r2, [r2, #4]
 8002c3e:	b292      	uxth	r2, r2
 8002c40:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002c44:	b292      	uxth	r2, r2
 8002c46:	809a      	strh	r2, [r3, #4]
 8002c48:	4b09      	ldr	r3, [pc, #36]	; (8002c70 <spi_slave_init+0x8c>)
 8002c4a:	4a09      	ldr	r2, [pc, #36]	; (8002c70 <spi_slave_init+0x8c>)
 8002c4c:	8812      	ldrh	r2, [r2, #0]
 8002c4e:	b292      	uxth	r2, r2
 8002c50:	f022 0204 	bic.w	r2, r2, #4
 8002c54:	b292      	uxth	r2, r2
 8002c56:	801a      	strh	r2, [r3, #0]
 8002c58:	2023      	movs	r0, #35	; 0x23
 8002c5a:	f7ff fdd5 	bl	8002808 <NVIC_EnableIRQ>
 8002c5e:	4b04      	ldr	r3, [pc, #16]	; (8002c70 <spi_slave_init+0x8c>)
 8002c60:	4a03      	ldr	r2, [pc, #12]	; (8002c70 <spi_slave_init+0x8c>)
 8002c62:	8812      	ldrh	r2, [r2, #0]
 8002c64:	b292      	uxth	r2, r2
 8002c66:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002c6a:	b292      	uxth	r2, r2
 8002c6c:	801a      	strh	r2, [r3, #0]
 8002c6e:	bd80      	pop	{r7, pc}
 8002c70:	40013000 	.word	0x40013000

08002c74 <spi_write_read>:
 8002c74:	b480      	push	{r7}
 8002c76:	b087      	sub	sp, #28
 8002c78:	af00      	add	r7, sp, #0
 8002c7a:	60f8      	str	r0, [r7, #12]
 8002c7c:	60b9      	str	r1, [r7, #8]
 8002c7e:	4613      	mov	r3, r2
 8002c80:	80fb      	strh	r3, [r7, #6]
 8002c82:	2300      	movs	r3, #0
 8002c84:	617b      	str	r3, [r7, #20]
 8002c86:	4a2a      	ldr	r2, [pc, #168]	; (8002d30 <spi_write_read+0xbc>)
 8002c88:	697b      	ldr	r3, [r7, #20]
 8002c8a:	1c59      	adds	r1, r3, #1
 8002c8c:	6179      	str	r1, [r7, #20]
 8002c8e:	68f9      	ldr	r1, [r7, #12]
 8002c90:	440b      	add	r3, r1
 8002c92:	781b      	ldrb	r3, [r3, #0]
 8002c94:	8193      	strh	r3, [r2, #12]
 8002c96:	e021      	b.n	8002cdc <spi_write_read+0x68>
 8002c98:	bf00      	nop
 8002c9a:	4b25      	ldr	r3, [pc, #148]	; (8002d30 <spi_write_read+0xbc>)
 8002c9c:	891b      	ldrh	r3, [r3, #8]
 8002c9e:	b29b      	uxth	r3, r3
 8002ca0:	f003 0302 	and.w	r3, r3, #2
 8002ca4:	2b00      	cmp	r3, #0
 8002ca6:	d0f8      	beq.n	8002c9a <spi_write_read+0x26>
 8002ca8:	4b21      	ldr	r3, [pc, #132]	; (8002d30 <spi_write_read+0xbc>)
 8002caa:	697a      	ldr	r2, [r7, #20]
 8002cac:	68f9      	ldr	r1, [r7, #12]
 8002cae:	440a      	add	r2, r1
 8002cb0:	7812      	ldrb	r2, [r2, #0]
 8002cb2:	819a      	strh	r2, [r3, #12]
 8002cb4:	bf00      	nop
 8002cb6:	4b1e      	ldr	r3, [pc, #120]	; (8002d30 <spi_write_read+0xbc>)
 8002cb8:	891b      	ldrh	r3, [r3, #8]
 8002cba:	b29b      	uxth	r3, r3
 8002cbc:	f003 0301 	and.w	r3, r3, #1
 8002cc0:	2b00      	cmp	r3, #0
 8002cc2:	d0f8      	beq.n	8002cb6 <spi_write_read+0x42>
 8002cc4:	697b      	ldr	r3, [r7, #20]
 8002cc6:	3b01      	subs	r3, #1
 8002cc8:	68ba      	ldr	r2, [r7, #8]
 8002cca:	4413      	add	r3, r2
 8002ccc:	4a18      	ldr	r2, [pc, #96]	; (8002d30 <spi_write_read+0xbc>)
 8002cce:	8992      	ldrh	r2, [r2, #12]
 8002cd0:	b292      	uxth	r2, r2
 8002cd2:	b2d2      	uxtb	r2, r2
 8002cd4:	701a      	strb	r2, [r3, #0]
 8002cd6:	697b      	ldr	r3, [r7, #20]
 8002cd8:	3301      	adds	r3, #1
 8002cda:	617b      	str	r3, [r7, #20]
 8002cdc:	88fa      	ldrh	r2, [r7, #6]
 8002cde:	697b      	ldr	r3, [r7, #20]
 8002ce0:	429a      	cmp	r2, r3
 8002ce2:	dcd9      	bgt.n	8002c98 <spi_write_read+0x24>
 8002ce4:	bf00      	nop
 8002ce6:	4b12      	ldr	r3, [pc, #72]	; (8002d30 <spi_write_read+0xbc>)
 8002ce8:	891b      	ldrh	r3, [r3, #8]
 8002cea:	b29b      	uxth	r3, r3
 8002cec:	f003 0301 	and.w	r3, r3, #1
 8002cf0:	2b00      	cmp	r3, #0
 8002cf2:	d0f8      	beq.n	8002ce6 <spi_write_read+0x72>
 8002cf4:	88fb      	ldrh	r3, [r7, #6]
 8002cf6:	3b01      	subs	r3, #1
 8002cf8:	68ba      	ldr	r2, [r7, #8]
 8002cfa:	4413      	add	r3, r2
 8002cfc:	4a0c      	ldr	r2, [pc, #48]	; (8002d30 <spi_write_read+0xbc>)
 8002cfe:	8992      	ldrh	r2, [r2, #12]
 8002d00:	b292      	uxth	r2, r2
 8002d02:	b2d2      	uxtb	r2, r2
 8002d04:	701a      	strb	r2, [r3, #0]
 8002d06:	bf00      	nop
 8002d08:	4b09      	ldr	r3, [pc, #36]	; (8002d30 <spi_write_read+0xbc>)
 8002d0a:	891b      	ldrh	r3, [r3, #8]
 8002d0c:	b29b      	uxth	r3, r3
 8002d0e:	f003 0302 	and.w	r3, r3, #2
 8002d12:	2b00      	cmp	r3, #0
 8002d14:	d0f8      	beq.n	8002d08 <spi_write_read+0x94>
 8002d16:	bf00      	nop
 8002d18:	4b05      	ldr	r3, [pc, #20]	; (8002d30 <spi_write_read+0xbc>)
 8002d1a:	891b      	ldrh	r3, [r3, #8]
 8002d1c:	b29b      	uxth	r3, r3
 8002d1e:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002d22:	2b00      	cmp	r3, #0
 8002d24:	d1f8      	bne.n	8002d18 <spi_write_read+0xa4>
 8002d26:	371c      	adds	r7, #28
 8002d28:	46bd      	mov	sp, r7
 8002d2a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002d2e:	4770      	bx	lr
 8002d30:	40003800 	.word	0x40003800

08002d34 <SPI1_IRQHandler>:
 8002d34:	b480      	push	{r7}
 8002d36:	af00      	add	r7, sp, #0
 8002d38:	4b0a      	ldr	r3, [pc, #40]	; (8002d64 <SPI1_IRQHandler+0x30>)
 8002d3a:	891b      	ldrh	r3, [r3, #8]
 8002d3c:	b29b      	uxth	r3, r3
 8002d3e:	f003 0301 	and.w	r3, r3, #1
 8002d42:	2b00      	cmp	r3, #0
 8002d44:	d008      	beq.n	8002d58 <SPI1_IRQHandler+0x24>
 8002d46:	4b08      	ldr	r3, [pc, #32]	; (8002d68 <SPI1_IRQHandler+0x34>)
 8002d48:	2201      	movs	r2, #1
 8002d4a:	601a      	str	r2, [r3, #0]
 8002d4c:	4b05      	ldr	r3, [pc, #20]	; (8002d64 <SPI1_IRQHandler+0x30>)
 8002d4e:	899b      	ldrh	r3, [r3, #12]
 8002d50:	b29b      	uxth	r3, r3
 8002d52:	b2da      	uxtb	r2, r3
 8002d54:	4b05      	ldr	r3, [pc, #20]	; (8002d6c <SPI1_IRQHandler+0x38>)
 8002d56:	701a      	strb	r2, [r3, #0]
 8002d58:	4b02      	ldr	r3, [pc, #8]	; (8002d64 <SPI1_IRQHandler+0x30>)
 8002d5a:	891b      	ldrh	r3, [r3, #8]
 8002d5c:	46bd      	mov	sp, r7
 8002d5e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002d62:	4770      	bx	lr
 8002d64:	40013000 	.word	0x40013000
 8002d68:	20000c90 	.word	0x20000c90
 8002d6c:	20000c94 	.word	0x20000c94

08002d70 <check_current>:
 8002d70:	b480      	push	{r7}
 8002d72:	af00      	add	r7, sp, #0
 8002d74:	4b0b      	ldr	r3, [pc, #44]	; (8002da4 <check_current+0x34>)
 8002d76:	681b      	ldr	r3, [r3, #0]
 8002d78:	129b      	asrs	r3, r3, #10
 8002d7a:	4a0b      	ldr	r2, [pc, #44]	; (8002da8 <check_current+0x38>)
 8002d7c:	fb02 f203 	mul.w	r2, r2, r3
 8002d80:	2300      	movs	r3, #0
 8002d82:	4413      	add	r3, r2
 8002d84:	f503 7300 	add.w	r3, r3, #512	; 0x200
 8002d88:	139a      	asrs	r2, r3, #14
 8002d8a:	4b08      	ldr	r3, [pc, #32]	; (8002dac <check_current+0x3c>)
 8002d8c:	601a      	str	r2, [r3, #0]
 8002d8e:	4b07      	ldr	r3, [pc, #28]	; (8002dac <check_current+0x3c>)
 8002d90:	681b      	ldr	r3, [r3, #0]
 8002d92:	2b00      	cmp	r3, #0
 8002d94:	da02      	bge.n	8002d9c <check_current+0x2c>
 8002d96:	4b05      	ldr	r3, [pc, #20]	; (8002dac <check_current+0x3c>)
 8002d98:	2200      	movs	r2, #0
 8002d9a:	601a      	str	r2, [r3, #0]
 8002d9c:	46bd      	mov	sp, r7
 8002d9e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002da2:	4770      	bx	lr
 8002da4:	20001ca4 	.word	0x20001ca4
 8002da8:	0001d2c9 	.word	0x0001d2c9
 8002dac:	20000238 	.word	0x20000238

08002db0 <set_refcurrent>:
 8002db0:	b490      	push	{r4, r7}
 8002db2:	b082      	sub	sp, #8
 8002db4:	af00      	add	r7, sp, #0
 8002db6:	6078      	str	r0, [r7, #4]
 8002db8:	4b1b      	ldr	r3, [pc, #108]	; (8002e28 <set_refcurrent+0x78>)
 8002dba:	681b      	ldr	r3, [r3, #0]
 8002dbc:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002dc0:	0c9b      	lsrs	r3, r3, #18
 8002dc2:	1d5a      	adds	r2, r3, #5
 8002dc4:	4b19      	ldr	r3, [pc, #100]	; (8002e2c <set_refcurrent+0x7c>)
 8002dc6:	fba3 1302 	umull	r1, r3, r3, r2
 8002dca:	08dc      	lsrs	r4, r3, #3
 8002dcc:	f240 2356 	movw	r3, #598	; 0x256
 8002dd0:	429c      	cmp	r4, r3
 8002dd2:	d902      	bls.n	8002dda <set_refcurrent+0x2a>
 8002dd4:	f240 2457 	movw	r4, #599	; 0x257
 8002dd8:	bf00      	nop
 8002dda:	4b15      	ldr	r3, [pc, #84]	; (8002e30 <set_refcurrent+0x80>)
 8002ddc:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 8002de0:	4b14      	ldr	r3, [pc, #80]	; (8002e34 <set_refcurrent+0x84>)
 8002de2:	681b      	ldr	r3, [r3, #0]
 8002de4:	f1c3 0396 	rsb	r3, r3, #150	; 0x96
 8002de8:	fb04 f203 	mul.w	r2, r4, r3
 8002dec:	4b12      	ldr	r3, [pc, #72]	; (8002e38 <set_refcurrent+0x88>)
 8002dee:	fba3 1302 	umull	r1, r3, r3, r2
 8002df2:	08dc      	lsrs	r4, r3, #3
 8002df4:	687b      	ldr	r3, [r7, #4]
 8002df6:	42a3      	cmp	r3, r4
 8002df8:	d904      	bls.n	8002e04 <set_refcurrent+0x54>
 8002dfa:	607c      	str	r4, [r7, #4]
 8002dfc:	687b      	ldr	r3, [r7, #4]
 8002dfe:	2b00      	cmp	r3, #0
 8002e00:	d000      	beq.n	8002e04 <set_refcurrent+0x54>
 8002e02:	bf00      	nop
 8002e04:	4b0d      	ldr	r3, [pc, #52]	; (8002e3c <set_refcurrent+0x8c>)
 8002e06:	601c      	str	r4, [r3, #0]
 8002e08:	4b0d      	ldr	r3, [pc, #52]	; (8002e40 <set_refcurrent+0x90>)
 8002e0a:	687a      	ldr	r2, [r7, #4]
 8002e0c:	fb02 f203 	mul.w	r2, r2, r3
 8002e10:	2300      	movs	r3, #0
 8002e12:	4413      	add	r3, r2
 8002e14:	f503 2300 	add.w	r3, r3, #524288	; 0x80000
 8002e18:	0d1b      	lsrs	r3, r3, #20
 8002e1a:	461a      	mov	r2, r3
 8002e1c:	4b09      	ldr	r3, [pc, #36]	; (8002e44 <set_refcurrent+0x94>)
 8002e1e:	601a      	str	r2, [r3, #0]
 8002e20:	3708      	adds	r7, #8
 8002e22:	46bd      	mov	sp, r7
 8002e24:	bc90      	pop	{r4, r7}
 8002e26:	4770      	bx	lr
 8002e28:	20000234 	.word	0x20000234
 8002e2c:	cccccccd 	.word	0xcccccccd
 8002e30:	08003d58 	.word	0x08003d58
 8002e34:	20002cc0 	.word	0x20002cc0
 8002e38:	10624dd3 	.word	0x10624dd3
 8002e3c:	20000230 	.word	0x20000230
 8002e40:	00023199 	.word	0x00023199
 8002e44:	20002cac 	.word	0x20002cac

08002e48 <check_voltage>:
 8002e48:	b480      	push	{r7}
 8002e4a:	af00      	add	r7, sp, #0
 8002e4c:	4b08      	ldr	r3, [pc, #32]	; (8002e70 <check_voltage+0x28>)
 8002e4e:	681b      	ldr	r3, [r3, #0]
 8002e50:	0a9b      	lsrs	r3, r3, #10
 8002e52:	4a08      	ldr	r2, [pc, #32]	; (8002e74 <check_voltage+0x2c>)
 8002e54:	fb02 f203 	mul.w	r2, r2, r3
 8002e58:	4b07      	ldr	r3, [pc, #28]	; (8002e78 <check_voltage+0x30>)
 8002e5a:	441a      	add	r2, r3
 8002e5c:	4b07      	ldr	r3, [pc, #28]	; (8002e7c <check_voltage+0x34>)
 8002e5e:	681b      	ldr	r3, [r3, #0]
 8002e60:	3b02      	subs	r3, #2
 8002e62:	40da      	lsrs	r2, r3
 8002e64:	4b06      	ldr	r3, [pc, #24]	; (8002e80 <check_voltage+0x38>)
 8002e66:	601a      	str	r2, [r3, #0]
 8002e68:	46bd      	mov	sp, r7
 8002e6a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e6e:	4770      	bx	lr
 8002e70:	20000c9c 	.word	0x20000c9c
 8002e74:	0004a84c 	.word	0x0004a84c
 8002e78:	fffef0fc 	.word	0xfffef0fc
 8002e7c:	20002cd0 	.word	0x20002cd0
 8002e80:	20000234 	.word	0x20000234

08002e84 <update_mode>:
 8002e84:	b580      	push	{r7, lr}
 8002e86:	b082      	sub	sp, #8
 8002e88:	af00      	add	r7, sp, #0
 8002e8a:	f44f 03f0 	mov.w	r3, #7864320	; 0x780000
 8002e8e:	607b      	str	r3, [r7, #4]
 8002e90:	f44f 03a0 	mov.w	r3, #5242880	; 0x500000
 8002e94:	603b      	str	r3, [r7, #0]
 8002e96:	4b34      	ldr	r3, [pc, #208]	; (8002f68 <update_mode+0xe4>)
 8002e98:	681b      	ldr	r3, [r3, #0]
 8002e9a:	2b00      	cmp	r3, #0
 8002e9c:	d009      	beq.n	8002eb2 <update_mode+0x2e>
 8002e9e:	4b33      	ldr	r3, [pc, #204]	; (8002f6c <update_mode+0xe8>)
 8002ea0:	4a32      	ldr	r2, [pc, #200]	; (8002f6c <update_mode+0xe8>)
 8002ea2:	6952      	ldr	r2, [r2, #20]
 8002ea4:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002ea8:	615a      	str	r2, [r3, #20]
 8002eaa:	4b31      	ldr	r3, [pc, #196]	; (8002f70 <update_mode+0xec>)
 8002eac:	2200      	movs	r2, #0
 8002eae:	601a      	str	r2, [r3, #0]
 8002eb0:	e057      	b.n	8002f62 <update_mode+0xde>
 8002eb2:	4b30      	ldr	r3, [pc, #192]	; (8002f74 <update_mode+0xf0>)
 8002eb4:	681a      	ldr	r2, [r3, #0]
 8002eb6:	683b      	ldr	r3, [r7, #0]
 8002eb8:	429a      	cmp	r2, r3
 8002eba:	d209      	bcs.n	8002ed0 <update_mode+0x4c>
 8002ebc:	4b2b      	ldr	r3, [pc, #172]	; (8002f6c <update_mode+0xe8>)
 8002ebe:	4a2b      	ldr	r2, [pc, #172]	; (8002f6c <update_mode+0xe8>)
 8002ec0:	6952      	ldr	r2, [r2, #20]
 8002ec2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002ec6:	615a      	str	r2, [r3, #20]
 8002ec8:	4b29      	ldr	r3, [pc, #164]	; (8002f70 <update_mode+0xec>)
 8002eca:	2200      	movs	r2, #0
 8002ecc:	601a      	str	r2, [r3, #0]
 8002ece:	e03e      	b.n	8002f4e <update_mode+0xca>
 8002ed0:	4b28      	ldr	r3, [pc, #160]	; (8002f74 <update_mode+0xf0>)
 8002ed2:	681a      	ldr	r2, [r3, #0]
 8002ed4:	687b      	ldr	r3, [r7, #4]
 8002ed6:	429a      	cmp	r2, r3
 8002ed8:	d939      	bls.n	8002f4e <update_mode+0xca>
 8002eda:	4b24      	ldr	r3, [pc, #144]	; (8002f6c <update_mode+0xe8>)
 8002edc:	4a23      	ldr	r2, [pc, #140]	; (8002f6c <update_mode+0xe8>)
 8002ede:	6952      	ldr	r2, [r2, #20]
 8002ee0:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 8002ee4:	615a      	str	r2, [r3, #20]
 8002ee6:	4b24      	ldr	r3, [pc, #144]	; (8002f78 <update_mode+0xf4>)
 8002ee8:	889b      	ldrh	r3, [r3, #4]
 8002eea:	2b01      	cmp	r3, #1
 8002eec:	d013      	beq.n	8002f16 <update_mode+0x92>
 8002eee:	2b01      	cmp	r3, #1
 8002ef0:	dc02      	bgt.n	8002ef8 <update_mode+0x74>
 8002ef2:	2b00      	cmp	r3, #0
 8002ef4:	d005      	beq.n	8002f02 <update_mode+0x7e>
 8002ef6:	e02a      	b.n	8002f4e <update_mode+0xca>
 8002ef8:	2b02      	cmp	r3, #2
 8002efa:	d012      	beq.n	8002f22 <update_mode+0x9e>
 8002efc:	2b64      	cmp	r3, #100	; 0x64
 8002efe:	d020      	beq.n	8002f42 <update_mode+0xbe>
 8002f00:	e025      	b.n	8002f4e <update_mode+0xca>
 8002f02:	4b1b      	ldr	r3, [pc, #108]	; (8002f70 <update_mode+0xec>)
 8002f04:	2200      	movs	r2, #0
 8002f06:	601a      	str	r2, [r3, #0]
 8002f08:	4b18      	ldr	r3, [pc, #96]	; (8002f6c <update_mode+0xe8>)
 8002f0a:	4a18      	ldr	r2, [pc, #96]	; (8002f6c <update_mode+0xe8>)
 8002f0c:	6952      	ldr	r2, [r2, #20]
 8002f0e:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002f12:	615a      	str	r2, [r3, #20]
 8002f14:	e01b      	b.n	8002f4e <update_mode+0xca>
 8002f16:	4b18      	ldr	r3, [pc, #96]	; (8002f78 <update_mode+0xf4>)
 8002f18:	881b      	ldrh	r3, [r3, #0]
 8002f1a:	4618      	mov	r0, r3
 8002f1c:	f7ff ff48 	bl	8002db0 <set_refcurrent>
 8002f20:	e015      	b.n	8002f4e <update_mode+0xca>
 8002f22:	4b14      	ldr	r3, [pc, #80]	; (8002f74 <update_mode+0xf0>)
 8002f24:	681b      	ldr	r3, [r3, #0]
 8002f26:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002f2a:	0c9b      	lsrs	r3, r3, #18
 8002f2c:	2264      	movs	r2, #100	; 0x64
 8002f2e:	fb02 f203 	mul.w	r2, r2, r3
 8002f32:	4b11      	ldr	r3, [pc, #68]	; (8002f78 <update_mode+0xf4>)
 8002f34:	885b      	ldrh	r3, [r3, #2]
 8002f36:	fbb2 f3f3 	udiv	r3, r2, r3
 8002f3a:	4618      	mov	r0, r3
 8002f3c:	f7ff ff38 	bl	8002db0 <set_refcurrent>
 8002f40:	e005      	b.n	8002f4e <update_mode+0xca>
 8002f42:	4b0d      	ldr	r3, [pc, #52]	; (8002f78 <update_mode+0xf4>)
 8002f44:	881b      	ldrh	r3, [r3, #0]
 8002f46:	461a      	mov	r2, r3
 8002f48:	4b09      	ldr	r3, [pc, #36]	; (8002f70 <update_mode+0xec>)
 8002f4a:	601a      	str	r2, [r3, #0]
 8002f4c:	bf00      	nop
 8002f4e:	4b0a      	ldr	r3, [pc, #40]	; (8002f78 <update_mode+0xf4>)
 8002f50:	88db      	ldrh	r3, [r3, #6]
 8002f52:	461a      	mov	r2, r3
 8002f54:	4b09      	ldr	r3, [pc, #36]	; (8002f7c <update_mode+0xf8>)
 8002f56:	601a      	str	r2, [r3, #0]
 8002f58:	4b07      	ldr	r3, [pc, #28]	; (8002f78 <update_mode+0xf4>)
 8002f5a:	891b      	ldrh	r3, [r3, #8]
 8002f5c:	461a      	mov	r2, r3
 8002f5e:	4b08      	ldr	r3, [pc, #32]	; (8002f80 <update_mode+0xfc>)
 8002f60:	601a      	str	r2, [r3, #0]
 8002f62:	3708      	adds	r7, #8
 8002f64:	46bd      	mov	sp, r7
 8002f66:	bd80      	pop	{r7, pc}
 8002f68:	2000022c 	.word	0x2000022c
 8002f6c:	40021000 	.word	0x40021000
 8002f70:	20002cac 	.word	0x20002cac
 8002f74:	20000234 	.word	0x20000234
 8002f78:	20000a64 	.word	0x20000a64
 8002f7c:	20000218 	.word	0x20000218
 8002f80:	20002cb4 	.word	0x20002cb4

08002f84 <check_temp>:
 8002f84:	b580      	push	{r7, lr}
 8002f86:	b082      	sub	sp, #8
 8002f88:	af00      	add	r7, sp, #0
 8002f8a:	4b21      	ldr	r3, [pc, #132]	; (8003010 <check_temp+0x8c>)
 8002f8c:	681b      	ldr	r3, [r3, #0]
 8002f8e:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002f92:	0c9b      	lsrs	r3, r3, #18
 8002f94:	1d5a      	adds	r2, r3, #5
 8002f96:	4b1f      	ldr	r3, [pc, #124]	; (8003014 <check_temp+0x90>)
 8002f98:	fba3 1302 	umull	r1, r3, r3, r2
 8002f9c:	08db      	lsrs	r3, r3, #3
 8002f9e:	607b      	str	r3, [r7, #4]
 8002fa0:	2300      	movs	r3, #0
 8002fa2:	603b      	str	r3, [r7, #0]
 8002fa4:	4b1c      	ldr	r3, [pc, #112]	; (8003018 <check_temp+0x94>)
 8002fa6:	681b      	ldr	r3, [r3, #0]
 8002fa8:	687a      	ldr	r2, [r7, #4]
 8002faa:	fb02 f203 	mul.w	r2, r2, r3
 8002fae:	4b1b      	ldr	r3, [pc, #108]	; (800301c <check_temp+0x98>)
 8002fb0:	601a      	str	r2, [r3, #0]
 8002fb2:	2311      	movs	r3, #17
 8002fb4:	4a19      	ldr	r2, [pc, #100]	; (800301c <check_temp+0x98>)
 8002fb6:	6812      	ldr	r2, [r2, #0]
 8002fb8:	fb02 f303 	mul.w	r3, r2, r3
 8002fbc:	f503 4343 	add.w	r3, r3, #49920	; 0xc300
 8002fc0:	3350      	adds	r3, #80	; 0x50
 8002fc2:	095a      	lsrs	r2, r3, #5
 8002fc4:	4b16      	ldr	r3, [pc, #88]	; (8003020 <check_temp+0x9c>)
 8002fc6:	fba3 1302 	umull	r1, r3, r3, r2
 8002fca:	09da      	lsrs	r2, r3, #7
 8002fcc:	4b15      	ldr	r3, [pc, #84]	; (8003024 <check_temp+0xa0>)
 8002fce:	681b      	ldr	r3, [r3, #0]
 8002fd0:	441a      	add	r2, r3
 8002fd2:	4b15      	ldr	r3, [pc, #84]	; (8003028 <check_temp+0xa4>)
 8002fd4:	601a      	str	r2, [r3, #0]
 8002fd6:	4b14      	ldr	r3, [pc, #80]	; (8003028 <check_temp+0xa4>)
 8002fd8:	681b      	ldr	r3, [r3, #0]
 8002fda:	2b27      	cmp	r3, #39	; 0x27
 8002fdc:	d806      	bhi.n	8002fec <check_temp+0x68>
 8002fde:	2050      	movs	r0, #80	; 0x50
 8002fe0:	f7ff fc9e 	bl	8002920 <coll_pwm_set>
 8002fe4:	4b11      	ldr	r3, [pc, #68]	; (800302c <check_temp+0xa8>)
 8002fe6:	2200      	movs	r2, #0
 8002fe8:	601a      	str	r2, [r3, #0]
 8002fea:	e00d      	b.n	8003008 <check_temp+0x84>
 8002fec:	4b0e      	ldr	r3, [pc, #56]	; (8003028 <check_temp+0xa4>)
 8002fee:	681b      	ldr	r3, [r3, #0]
 8002ff0:	2b32      	cmp	r3, #50	; 0x32
 8002ff2:	d909      	bls.n	8003008 <check_temp+0x84>
 8002ff4:	2001      	movs	r0, #1
 8002ff6:	f7ff fc93 	bl	8002920 <coll_pwm_set>
 8002ffa:	4b0b      	ldr	r3, [pc, #44]	; (8003028 <check_temp+0xa4>)
 8002ffc:	681b      	ldr	r3, [r3, #0]
 8002ffe:	2b96      	cmp	r3, #150	; 0x96
 8003000:	d902      	bls.n	8003008 <check_temp+0x84>
 8003002:	4b0a      	ldr	r3, [pc, #40]	; (800302c <check_temp+0xa8>)
 8003004:	2201      	movs	r2, #1
 8003006:	601a      	str	r2, [r3, #0]
 8003008:	3708      	adds	r7, #8
 800300a:	46bd      	mov	sp, r7
 800300c:	bd80      	pop	{r7, pc}
 800300e:	bf00      	nop
 8003010:	20000234 	.word	0x20000234
 8003014:	cccccccd 	.word	0xcccccccd
 8003018:	20000238 	.word	0x20000238
 800301c:	2000023c 	.word	0x2000023c
 8003020:	0a7c5ac5 	.word	0x0a7c5ac5
 8003024:	20002cc0 	.word	0x20002cc0
 8003028:	20000240 	.word	0x20000240
 800302c:	2000022c 	.word	0x2000022c

08003030 <TIM3_IRQHandler>:
 8003030:	b580      	push	{r7, lr}
 8003032:	af00      	add	r7, sp, #0
 8003034:	4b16      	ldr	r3, [pc, #88]	; (8003090 <TIM3_IRQHandler+0x60>)
 8003036:	4a16      	ldr	r2, [pc, #88]	; (8003090 <TIM3_IRQHandler+0x60>)
 8003038:	6952      	ldr	r2, [r2, #20]
 800303a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800303e:	615a      	str	r2, [r3, #20]
 8003040:	4b14      	ldr	r3, [pc, #80]	; (8003094 <TIM3_IRQHandler+0x64>)
 8003042:	4a14      	ldr	r2, [pc, #80]	; (8003094 <TIM3_IRQHandler+0x64>)
 8003044:	8a12      	ldrh	r2, [r2, #16]
 8003046:	b292      	uxth	r2, r2
 8003048:	f022 0201 	bic.w	r2, r2, #1
 800304c:	b292      	uxth	r2, r2
 800304e:	821a      	strh	r2, [r3, #16]
 8003050:	4b11      	ldr	r3, [pc, #68]	; (8003098 <TIM3_IRQHandler+0x68>)
 8003052:	4a11      	ldr	r2, [pc, #68]	; (8003098 <TIM3_IRQHandler+0x68>)
 8003054:	6812      	ldr	r2, [r2, #0]
 8003056:	f042 0201 	orr.w	r2, r2, #1
 800305a:	601a      	str	r2, [r3, #0]
 800305c:	4b0f      	ldr	r3, [pc, #60]	; (800309c <TIM3_IRQHandler+0x6c>)
 800305e:	781b      	ldrb	r3, [r3, #0]
 8003060:	461a      	mov	r2, r3
 8003062:	4b0f      	ldr	r3, [pc, #60]	; (80030a0 <TIM3_IRQHandler+0x70>)
 8003064:	601a      	str	r2, [r3, #0]
 8003066:	23a2      	movs	r3, #162	; 0xa2
 8003068:	4618      	mov	r0, r3
 800306a:	f000 faf3 	bl	8003654 <i2c_start>
 800306e:	f000 fb11 	bl	8003694 <update_attenuator>
 8003072:	f7ff fee9 	bl	8002e48 <check_voltage>
 8003076:	f7ff fe7b 	bl	8002d70 <check_current>
 800307a:	f7ff ff83 	bl	8002f84 <check_temp>
 800307e:	f7ff ff01 	bl	8002e84 <update_mode>
 8003082:	4b03      	ldr	r3, [pc, #12]	; (8003090 <TIM3_IRQHandler+0x60>)
 8003084:	4a02      	ldr	r2, [pc, #8]	; (8003090 <TIM3_IRQHandler+0x60>)
 8003086:	6952      	ldr	r2, [r2, #20]
 8003088:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 800308c:	615a      	str	r2, [r3, #20]
 800308e:	bd80      	pop	{r7, pc}
 8003090:	40020000 	.word	0x40020000
 8003094:	40000400 	.word	0x40000400
 8003098:	40026070 	.word	0x40026070
 800309c:	20002cc4 	.word	0x20002cc4
 80030a0:	20002cc0 	.word	0x20002cc0

080030a4 <DMA1_Stream4_IRQHandler>:
 80030a4:	b480      	push	{r7}
 80030a6:	af00      	add	r7, sp, #0
 80030a8:	4b07      	ldr	r3, [pc, #28]	; (80030c8 <DMA1_Stream4_IRQHandler+0x24>)
 80030aa:	4a07      	ldr	r2, [pc, #28]	; (80030c8 <DMA1_Stream4_IRQHandler+0x24>)
 80030ac:	68d2      	ldr	r2, [r2, #12]
 80030ae:	f042 0220 	orr.w	r2, r2, #32
 80030b2:	60da      	str	r2, [r3, #12]
 80030b4:	4b05      	ldr	r3, [pc, #20]	; (80030cc <DMA1_Stream4_IRQHandler+0x28>)
 80030b6:	4a05      	ldr	r2, [pc, #20]	; (80030cc <DMA1_Stream4_IRQHandler+0x28>)
 80030b8:	6812      	ldr	r2, [r2, #0]
 80030ba:	f022 0201 	bic.w	r2, r2, #1
 80030be:	601a      	str	r2, [r3, #0]
 80030c0:	46bd      	mov	sp, r7
 80030c2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80030c6:	4770      	bx	lr
 80030c8:	40026000 	.word	0x40026000
 80030cc:	40026070 	.word	0x40026070

080030d0 <reg_init>:
 80030d0:	4b03      	ldr	r3, [pc, #12]	; (80030e0 <reg_init+0x10>)
 80030d2:	f44f 71fa 	mov.w	r1, #500	; 0x1f4
 80030d6:	2200      	movs	r2, #0
 80030d8:	80d9      	strh	r1, [r3, #6]
 80030da:	811a      	strh	r2, [r3, #8]
 80030dc:	4770      	bx	lr
 80030de:	bf00      	nop
 80030e0:	20000a64 	.word	0x20000a64

080030e4 <ADC_IRQHandler>:
 80030e4:	492f      	ldr	r1, [pc, #188]	; (80031a4 <ADC_IRQHandler+0xc0>)
 80030e6:	4b30      	ldr	r3, [pc, #192]	; (80031a8 <ADC_IRQHandler+0xc4>)
 80030e8:	e92d 07f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl}
 80030ec:	684d      	ldr	r5, [r1, #4]
 80030ee:	4e2f      	ldr	r6, [pc, #188]	; (80031ac <ADC_IRQHandler+0xc8>)
 80030f0:	6cd8      	ldr	r0, [r3, #76]	; 0x4c
 80030f2:	6832      	ldr	r2, [r6, #0]
 80030f4:	f8d1 a000 	ldr.w	sl, [r1]
 80030f8:	4b2d      	ldr	r3, [pc, #180]	; (80031b0 <ADC_IRQHandler+0xcc>)
 80030fa:	f8df 80c8 	ldr.w	r8, [pc, #200]	; 80031c4 <ADC_IRQHandler+0xe0>
 80030fe:	f853 4cec 	ldr.w	r4, [r3, #-236]
 8003102:	4f2c      	ldr	r7, [pc, #176]	; (80031b4 <ADC_IRQHandler+0xd0>)
 8003104:	eb01 0685 	add.w	r6, r1, r5, lsl #2
 8003108:	f5c0 607f 	rsb	r0, r0, #4080	; 0xff0
 800310c:	f8d6 9008 	ldr.w	r9, [r6, #8]
 8003110:	300f      	adds	r0, #15
 8003112:	60b0      	str	r0, [r6, #8]
 8003114:	4450      	add	r0, sl
 8003116:	ebc9 0000 	rsb	r0, r9, r0
 800311a:	6008      	str	r0, [r1, #0]
 800311c:	f8d8 004c 	ldr.w	r0, [r8, #76]	; 0x4c
 8003120:	f853 9cf0 	ldr.w	r9, [r3, #-240]
 8003124:	eb03 0684 	add.w	r6, r3, r4, lsl #2
 8003128:	f5c0 6055 	rsb	r0, r0, #3408	; 0xd50
 800312c:	3003      	adds	r0, #3
 800312e:	f856 8ce8 	ldr.w	r8, [r6, #-232]
 8003132:	f846 0ce8 	str.w	r0, [r6, #-232]
 8003136:	eb00 0609 	add.w	r6, r0, r9
 800313a:	ebc8 0606 	rsb	r6, r8, r6
 800313e:	f843 6cf0 	str.w	r6, [r3, #-240]
 8003142:	f8d3 6f18 	ldr.w	r6, [r3, #3864]	; 0xf18
 8003146:	1a30      	subs	r0, r6, r0
 8003148:	f8d3 6f1c 	ldr.w	r6, [r3, #3868]	; 0xf1c
 800314c:	3501      	adds	r5, #1
 800314e:	fb02 6200 	mla	r2, r2, r0, r6
 8003152:	3401      	adds	r4, #1
 8003154:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8003158:	f3c4 0409 	ubfx	r4, r4, #0, #10
 800315c:	42ba      	cmp	r2, r7
 800315e:	604d      	str	r5, [r1, #4]
 8003160:	f843 4cec 	str.w	r4, [r3, #-236]
 8003164:	4611      	mov	r1, r2
 8003166:	dc19      	bgt.n	800319c <ADC_IRQHandler+0xb8>
 8003168:	4c13      	ldr	r4, [pc, #76]	; (80031b8 <ADC_IRQHandler+0xd4>)
 800316a:	42a2      	cmp	r2, r4
 800316c:	da01      	bge.n	8003172 <ADC_IRQHandler+0x8e>
 800316e:	4622      	mov	r2, r4
 8003170:	4621      	mov	r1, r4
 8003172:	f8d3 4f20 	ldr.w	r4, [r3, #3872]	; 0xf20
 8003176:	f8b3 7f24 	ldrh.w	r7, [r3, #3876]	; 0xf24
 800317a:	4e10      	ldr	r6, [pc, #64]	; (80031bc <ADC_IRQHandler+0xd8>)
 800317c:	4d10      	ldr	r5, [pc, #64]	; (80031c0 <ADC_IRQHandler+0xdc>)
 800317e:	f8c3 1f1c 	str.w	r1, [r3, #3868]	; 0xf1c
 8003182:	fb04 2200 	mla	r2, r4, r0, r2
 8003186:	1352      	asrs	r2, r2, #13
 8003188:	b2b9      	uxth	r1, r7
 800318a:	ea22 72e2 	bic.w	r2, r2, r2, asr #31
 800318e:	6371      	str	r1, [r6, #52]	; 0x34
 8003190:	60aa      	str	r2, [r5, #8]
 8003192:	f8c3 0f28 	str.w	r0, [r3, #3880]	; 0xf28
 8003196:	e8bd 07f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl}
 800319a:	4770      	bx	lr
 800319c:	463a      	mov	r2, r7
 800319e:	4639      	mov	r1, r7
 80031a0:	e7e7      	b.n	8003172 <ADC_IRQHandler+0x8e>
 80031a2:	bf00      	nop
 80031a4:	20000c9c 	.word	0x20000c9c
 80031a8:	40012200 	.word	0x40012200
 80031ac:	20000218 	.word	0x20000218
 80031b0:	20001d94 	.word	0x20001d94
 80031b4:	3b9aca00 	.word	0x3b9aca00
 80031b8:	c4653600 	.word	0xc4653600
 80031bc:	40000800 	.word	0x40000800
 80031c0:	40007400 	.word	0x40007400
 80031c4:	40012000 	.word	0x40012000

080031c8 <NVIC_EnableIRQ>:
 80031c8:	b480      	push	{r7}
 80031ca:	b083      	sub	sp, #12
 80031cc:	af00      	add	r7, sp, #0
 80031ce:	4603      	mov	r3, r0
 80031d0:	71fb      	strb	r3, [r7, #7]
 80031d2:	4b08      	ldr	r3, [pc, #32]	; (80031f4 <NVIC_EnableIRQ+0x2c>)
 80031d4:	f997 2007 	ldrsb.w	r2, [r7, #7]
 80031d8:	0952      	lsrs	r2, r2, #5
 80031da:	79f9      	ldrb	r1, [r7, #7]
 80031dc:	f001 011f 	and.w	r1, r1, #31
 80031e0:	2001      	movs	r0, #1
 80031e2:	fa00 f101 	lsl.w	r1, r0, r1
 80031e6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80031ea:	370c      	adds	r7, #12
 80031ec:	46bd      	mov	sp, r7
 80031ee:	f85d 7b04 	ldr.w	r7, [sp], #4
 80031f2:	4770      	bx	lr
 80031f4:	e000e100 	.word	0xe000e100

080031f8 <i2c_init>:
 80031f8:	b580      	push	{r7, lr}
 80031fa:	af00      	add	r7, sp, #0
 80031fc:	4b39      	ldr	r3, [pc, #228]	; (80032e4 <i2c_init+0xec>)
 80031fe:	4a39      	ldr	r2, [pc, #228]	; (80032e4 <i2c_init+0xec>)
 8003200:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8003202:	f042 0202 	orr.w	r2, r2, #2
 8003206:	631a      	str	r2, [r3, #48]	; 0x30
 8003208:	4b37      	ldr	r3, [pc, #220]	; (80032e8 <i2c_init+0xf0>)
 800320a:	4a37      	ldr	r2, [pc, #220]	; (80032e8 <i2c_init+0xf0>)
 800320c:	6852      	ldr	r2, [r2, #4]
 800320e:	f042 02c0 	orr.w	r2, r2, #192	; 0xc0
 8003212:	605a      	str	r2, [r3, #4]
 8003214:	4b34      	ldr	r3, [pc, #208]	; (80032e8 <i2c_init+0xf0>)
 8003216:	4a34      	ldr	r2, [pc, #208]	; (80032e8 <i2c_init+0xf0>)
 8003218:	6812      	ldr	r2, [r2, #0]
 800321a:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 800321e:	601a      	str	r2, [r3, #0]
 8003220:	4b31      	ldr	r3, [pc, #196]	; (80032e8 <i2c_init+0xf0>)
 8003222:	4a31      	ldr	r2, [pc, #196]	; (80032e8 <i2c_init+0xf0>)
 8003224:	6812      	ldr	r2, [r2, #0]
 8003226:	f442 4220 	orr.w	r2, r2, #40960	; 0xa000
 800322a:	601a      	str	r2, [r3, #0]
 800322c:	4b2e      	ldr	r3, [pc, #184]	; (80032e8 <i2c_init+0xf0>)
 800322e:	4a2e      	ldr	r2, [pc, #184]	; (80032e8 <i2c_init+0xf0>)
 8003230:	6a12      	ldr	r2, [r2, #32]
 8003232:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 8003236:	621a      	str	r2, [r3, #32]
 8003238:	4b2b      	ldr	r3, [pc, #172]	; (80032e8 <i2c_init+0xf0>)
 800323a:	4a2b      	ldr	r2, [pc, #172]	; (80032e8 <i2c_init+0xf0>)
 800323c:	6a12      	ldr	r2, [r2, #32]
 800323e:	f042 6280 	orr.w	r2, r2, #67108864	; 0x4000000
 8003242:	621a      	str	r2, [r3, #32]
 8003244:	4b28      	ldr	r3, [pc, #160]	; (80032e8 <i2c_init+0xf0>)
 8003246:	4a28      	ldr	r2, [pc, #160]	; (80032e8 <i2c_init+0xf0>)
 8003248:	6a12      	ldr	r2, [r2, #32]
 800324a:	f022 4270 	bic.w	r2, r2, #4026531840	; 0xf0000000
 800324e:	621a      	str	r2, [r3, #32]
 8003250:	4b25      	ldr	r3, [pc, #148]	; (80032e8 <i2c_init+0xf0>)
 8003252:	4a25      	ldr	r2, [pc, #148]	; (80032e8 <i2c_init+0xf0>)
 8003254:	6a12      	ldr	r2, [r2, #32]
 8003256:	f042 4280 	orr.w	r2, r2, #1073741824	; 0x40000000
 800325a:	621a      	str	r2, [r3, #32]
 800325c:	4b21      	ldr	r3, [pc, #132]	; (80032e4 <i2c_init+0xec>)
 800325e:	4a21      	ldr	r2, [pc, #132]	; (80032e4 <i2c_init+0xec>)
 8003260:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8003262:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 8003266:	641a      	str	r2, [r3, #64]	; 0x40
 8003268:	4b20      	ldr	r3, [pc, #128]	; (80032ec <i2c_init+0xf4>)
 800326a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 800326e:	801a      	strh	r2, [r3, #0]
 8003270:	4b1e      	ldr	r3, [pc, #120]	; (80032ec <i2c_init+0xf4>)
 8003272:	2200      	movs	r2, #0
 8003274:	801a      	strh	r2, [r3, #0]
 8003276:	4b1d      	ldr	r3, [pc, #116]	; (80032ec <i2c_init+0xf4>)
 8003278:	4a1c      	ldr	r2, [pc, #112]	; (80032ec <i2c_init+0xf4>)
 800327a:	8892      	ldrh	r2, [r2, #4]
 800327c:	b292      	uxth	r2, r2
 800327e:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
 8003282:	b292      	uxth	r2, r2
 8003284:	809a      	strh	r2, [r3, #4]
 8003286:	4b19      	ldr	r3, [pc, #100]	; (80032ec <i2c_init+0xf4>)
 8003288:	4a18      	ldr	r2, [pc, #96]	; (80032ec <i2c_init+0xf4>)
 800328a:	8892      	ldrh	r2, [r2, #4]
 800328c:	b292      	uxth	r2, r2
 800328e:	f042 022a 	orr.w	r2, r2, #42	; 0x2a
 8003292:	b292      	uxth	r2, r2
 8003294:	809a      	strh	r2, [r3, #4]
 8003296:	4b15      	ldr	r3, [pc, #84]	; (80032ec <i2c_init+0xf4>)
 8003298:	223c      	movs	r2, #60	; 0x3c
 800329a:	839a      	strh	r2, [r3, #28]
 800329c:	4b13      	ldr	r3, [pc, #76]	; (80032ec <i2c_init+0xf4>)
 800329e:	4a13      	ldr	r2, [pc, #76]	; (80032ec <i2c_init+0xf4>)
 80032a0:	8c12      	ldrh	r2, [r2, #32]
 80032a2:	b292      	uxth	r2, r2
 80032a4:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
 80032a8:	b292      	uxth	r2, r2
 80032aa:	841a      	strh	r2, [r3, #32]
 80032ac:	4b0f      	ldr	r3, [pc, #60]	; (80032ec <i2c_init+0xf4>)
 80032ae:	4a0f      	ldr	r2, [pc, #60]	; (80032ec <i2c_init+0xf4>)
 80032b0:	8c12      	ldrh	r2, [r2, #32]
 80032b2:	b292      	uxth	r2, r2
 80032b4:	f042 022a 	orr.w	r2, r2, #42	; 0x2a
 80032b8:	b292      	uxth	r2, r2
 80032ba:	841a      	strh	r2, [r3, #32]
 80032bc:	4b0b      	ldr	r3, [pc, #44]	; (80032ec <i2c_init+0xf4>)
 80032be:	4a0b      	ldr	r2, [pc, #44]	; (80032ec <i2c_init+0xf4>)
 80032c0:	8892      	ldrh	r2, [r2, #4]
 80032c2:	b292      	uxth	r2, r2
 80032c4:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 80032c8:	b292      	uxth	r2, r2
 80032ca:	809a      	strh	r2, [r3, #4]
 80032cc:	4b07      	ldr	r3, [pc, #28]	; (80032ec <i2c_init+0xf4>)
 80032ce:	4a07      	ldr	r2, [pc, #28]	; (80032ec <i2c_init+0xf4>)
 80032d0:	8812      	ldrh	r2, [r2, #0]
 80032d2:	b292      	uxth	r2, r2
 80032d4:	f042 0201 	orr.w	r2, r2, #1
 80032d8:	b292      	uxth	r2, r2
 80032da:	801a      	strh	r2, [r3, #0]
 80032dc:	201f      	movs	r0, #31
 80032de:	f7ff ff73 	bl	80031c8 <NVIC_EnableIRQ>
 80032e2:	bd80      	pop	{r7, pc}
 80032e4:	40023800 	.word	0x40023800
 80032e8:	40020400 	.word	0x40020400
 80032ec:	40005400 	.word	0x40005400

080032f0 <i2c_test>:
 80032f0:	b580      	push	{r7, lr}
 80032f2:	b082      	sub	sp, #8
 80032f4:	af00      	add	r7, sp, #0
 80032f6:	4b5f      	ldr	r3, [pc, #380]	; (8003474 <i2c_test+0x184>)
 80032f8:	4a5e      	ldr	r2, [pc, #376]	; (8003474 <i2c_test+0x184>)
 80032fa:	8812      	ldrh	r2, [r2, #0]
 80032fc:	b292      	uxth	r2, r2
 80032fe:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8003302:	b292      	uxth	r2, r2
 8003304:	801a      	strh	r2, [r3, #0]
 8003306:	bf00      	nop
 8003308:	4b5a      	ldr	r3, [pc, #360]	; (8003474 <i2c_test+0x184>)
 800330a:	8a9b      	ldrh	r3, [r3, #20]
 800330c:	b29b      	uxth	r3, r3
 800330e:	f003 0301 	and.w	r3, r3, #1
 8003312:	2b00      	cmp	r3, #0
 8003314:	d0f8      	beq.n	8003308 <i2c_test+0x18>
 8003316:	4b57      	ldr	r3, [pc, #348]	; (8003474 <i2c_test+0x184>)
 8003318:	8a9b      	ldrh	r3, [r3, #20]
 800331a:	b29b      	uxth	r3, r3
 800331c:	4856      	ldr	r0, [pc, #344]	; (8003478 <i2c_test+0x188>)
 800331e:	4619      	mov	r1, r3
 8003320:	f7fd fe94 	bl	800104c <xprintf>
 8003324:	4b53      	ldr	r3, [pc, #332]	; (8003474 <i2c_test+0x184>)
 8003326:	2294      	movs	r2, #148	; 0x94
 8003328:	821a      	strh	r2, [r3, #16]
 800332a:	bf00      	nop
 800332c:	4b51      	ldr	r3, [pc, #324]	; (8003474 <i2c_test+0x184>)
 800332e:	8a9b      	ldrh	r3, [r3, #20]
 8003330:	b29b      	uxth	r3, r3
 8003332:	f003 0302 	and.w	r3, r3, #2
 8003336:	2b00      	cmp	r3, #0
 8003338:	d0f8      	beq.n	800332c <i2c_test+0x3c>
 800333a:	4b4e      	ldr	r3, [pc, #312]	; (8003474 <i2c_test+0x184>)
 800333c:	8b1b      	ldrh	r3, [r3, #24]
 800333e:	80fb      	strh	r3, [r7, #6]
 8003340:	4b4c      	ldr	r3, [pc, #304]	; (8003474 <i2c_test+0x184>)
 8003342:	8a9b      	ldrh	r3, [r3, #20]
 8003344:	b29b      	uxth	r3, r3
 8003346:	484d      	ldr	r0, [pc, #308]	; (800347c <i2c_test+0x18c>)
 8003348:	4619      	mov	r1, r3
 800334a:	f7fd fe7f 	bl	800104c <xprintf>
 800334e:	4b49      	ldr	r3, [pc, #292]	; (8003474 <i2c_test+0x184>)
 8003350:	2200      	movs	r2, #0
 8003352:	821a      	strh	r2, [r3, #16]
 8003354:	bf00      	nop
 8003356:	4b47      	ldr	r3, [pc, #284]	; (8003474 <i2c_test+0x184>)
 8003358:	8a9b      	ldrh	r3, [r3, #20]
 800335a:	b29b      	uxth	r3, r3
 800335c:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8003360:	2b00      	cmp	r3, #0
 8003362:	d0f8      	beq.n	8003356 <i2c_test+0x66>
 8003364:	4b43      	ldr	r3, [pc, #268]	; (8003474 <i2c_test+0x184>)
 8003366:	8a9b      	ldrh	r3, [r3, #20]
 8003368:	b29b      	uxth	r3, r3
 800336a:	4845      	ldr	r0, [pc, #276]	; (8003480 <i2c_test+0x190>)
 800336c:	4619      	mov	r1, r3
 800336e:	f7fd fe6d 	bl	800104c <xprintf>
 8003372:	4b40      	ldr	r3, [pc, #256]	; (8003474 <i2c_test+0x184>)
 8003374:	4a3f      	ldr	r2, [pc, #252]	; (8003474 <i2c_test+0x184>)
 8003376:	8812      	ldrh	r2, [r2, #0]
 8003378:	b292      	uxth	r2, r2
 800337a:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 800337e:	b292      	uxth	r2, r2
 8003380:	801a      	strh	r2, [r3, #0]
 8003382:	bf00      	nop
 8003384:	4b3b      	ldr	r3, [pc, #236]	; (8003474 <i2c_test+0x184>)
 8003386:	8a9b      	ldrh	r3, [r3, #20]
 8003388:	b29b      	uxth	r3, r3
 800338a:	f003 0301 	and.w	r3, r3, #1
 800338e:	2b00      	cmp	r3, #0
 8003390:	d0f8      	beq.n	8003384 <i2c_test+0x94>
 8003392:	4b38      	ldr	r3, [pc, #224]	; (8003474 <i2c_test+0x184>)
 8003394:	8a9b      	ldrh	r3, [r3, #20]
 8003396:	b29b      	uxth	r3, r3
 8003398:	4837      	ldr	r0, [pc, #220]	; (8003478 <i2c_test+0x188>)
 800339a:	4619      	mov	r1, r3
 800339c:	f7fd fe56 	bl	800104c <xprintf>
 80033a0:	4b34      	ldr	r3, [pc, #208]	; (8003474 <i2c_test+0x184>)
 80033a2:	2295      	movs	r2, #149	; 0x95
 80033a4:	821a      	strh	r2, [r3, #16]
 80033a6:	bf00      	nop
 80033a8:	4b32      	ldr	r3, [pc, #200]	; (8003474 <i2c_test+0x184>)
 80033aa:	8a9b      	ldrh	r3, [r3, #20]
 80033ac:	b29b      	uxth	r3, r3
 80033ae:	f003 0302 	and.w	r3, r3, #2
 80033b2:	2b00      	cmp	r3, #0
 80033b4:	d0f8      	beq.n	80033a8 <i2c_test+0xb8>
 80033b6:	4b2f      	ldr	r3, [pc, #188]	; (8003474 <i2c_test+0x184>)
 80033b8:	8a9b      	ldrh	r3, [r3, #20]
 80033ba:	b29b      	uxth	r3, r3
 80033bc:	482f      	ldr	r0, [pc, #188]	; (800347c <i2c_test+0x18c>)
 80033be:	4619      	mov	r1, r3
 80033c0:	f7fd fe44 	bl	800104c <xprintf>
 80033c4:	4b2b      	ldr	r3, [pc, #172]	; (8003474 <i2c_test+0x184>)
 80033c6:	4a2b      	ldr	r2, [pc, #172]	; (8003474 <i2c_test+0x184>)
 80033c8:	8812      	ldrh	r2, [r2, #0]
 80033ca:	b292      	uxth	r2, r2
 80033cc:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 80033d0:	b292      	uxth	r2, r2
 80033d2:	801a      	strh	r2, [r3, #0]
 80033d4:	4b27      	ldr	r3, [pc, #156]	; (8003474 <i2c_test+0x184>)
 80033d6:	4a27      	ldr	r2, [pc, #156]	; (8003474 <i2c_test+0x184>)
 80033d8:	8812      	ldrh	r2, [r2, #0]
 80033da:	b292      	uxth	r2, r2
 80033dc:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 80033e0:	b292      	uxth	r2, r2
 80033e2:	801a      	strh	r2, [r3, #0]
 80033e4:	4b23      	ldr	r3, [pc, #140]	; (8003474 <i2c_test+0x184>)
 80033e6:	8b1b      	ldrh	r3, [r3, #24]
 80033e8:	80fb      	strh	r3, [r7, #6]
 80033ea:	bf00      	nop
 80033ec:	4b21      	ldr	r3, [pc, #132]	; (8003474 <i2c_test+0x184>)
 80033ee:	8a9b      	ldrh	r3, [r3, #20]
 80033f0:	b29b      	uxth	r3, r3
 80033f2:	f003 0304 	and.w	r3, r3, #4
 80033f6:	2b00      	cmp	r3, #0
 80033f8:	d0f8      	beq.n	80033ec <i2c_test+0xfc>
 80033fa:	4b1e      	ldr	r3, [pc, #120]	; (8003474 <i2c_test+0x184>)
 80033fc:	8a9b      	ldrh	r3, [r3, #20]
 80033fe:	b29b      	uxth	r3, r3
 8003400:	4820      	ldr	r0, [pc, #128]	; (8003484 <i2c_test+0x194>)
 8003402:	4619      	mov	r1, r3
 8003404:	f7fd fe22 	bl	800104c <xprintf>
 8003408:	4b1a      	ldr	r3, [pc, #104]	; (8003474 <i2c_test+0x184>)
 800340a:	4a1a      	ldr	r2, [pc, #104]	; (8003474 <i2c_test+0x184>)
 800340c:	8812      	ldrh	r2, [r2, #0]
 800340e:	b292      	uxth	r2, r2
 8003410:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8003414:	b292      	uxth	r2, r2
 8003416:	801a      	strh	r2, [r3, #0]
 8003418:	bf00      	nop
 800341a:	4b16      	ldr	r3, [pc, #88]	; (8003474 <i2c_test+0x184>)
 800341c:	8a9b      	ldrh	r3, [r3, #20]
 800341e:	b29b      	uxth	r3, r3
 8003420:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8003424:	2b00      	cmp	r3, #0
 8003426:	d0f8      	beq.n	800341a <i2c_test+0x12a>
 8003428:	4b12      	ldr	r3, [pc, #72]	; (8003474 <i2c_test+0x184>)
 800342a:	8a1b      	ldrh	r3, [r3, #16]
 800342c:	b29b      	uxth	r3, r3
 800342e:	b2da      	uxtb	r2, r3
 8003430:	4b15      	ldr	r3, [pc, #84]	; (8003488 <i2c_test+0x198>)
 8003432:	701a      	strb	r2, [r3, #0]
 8003434:	bf00      	nop
 8003436:	4b0f      	ldr	r3, [pc, #60]	; (8003474 <i2c_test+0x184>)
 8003438:	8a9b      	ldrh	r3, [r3, #20]
 800343a:	b29b      	uxth	r3, r3
 800343c:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8003440:	2b00      	cmp	r3, #0
 8003442:	d0f8      	beq.n	8003436 <i2c_test+0x146>
 8003444:	4b0b      	ldr	r3, [pc, #44]	; (8003474 <i2c_test+0x184>)
 8003446:	8a1b      	ldrh	r3, [r3, #16]
 8003448:	b29b      	uxth	r3, r3
 800344a:	b2da      	uxtb	r2, r3
 800344c:	4b0e      	ldr	r3, [pc, #56]	; (8003488 <i2c_test+0x198>)
 800344e:	705a      	strb	r2, [r3, #1]
 8003450:	bf00      	nop
 8003452:	4b08      	ldr	r3, [pc, #32]	; (8003474 <i2c_test+0x184>)
 8003454:	8b1b      	ldrh	r3, [r3, #24]
 8003456:	b29b      	uxth	r3, r3
 8003458:	f003 0302 	and.w	r3, r3, #2
 800345c:	2b00      	cmp	r3, #0
 800345e:	d1f8      	bne.n	8003452 <i2c_test+0x162>
 8003460:	4b04      	ldr	r3, [pc, #16]	; (8003474 <i2c_test+0x184>)
 8003462:	8a9b      	ldrh	r3, [r3, #20]
 8003464:	b29b      	uxth	r3, r3
 8003466:	4809      	ldr	r0, [pc, #36]	; (800348c <i2c_test+0x19c>)
 8003468:	4619      	mov	r1, r3
 800346a:	f7fd fdef 	bl	800104c <xprintf>
 800346e:	3708      	adds	r7, #8
 8003470:	46bd      	mov	sp, r7
 8003472:	bd80      	pop	{r7, pc}
 8003474:	40005400 	.word	0x40005400
 8003478:	08003cd0 	.word	0x08003cd0
 800347c:	08003cf0 	.word	0x08003cf0
 8003480:	08003d10 	.word	0x08003d10
 8003484:	08003d34 	.word	0x08003d34
 8003488:	20002cc4 	.word	0x20002cc4
 800348c:	08003d48 	.word	0x08003d48

08003490 <I2C1_EV_IRQHandler>:
 8003490:	b580      	push	{r7, lr}
 8003492:	af00      	add	r7, sp, #0
 8003494:	4b01      	ldr	r3, [pc, #4]	; (800349c <I2C1_EV_IRQHandler+0xc>)
 8003496:	681b      	ldr	r3, [r3, #0]
 8003498:	4798      	blx	r3
 800349a:	bd80      	pop	{r7, pc}
 800349c:	20002ccc 	.word	0x20002ccc

080034a0 <I2C1_ER_IRQHandler>:
 80034a0:	b480      	push	{r7}
 80034a2:	b083      	sub	sp, #12
 80034a4:	af00      	add	r7, sp, #0
 80034a6:	4b08      	ldr	r3, [pc, #32]	; (80034c8 <I2C1_ER_IRQHandler+0x28>)
 80034a8:	8a9b      	ldrh	r3, [r3, #20]
 80034aa:	80fb      	strh	r3, [r7, #6]
 80034ac:	4a06      	ldr	r2, [pc, #24]	; (80034c8 <I2C1_ER_IRQHandler+0x28>)
 80034ae:	4b06      	ldr	r3, [pc, #24]	; (80034c8 <I2C1_ER_IRQHandler+0x28>)
 80034b0:	8a9b      	ldrh	r3, [r3, #20]
 80034b2:	b299      	uxth	r1, r3
 80034b4:	f242 03ff 	movw	r3, #8447	; 0x20ff
 80034b8:	400b      	ands	r3, r1
 80034ba:	b29b      	uxth	r3, r3
 80034bc:	8293      	strh	r3, [r2, #20]
 80034be:	370c      	adds	r7, #12
 80034c0:	46bd      	mov	sp, r7
 80034c2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80034c6:	4770      	bx	lr
 80034c8:	40005400 	.word	0x40005400

080034cc <btf_conf>:
 80034cc:	b480      	push	{r7}
 80034ce:	af00      	add	r7, sp, #0
 80034d0:	4b0f      	ldr	r3, [pc, #60]	; (8003510 <btf_conf+0x44>)
 80034d2:	8a9b      	ldrh	r3, [r3, #20]
 80034d4:	b29b      	uxth	r3, r3
 80034d6:	f003 0304 	and.w	r3, r3, #4
 80034da:	2b00      	cmp	r3, #0
 80034dc:	d013      	beq.n	8003506 <btf_conf+0x3a>
 80034de:	4b0c      	ldr	r3, [pc, #48]	; (8003510 <btf_conf+0x44>)
 80034e0:	4a0b      	ldr	r2, [pc, #44]	; (8003510 <btf_conf+0x44>)
 80034e2:	8812      	ldrh	r2, [r2, #0]
 80034e4:	b292      	uxth	r2, r2
 80034e6:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 80034ea:	b292      	uxth	r2, r2
 80034ec:	801a      	strh	r2, [r3, #0]
 80034ee:	4b08      	ldr	r3, [pc, #32]	; (8003510 <btf_conf+0x44>)
 80034f0:	8a1b      	ldrh	r3, [r3, #16]
 80034f2:	b29b      	uxth	r3, r3
 80034f4:	b2da      	uxtb	r2, r3
 80034f6:	4b07      	ldr	r3, [pc, #28]	; (8003514 <btf_conf+0x48>)
 80034f8:	701a      	strb	r2, [r3, #0]
 80034fa:	4b05      	ldr	r3, [pc, #20]	; (8003510 <btf_conf+0x44>)
 80034fc:	8a1b      	ldrh	r3, [r3, #16]
 80034fe:	b29b      	uxth	r3, r3
 8003500:	b2da      	uxtb	r2, r3
 8003502:	4b04      	ldr	r3, [pc, #16]	; (8003514 <btf_conf+0x48>)
 8003504:	705a      	strb	r2, [r3, #1]
 8003506:	46bd      	mov	sp, r7
 8003508:	f85d 7b04 	ldr.w	r7, [sp], #4
 800350c:	4770      	bx	lr
 800350e:	bf00      	nop
 8003510:	40005400 	.word	0x40005400
 8003514:	20002cc4 	.word	0x20002cc4

08003518 <raddr_conf>:
 8003518:	b480      	push	{r7}
 800351a:	af00      	add	r7, sp, #0
 800351c:	4b0f      	ldr	r3, [pc, #60]	; (800355c <raddr_conf+0x44>)
 800351e:	8a9b      	ldrh	r3, [r3, #20]
 8003520:	b29b      	uxth	r3, r3
 8003522:	f003 0302 	and.w	r3, r3, #2
 8003526:	2b00      	cmp	r3, #0
 8003528:	d014      	beq.n	8003554 <raddr_conf+0x3c>
 800352a:	4b0c      	ldr	r3, [pc, #48]	; (800355c <raddr_conf+0x44>)
 800352c:	4a0b      	ldr	r2, [pc, #44]	; (800355c <raddr_conf+0x44>)
 800352e:	8812      	ldrh	r2, [r2, #0]
 8003530:	b292      	uxth	r2, r2
 8003532:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8003536:	b292      	uxth	r2, r2
 8003538:	801a      	strh	r2, [r3, #0]
 800353a:	4b08      	ldr	r3, [pc, #32]	; (800355c <raddr_conf+0x44>)
 800353c:	4a07      	ldr	r2, [pc, #28]	; (800355c <raddr_conf+0x44>)
 800353e:	8812      	ldrh	r2, [r2, #0]
 8003540:	b292      	uxth	r2, r2
 8003542:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 8003546:	b292      	uxth	r2, r2
 8003548:	801a      	strh	r2, [r3, #0]
 800354a:	4b04      	ldr	r3, [pc, #16]	; (800355c <raddr_conf+0x44>)
 800354c:	8b1b      	ldrh	r3, [r3, #24]
 800354e:	4b04      	ldr	r3, [pc, #16]	; (8003560 <raddr_conf+0x48>)
 8003550:	4a04      	ldr	r2, [pc, #16]	; (8003564 <raddr_conf+0x4c>)
 8003552:	601a      	str	r2, [r3, #0]
 8003554:	46bd      	mov	sp, r7
 8003556:	f85d 7b04 	ldr.w	r7, [sp], #4
 800355a:	4770      	bx	lr
 800355c:	40005400 	.word	0x40005400
 8003560:	20002ccc 	.word	0x20002ccc
 8003564:	080034cd 	.word	0x080034cd

08003568 <rsb_conf>:
 8003568:	b480      	push	{r7}
 800356a:	af00      	add	r7, sp, #0
 800356c:	4b0a      	ldr	r3, [pc, #40]	; (8003598 <rsb_conf+0x30>)
 800356e:	8a9b      	ldrh	r3, [r3, #20]
 8003570:	b29b      	uxth	r3, r3
 8003572:	f003 0301 	and.w	r3, r3, #1
 8003576:	2b00      	cmp	r3, #0
 8003578:	d009      	beq.n	800358e <rsb_conf+0x26>
 800357a:	4b07      	ldr	r3, [pc, #28]	; (8003598 <rsb_conf+0x30>)
 800357c:	4a07      	ldr	r2, [pc, #28]	; (800359c <rsb_conf+0x34>)
 800357e:	7812      	ldrb	r2, [r2, #0]
 8003580:	f042 0201 	orr.w	r2, r2, #1
 8003584:	b2d2      	uxtb	r2, r2
 8003586:	821a      	strh	r2, [r3, #16]
 8003588:	4b05      	ldr	r3, [pc, #20]	; (80035a0 <rsb_conf+0x38>)
 800358a:	4a06      	ldr	r2, [pc, #24]	; (80035a4 <rsb_conf+0x3c>)
 800358c:	601a      	str	r2, [r3, #0]
 800358e:	46bd      	mov	sp, r7
 8003590:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003594:	4770      	bx	lr
 8003596:	bf00      	nop
 8003598:	40005400 	.word	0x40005400
 800359c:	20000220 	.word	0x20000220
 80035a0:	20002ccc 	.word	0x20002ccc
 80035a4:	08003519 	.word	0x08003519

080035a8 <pntr_tx_end>:
 80035a8:	b480      	push	{r7}
 80035aa:	af00      	add	r7, sp, #0
 80035ac:	4b0a      	ldr	r3, [pc, #40]	; (80035d8 <pntr_tx_end+0x30>)
 80035ae:	8a9b      	ldrh	r3, [r3, #20]
 80035b0:	b29b      	uxth	r3, r3
 80035b2:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80035b6:	2b00      	cmp	r3, #0
 80035b8:	d00a      	beq.n	80035d0 <pntr_tx_end+0x28>
 80035ba:	4b07      	ldr	r3, [pc, #28]	; (80035d8 <pntr_tx_end+0x30>)
 80035bc:	4a06      	ldr	r2, [pc, #24]	; (80035d8 <pntr_tx_end+0x30>)
 80035be:	8812      	ldrh	r2, [r2, #0]
 80035c0:	b292      	uxth	r2, r2
 80035c2:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 80035c6:	b292      	uxth	r2, r2
 80035c8:	801a      	strh	r2, [r3, #0]
 80035ca:	4b04      	ldr	r3, [pc, #16]	; (80035dc <pntr_tx_end+0x34>)
 80035cc:	4a04      	ldr	r2, [pc, #16]	; (80035e0 <pntr_tx_end+0x38>)
 80035ce:	601a      	str	r2, [r3, #0]
 80035d0:	46bd      	mov	sp, r7
 80035d2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80035d6:	4770      	bx	lr
 80035d8:	40005400 	.word	0x40005400
 80035dc:	20002ccc 	.word	0x20002ccc
 80035e0:	08003569 	.word	0x08003569

080035e4 <wadr_conf>:
 80035e4:	b480      	push	{r7}
 80035e6:	af00      	add	r7, sp, #0
 80035e8:	4b09      	ldr	r3, [pc, #36]	; (8003610 <wadr_conf+0x2c>)
 80035ea:	8a9b      	ldrh	r3, [r3, #20]
 80035ec:	b29b      	uxth	r3, r3
 80035ee:	f003 0302 	and.w	r3, r3, #2
 80035f2:	2b00      	cmp	r3, #0
 80035f4:	d007      	beq.n	8003606 <wadr_conf+0x22>
 80035f6:	4b06      	ldr	r3, [pc, #24]	; (8003610 <wadr_conf+0x2c>)
 80035f8:	8b1b      	ldrh	r3, [r3, #24]
 80035fa:	4b05      	ldr	r3, [pc, #20]	; (8003610 <wadr_conf+0x2c>)
 80035fc:	2200      	movs	r2, #0
 80035fe:	821a      	strh	r2, [r3, #16]
 8003600:	4b04      	ldr	r3, [pc, #16]	; (8003614 <wadr_conf+0x30>)
 8003602:	4a05      	ldr	r2, [pc, #20]	; (8003618 <wadr_conf+0x34>)
 8003604:	601a      	str	r2, [r3, #0]
 8003606:	46bd      	mov	sp, r7
 8003608:	f85d 7b04 	ldr.w	r7, [sp], #4
 800360c:	4770      	bx	lr
 800360e:	bf00      	nop
 8003610:	40005400 	.word	0x40005400
 8003614:	20002ccc 	.word	0x20002ccc
 8003618:	080035a9 	.word	0x080035a9

0800361c <sb_conf>:
 800361c:	b480      	push	{r7}
 800361e:	af00      	add	r7, sp, #0
 8003620:	4b08      	ldr	r3, [pc, #32]	; (8003644 <sb_conf+0x28>)
 8003622:	8a9b      	ldrh	r3, [r3, #20]
 8003624:	b29b      	uxth	r3, r3
 8003626:	f003 0301 	and.w	r3, r3, #1
 800362a:	2b00      	cmp	r3, #0
 800362c:	d006      	beq.n	800363c <sb_conf+0x20>
 800362e:	4b05      	ldr	r3, [pc, #20]	; (8003644 <sb_conf+0x28>)
 8003630:	4a05      	ldr	r2, [pc, #20]	; (8003648 <sb_conf+0x2c>)
 8003632:	7812      	ldrb	r2, [r2, #0]
 8003634:	821a      	strh	r2, [r3, #16]
 8003636:	4b05      	ldr	r3, [pc, #20]	; (800364c <sb_conf+0x30>)
 8003638:	4a05      	ldr	r2, [pc, #20]	; (8003650 <sb_conf+0x34>)
 800363a:	601a      	str	r2, [r3, #0]
 800363c:	46bd      	mov	sp, r7
 800363e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003642:	4770      	bx	lr
 8003644:	40005400 	.word	0x40005400
 8003648:	20000220 	.word	0x20000220
 800364c:	20002ccc 	.word	0x20002ccc
 8003650:	080035e5 	.word	0x080035e5

08003654 <i2c_start>:
 8003654:	b480      	push	{r7}
 8003656:	b083      	sub	sp, #12
 8003658:	af00      	add	r7, sp, #0
 800365a:	4603      	mov	r3, r0
 800365c:	71fb      	strb	r3, [r7, #7]
 800365e:	4b09      	ldr	r3, [pc, #36]	; (8003684 <i2c_start+0x30>)
 8003660:	79fa      	ldrb	r2, [r7, #7]
 8003662:	701a      	strb	r2, [r3, #0]
 8003664:	4b08      	ldr	r3, [pc, #32]	; (8003688 <i2c_start+0x34>)
 8003666:	4a09      	ldr	r2, [pc, #36]	; (800368c <i2c_start+0x38>)
 8003668:	601a      	str	r2, [r3, #0]
 800366a:	4b09      	ldr	r3, [pc, #36]	; (8003690 <i2c_start+0x3c>)
 800366c:	4a08      	ldr	r2, [pc, #32]	; (8003690 <i2c_start+0x3c>)
 800366e:	8812      	ldrh	r2, [r2, #0]
 8003670:	b292      	uxth	r2, r2
 8003672:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8003676:	b292      	uxth	r2, r2
 8003678:	801a      	strh	r2, [r3, #0]
 800367a:	370c      	adds	r7, #12
 800367c:	46bd      	mov	sp, r7
 800367e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003682:	4770      	bx	lr
 8003684:	20000220 	.word	0x20000220
 8003688:	20002ccc 	.word	0x20002ccc
 800368c:	0800361d 	.word	0x0800361d
 8003690:	40005400 	.word	0x40005400

08003694 <update_attenuator>:
 8003694:	b480      	push	{r7}
 8003696:	b083      	sub	sp, #12
 8003698:	af00      	add	r7, sp, #0
 800369a:	4b22      	ldr	r3, [pc, #136]	; (8003724 <update_attenuator+0x90>)
 800369c:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800369e:	f5c3 637f 	rsb	r3, r3, #4080	; 0xff0
 80036a2:	330f      	adds	r3, #15
 80036a4:	607b      	str	r3, [r7, #4]
 80036a6:	687a      	ldr	r2, [r7, #4]
 80036a8:	f240 53db 	movw	r3, #1499	; 0x5db
 80036ac:	429a      	cmp	r2, r3
 80036ae:	d807      	bhi.n	80036c0 <update_attenuator+0x2c>
 80036b0:	4b1d      	ldr	r3, [pc, #116]	; (8003728 <update_attenuator+0x94>)
 80036b2:	681b      	ldr	r3, [r3, #0]
 80036b4:	1c59      	adds	r1, r3, #1
 80036b6:	4a1c      	ldr	r2, [pc, #112]	; (8003728 <update_attenuator+0x94>)
 80036b8:	6011      	str	r1, [r2, #0]
 80036ba:	2b00      	cmp	r3, #0
 80036bc:	d000      	beq.n	80036c0 <update_attenuator+0x2c>
 80036be:	bf00      	nop
 80036c0:	687b      	ldr	r3, [r7, #4]
 80036c2:	f5b3 6f7a 	cmp.w	r3, #4000	; 0xfa0
 80036c6:	d907      	bls.n	80036d8 <update_attenuator+0x44>
 80036c8:	4b17      	ldr	r3, [pc, #92]	; (8003728 <update_attenuator+0x94>)
 80036ca:	681b      	ldr	r3, [r3, #0]
 80036cc:	1e59      	subs	r1, r3, #1
 80036ce:	4a16      	ldr	r2, [pc, #88]	; (8003728 <update_attenuator+0x94>)
 80036d0:	6011      	str	r1, [r2, #0]
 80036d2:	2b00      	cmp	r3, #0
 80036d4:	d000      	beq.n	80036d8 <update_attenuator+0x44>
 80036d6:	bf00      	nop
 80036d8:	4b13      	ldr	r3, [pc, #76]	; (8003728 <update_attenuator+0x94>)
 80036da:	681b      	ldr	r3, [r3, #0]
 80036dc:	2b0a      	cmp	r3, #10
 80036de:	dd03      	ble.n	80036e8 <update_attenuator+0x54>
 80036e0:	4b11      	ldr	r3, [pc, #68]	; (8003728 <update_attenuator+0x94>)
 80036e2:	220a      	movs	r2, #10
 80036e4:	601a      	str	r2, [r3, #0]
 80036e6:	bf00      	nop
 80036e8:	4b0f      	ldr	r3, [pc, #60]	; (8003728 <update_attenuator+0x94>)
 80036ea:	681b      	ldr	r3, [r3, #0]
 80036ec:	2b00      	cmp	r3, #0
 80036ee:	da02      	bge.n	80036f6 <update_attenuator+0x62>
 80036f0:	4b0d      	ldr	r3, [pc, #52]	; (8003728 <update_attenuator+0x94>)
 80036f2:	2200      	movs	r2, #0
 80036f4:	601a      	str	r2, [r3, #0]
 80036f6:	4b0d      	ldr	r3, [pc, #52]	; (800372c <update_attenuator+0x98>)
 80036f8:	695b      	ldr	r3, [r3, #20]
 80036fa:	b29b      	uxth	r3, r3
 80036fc:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8003700:	807b      	strh	r3, [r7, #2]
 8003702:	4b09      	ldr	r3, [pc, #36]	; (8003728 <update_attenuator+0x94>)
 8003704:	681b      	ldr	r3, [r3, #0]
 8003706:	b29b      	uxth	r3, r3
 8003708:	b2db      	uxtb	r3, r3
 800370a:	b29a      	uxth	r2, r3
 800370c:	887b      	ldrh	r3, [r7, #2]
 800370e:	4313      	orrs	r3, r2
 8003710:	b29b      	uxth	r3, r3
 8003712:	807b      	strh	r3, [r7, #2]
 8003714:	4b05      	ldr	r3, [pc, #20]	; (800372c <update_attenuator+0x98>)
 8003716:	887a      	ldrh	r2, [r7, #2]
 8003718:	615a      	str	r2, [r3, #20]
 800371a:	370c      	adds	r7, #12
 800371c:	46bd      	mov	sp, r7
 800371e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003722:	4770      	bx	lr
 8003724:	40012200 	.word	0x40012200
 8003728:	20002cd0 	.word	0x20002cd0
 800372c:	40020c00 	.word	0x40020c00

08003730 <set_attenuator>:
 8003730:	b480      	push	{r7}
 8003732:	b085      	sub	sp, #20
 8003734:	af00      	add	r7, sp, #0
 8003736:	4603      	mov	r3, r0
 8003738:	80fb      	strh	r3, [r7, #6]
 800373a:	4b0b      	ldr	r3, [pc, #44]	; (8003768 <set_attenuator+0x38>)
 800373c:	695b      	ldr	r3, [r3, #20]
 800373e:	b29b      	uxth	r3, r3
 8003740:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8003744:	81fb      	strh	r3, [r7, #14]
 8003746:	88fb      	ldrh	r3, [r7, #6]
 8003748:	b2db      	uxtb	r3, r3
 800374a:	b29a      	uxth	r2, r3
 800374c:	89fb      	ldrh	r3, [r7, #14]
 800374e:	4313      	orrs	r3, r2
 8003750:	81fb      	strh	r3, [r7, #14]
 8003752:	4b05      	ldr	r3, [pc, #20]	; (8003768 <set_attenuator+0x38>)
 8003754:	89fa      	ldrh	r2, [r7, #14]
 8003756:	615a      	str	r2, [r3, #20]
 8003758:	88fa      	ldrh	r2, [r7, #6]
 800375a:	4b04      	ldr	r3, [pc, #16]	; (800376c <set_attenuator+0x3c>)
 800375c:	601a      	str	r2, [r3, #0]
 800375e:	3714      	adds	r7, #20
 8003760:	46bd      	mov	sp, r7
 8003762:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003766:	4770      	bx	lr
 8003768:	40020c00 	.word	0x40020c00
 800376c:	20002cd0 	.word	0x20002cd0

08003770 <seg7_tbl>:
 8003770:	b6b31477 34e7e6d4 c7f5f6f7 e1e39763     w......4....c...
 8003780:	253d6349 000a0d64 253d7249 000a0d64     Ic=%d...Ir=%d...
 8003790:	6f727265 64253d72 00000a0d 253d6456     error=%d....Vd=%
 80037a0:	000a0d64 7474614b 0d64253d 0000000a     d...Katt=%d.....
 80037b0:	253d6449 0d416d64 0000000a 253d6456     Id=%dmA.....Vd=%
 80037c0:	64252e64 000a0d56 64253d50 000a0d57     d.%dV...P=%dW...
 80037d0:	78616d49 6d64253d 000a0d41 253d6354     Imax=%dmA...Tc=%
 80037e0:	000a0d64 253d6a54 000a0d64 00000a0a     d...Tj=%d.......
 80037f0:	6c6c6568 000a0d6f 6c383025 00002058     hello...%08lX ..
 8003800:	32302520 00000058 34302520 00000058      %02X... %04X...
 8003810:	38302520 0000584c                        %08LX..

08003818 <cos_table>:
 8003818:	000007d0 000007bd 00000784 00000727     ............'...
 8003828:	000006ab 00000614 00000567 000004ab     ........g.......
 8003838:	000003e8 00000325 00000269 000001bc     ....%...i.......
 8003848:	00000125 000000a9 0000004c 00000013     %.......L.......
 8003858:	00000000 00000013 0000004c 000000a9     ........L.......
 8003868:	00000125 000001bc 00000269 00000325     %.......i...%...
 8003878:	000003e8 000004ab 00000567 00000614     ........g.......
 8003888:	000006ab 00000727 00000784 000007bd     ....'...........

08003898 <device_additional_info>:
 8003898:	7420794d 20747365 62646f6d 64207375     My test modbus d
 80038a8:	63697665 00000065                       evice...

080038b0 <proc_PDU_table>:
 80038b0:	080026a9 08001edd 08001f91 0800242d     .&..........-$..
 80038c0:	0800215d 08001cc1 08002245 080026a9     ]!......E"...&..
 80038d0:	080020d1 080026a9 080026a9 080026a9     . ...&...&...&..
 80038e0:	080026a9 080026a9 080026a9 08001dc1     .&...&...&......
 80038f0:	08002315 08002045 080026a9 080026a9     .#..E ...&...&..
 8003900:	080026a9 080026a9 080026a9 08002515     .&...&...&...%..
 8003910:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003920:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003930:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003940:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003950:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003960:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003970:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003980:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003990:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 80039a0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 80039b0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 80039c0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 80039d0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 80039e0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 80039f0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a00:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a10:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a20:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a30:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a40:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a50:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a60:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a70:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a80:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a90:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003aa0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ab0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ac0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ad0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ae0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003af0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b00:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b10:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b20:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b30:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b40:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b50:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b60:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b70:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b80:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b90:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ba0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003bb0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003bc0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003bd0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003be0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003bf0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c00:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c10:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c20:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c30:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c40:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c50:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c60:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c70:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c80:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c90:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ca0:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..

08003cb0 <kc>:
 8003cb0:	0001d2c9                                ....

08003cb4 <kr>:
 8003cb4:	00023199                                .1..

08003cb8 <kv>:
 8003cb8:	0004a84c                                L...

08003cbc <ac>:
 8003cbc:	00000000                                ....

08003cc0 <ar>:
 8003cc0:	00000000                                ....

08003cc4 <av>:
 8003cc4:	fffef0fc                                ....

08003cc8 <temp_sens_addr>:
 8003cc8:	000000a2                                ....

08003ccc <Rt>:
 8003ccc:	00000011 76276577 65732065 5320646e     ....we've send S
 8003cdc:	54524154 206f7420 76616c73 75253a65     TART to slave:%u
 8003cec:	0000000a 76276577 65732065 6120646e     ....we've send a
 8003cfc:	65726464 6f742073 616c7320 253a6576     ddres to slave:%
 8003d0c:	00000a75 76276577 72772065 20657469     u...we've write 
 8003d1c:	6e696f70 20726574 73206f74 6576616c     pointer to slave
 8003d2c:	0a75253a 00000000 76276577 61682065     :%u.....we've ha
 8003d3c:	42206576 253a4654 00000a75 20737562     ve BTF:%u...bus 
 8003d4c:	66207369 3a656572 000a7525              is free:%u..

08003d58 <apl602_imax>:
 8003d58:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003d68:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003d78:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003d88:	0000c350 0000c350 0000c350 0000af3e     P...P...P...>...
 8003d98:	0000a33e 000098af 00008f53 000086fa     >.......S.......
 8003da8:	00007f7c 000078bb 0000729d 00006d0c     |....x...r...m..
 8003db8:	000067f6 0000634c 00005f02 00005b0d     .g..Lc..._...[..
 8003dc8:	00005763 000053fd 000050d4 00004de2     cW...S...P...M..
 8003dd8:	00004b21 0000488c 00004621 000043db     !K...H..!F...C..
 8003de8:	000041b7 00003fb2 00003dca 00003bfc     .A...?...=...;..
 8003df8:	00003a47 000038a8 0000371e 000035a8     G:...8...7...5..
 8003e08:	00003443 000032f0 000031ac 00003076     C4...2...1..v0..
 8003e18:	00002f4f 00002e34 00002d25 00002c21     O/..4...%-..!,..
 8003e28:	00002b28 00002a39 00002954 00002877     (+..9*..T)..w(..
 8003e38:	000027a3 000026d6 00002611 00002554     .'...&...&..T%..
 8003e48:	0000249d 000023ec 00002341 0000229d     .$...#..A#..."..
 8003e58:	000021fd 00002163 000020ce 0000203e     .!..c!... ..> ..
 8003e68:	00001fb2 00001f2b 00001ea7 00001e28     ....+.......(...
 8003e78:	00001dac 00001d34 00001cc0 00001c4f     ....4.......O...
 8003e88:	00001be1 00001b76 00001b0e 00001aa9     ....v...........
 8003e98:	00001a46 000019e6 00001989 0000192e     F...............
 8003ea8:	000018d5 0000187f 0000182b 000017d9     ........+.......
 8003eb8:	00001788 0000173a 000016ee 000016a3     ....:...........
 8003ec8:	0000165a 00001613 000015ce 0000158a     Z...............
 8003ed8:	00001547 00001506 000014c7 00001489     G...............
 8003ee8:	0000144c 00001410 000013d6 0000139d     L...............
 8003ef8:	00001365 0000132e 000012f8 000012c4     e...............
 8003f08:	00001290 0000125e 0000122c 000011fc     ....^...,.......
 8003f18:	000011cc 0000119d 00001170 00001143     ........p...C...
 8003f28:	00001116 000010eb 000010c1 00001097     ................
 8003f38:	0000106e 00001045 0000101e 00000ff7     n...E...........
 8003f48:	00000fd1 00000fab 00000f86 00000f62     ............b...
 8003f58:	00000f3e 00000f1b 00000ef9 00000ed7     >...............
 8003f68:	00000eb5 00000e94 00000e74 00000e54     ........t...T...
 8003f78:	00000e35 00000e16 00000df8 00000dda     5...............
 8003f88:	00000dbd 00000da0 00000d83 00000d67     ............g...
 8003f98:	00000d4b 00000d30 00000d15 00000cfb     K...0...........
 8003fa8:	00000ce1 00000cc7 00000cbb 00000c96     ................
 8003fb8:	00000c71 00000c4d 00000c2a 00000c07     q...M...*.......
 8003fc8:	00000be4 00000bc3 00000ba2 00000b81     ................
 8003fd8:	00000b61 00000b42 00000b23 00000b05     a...B...#.......
 8003fe8:	00000ae7 00000aca 00000aad 00000a90     ................
 8003ff8:	00000a74 00000a59 00000a3e 00000a23     t...Y...>...#...
 8004008:	00000a09 000009ef 000009d6 000009bd     ................
 8004018:	000009a4 0000098c 00000974 0000095d     ........t...]...
 8004028:	00000946 0000092f 00000918 00000902     F.../...........
 8004038:	000008ec 000008d7 000008c2 000008ad     ................
 8004048:	00000899 00000884 00000870 0000085d     ........p...]...
 8004058:	00000849 00000836 00000823 00000811     I...6...#.......
 8004068:	000007ff 000007ec 000007db 000007c9     ................
 8004078:	000007b8 000007a7 00000796 00000785     ................
 8004088:	00000775 00000765 00000755 00000745     u...e...U...E...
 8004098:	00000735 00000726 00000717 00000708     5...&...........
 80040a8:	000006f9 000006eb 000006dc 000006ce     ................
 80040b8:	000006c0 000006b2 000006a4 00000697     ................
 80040c8:	0000068a 0000067c 0000066f 00000663     ....|...o...c...
 80040d8:	00000656 00000649 0000063d 00000631     V...I...=...1...
 80040e8:	00000625 00000619 0000060d 00000601     %...............
 80040f8:	000005f6 000005ea 000005df 000005d4     ................
 8004108:	000005c9 000005be 000005b3 000005a9     ................
 8004118:	0000059e 00000594 0000058a 0000057f     ................
 8004128:	00000575 0000056b 00000562 00000558     u...k...b...X...
 8004138:	0000054e 00000545 0000053b 00000532     N...E...;...2...
 8004148:	00000529 00000520 00000517 0000050e     )... ...........
 8004158:	00000505 000004fc 000004f4 000004eb     ................
 8004168:	000004e3 000004db 000004d2 000004ca     ................
 8004178:	000004c2 000004ba 000004b2 000004aa     ................
 8004188:	000004a3 0000049b 00000493 0000048c     ................
 8004198:	00000484 0000047d 00000476 0000046e     ....}...v...n...
 80041a8:	00000467 00000460 00000459 00000452     g...`...Y...R...
 80041b8:	0000044b 00000444 0000043e 00000437     K...D...>...7...
 80041c8:	00000430 0000042a 00000423 0000041d     0...*...#.......
 80041d8:	00000417 00000410 0000040a 00000404     ................
 80041e8:	000003fe 000003f8 000003f2 000003ec     ................
 80041f8:	000003e6 000003e0 000003da 000003cb     ................
 8004208:	000003c0 000003b6 000003ac 000003a2     ................
 8004218:	00000399 0000038f 00000386 0000037c     ............|...
 8004228:	00000373 0000036a 00000361 00000358     s...j...a...X...
 8004238:	0000034f 00000347 0000033e 00000336     O...G...>...6...
 8004248:	0000032e 00000325 0000031d 00000315     ....%...........
 8004258:	0000030e 00000306 000002fe 000002f7     ................
 8004268:	000002ef 000002e8 000002e1 000002d9     ................
 8004278:	000002d2 000002cb 000002c5 000002be     ................
 8004288:	000002b7 000002b0 000002aa 000002a3     ................
 8004298:	0000029d 00000297 00000290 0000028a     ................
 80042a8:	00000284 0000027e 00000278 00000272     ....~...x...r...
 80042b8:	0000026d 00000267 00000261 0000025c     m...g...a...\...
 80042c8:	00000256 00000251 0000024b 00000246     V...Q...K...F...
 80042d8:	00000241 0000023b 00000236 00000231     A...;...6...1...
 80042e8:	0000022c 00000227 00000222 0000021e     ,...'...".......
 80042f8:	00000219 00000214 0000020f 0000020b     ................
 8004308:	00000206 00000202 000001fd 000001f9     ................
 8004318:	000001f4 000001f0 000001ec 000001e8     ................
 8004328:	000001e3 000001df 000001db 000001d7     ................
 8004338:	000001d3 000001cf 000001cb 000001c8     ................
 8004348:	000001c4 000001c0 000001bc 000001b9     ................
 8004358:	000001b5 000001b1 000001ae 000001aa     ................
 8004368:	000001a7 000001a3 000001a0 0000019c     ................
 8004378:	00000199 00000196 00000192 0000018f     ................
 8004388:	0000018c 00000189 00000186 00000183     ................
 8004398:	0000017f 0000017c 00000179 00000176     ....|...y...v...
 80043a8:	00000173 00000171 0000016e 0000016b     s...q...n...k...
 80043b8:	00000168 00000165 00000162 00000160     h...e...b...`...
 80043c8:	0000015d 0000015a 00000158 00000155     ]...Z...X...U...
 80043d8:	00000152 00000150 0000014d 0000014b     R...P...M...K...
 80043e8:	00000148 00000146 00000143 00000141     H...F...C...A...
 80043f8:	0000013e 0000013c 0000013a 00000137     >...<...:...7...
 8004408:	00000135 00000133 00000130 0000012e     5...3...0.......
 8004418:	0000012c 0000012a 00000128 00000125     ,...*...(...%...
 8004428:	00000123 00000121 0000011f 0000011d     #...!...........
 8004438:	0000011b 00000119 00000117 00000115     ................
 8004448:	00000113 00000111 0000010f 0000010d     ................
 8004458:	0000010b 00000109 00000107 00000105     ................
 8004468:	00000104 00000102 00000100 000000fe     ................
 8004478:	000000fc 000000fb 000000f9 000000f7     ................
 8004488:	000000f5 000000f4 000000f2 000000f0     ................
 8004498:	000000ef 000000ed 000000ec 000000ea     ................
 80044a8:	000000e8 000000e7 000000e5 000000e4     ................
 80044b8:	000000e2 000000e1 000000df 000000de     ................
 80044c8:	000000dc 000000db 000000d9 000000d8     ................
 80044d8:	000000d6 000000d5 000000d3 000000d2     ................
 80044e8:	000000d1 000000cf 000000ce 000000cd     ................
 80044f8:	000000cb 000000ca 000000c9 000000c7     ................
 8004508:	000000c6 000000c5 000000c3 000000c2     ................
 8004518:	000000c1 000000c0 000000be 000000bd     ................
 8004528:	000000bc 000000bb 000000ba 000000b9     ................
 8004538:	000000b7 000000b6 000000b5 000000b4     ................
 8004548:	000000b3 000000b2 000000b1 000000af     ................
 8004558:	000000ae 000000ad 000000ac 000000ab     ................
 8004568:	000000aa 000000a9 000000a8 000000a7     ................
 8004578:	000000a6 000000a5 000000a4 000000a3     ................
 8004588:	000000a2 000000a1 000000a0 0000009f     ................
 8004598:	0000009e 0000009d 0000009c 0000009b     ................
 80045a8:	0000009a 00000099 00000098 00000098     ................
 80045b8:	00000097 00000096 00000095 00000094     ................
 80045c8:	00000093 00000092 00000091 00000091     ................
 80045d8:	00000090 0000008f 0000008e 0000008d     ................
 80045e8:	0000008c 0000008c 0000008b 0000008a     ................
 80045f8:	00000089 00000088 00000088 00000087     ................
 8004608:	00000086 00000085 00000084 00000084     ................
 8004618:	00000083 00000082 00000081 00000081     ................
 8004628:	00000080 0000007f 0000007f 0000007e     ............~...
 8004638:	0000007d 0000007c 0000007c 0000007b     }...|...|...{...
 8004648:	0000007a 0000007a 00000079 00000078     z...z...y...x...
 8004658:	00000078 00000077 00000076 00000076     x...w...v...v...
 8004668:	00000075 00000074 00000074 00000073     u...t...t...s...
 8004678:	00000073 00000072 00000071 00000071     s...r...q...q...
 8004688:	00000070 0000006f 0000006f 0000006e     p...o...o...n...
 8004698:	0000006e 0000006d 0000006c 0000006c     n...m...l...l...
 80046a8:	0000006b 0000006b 0000006a 00000000     k...k...j.......
