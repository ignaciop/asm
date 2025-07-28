
trap2:     formato del fichero elf64-x86-64


Desensamblado de la sección .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Desensamblado de la sección .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <__stack_chk_fail@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <__stack_chk_fail@GLIBC_2.4>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <memset@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <memset@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <fgets@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <fgets@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <strtok@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <strtok@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <atoi@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4028 <atoi@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <exit@plt>:
    1090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 4030 <exit@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

Desensamblado de la sección .text:

00000000000010a0 <_start>:
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	31 ed                	xor    %ebp,%ebp
    10a6:	49 89 d1             	mov    %rdx,%r9
    10a9:	5e                   	pop    %rsi
    10aa:	48 89 e2             	mov    %rsp,%rdx
    10ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10b1:	50                   	push   %rax
    10b2:	54                   	push   %rsp
    10b3:	45 31 c0             	xor    %r8d,%r8d
    10b6:	31 c9                	xor    %ecx,%ecx
    10b8:	48 8d 3d da 00 00 00 	lea    0xda(%rip),%rdi        # 1199 <main>
    10bf:	ff 15 fb 2e 00 00    	call   *0x2efb(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    10c5:	f4                   	hlt
    10c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10cd:	00 00 00 
    10d0:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4050 <stdin@GLIBC_2.2.5>
    10d7:	48 8d 05 72 2f 00 00 	lea    0x2f72(%rip),%rax        # 4050 <stdin@GLIBC_2.2.5>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <_start+0x58>
    10e3:	48 8b 05 de 2e 00 00 	mov    0x2ede(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <_start+0x58>
    10ef:	ff e0                	jmp    *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	ret
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1100:	48 8d 3d 49 2f 00 00 	lea    0x2f49(%rip),%rdi        # 4050 <stdin@GLIBC_2.2.5>
    1107:	48 8d 35 42 2f 00 00 	lea    0x2f42(%rip),%rsi        # 4050 <stdin@GLIBC_2.2.5>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    %rsi
    1122:	74 14                	je     1138 <_start+0x98>
    1124:	48 8b 05 ad 2e 00 00 	mov    0x2ead(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <_start+0x98>
    1130:	ff e0                	jmp    *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1140:	f3 0f 1e fa          	endbr64
    1144:	80 3d 0d 2f 00 00 00 	cmpb   $0x0,0x2f0d(%rip)        # 4058 <stdin@GLIBC_2.2.5+0x8>
    114b:	75 33                	jne    1180 <_start+0xe0>
    114d:	55                   	push   %rbp
    114e:	48 83 3d 8a 2e 00 00 	cmpq   $0x0,0x2e8a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0d                	je     1168 <_start+0xc8>
    115b:	48 8b 3d de 2e 00 00 	mov    0x2ede(%rip),%rdi        # 4040 <__dso_handle>
    1162:	ff 15 78 2e 00 00    	call   *0x2e78(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1168:	e8 63 ff ff ff       	call   10d0 <_start+0x30>
    116d:	c6 05 e4 2e 00 00 01 	movb   $0x1,0x2ee4(%rip)        # 4058 <stdin@GLIBC_2.2.5+0x8>
    1174:	5d                   	pop    %rbp
    1175:	c3                   	ret
    1176:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    117d:	00 00 00 
    1180:	c3                   	ret
    1181:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1188:	00 00 00 00 
    118c:	0f 1f 40 00          	nopl   0x0(%rax)
    1190:	f3 0f 1e fa          	endbr64
    1194:	e9 67 ff ff ff       	jmp    1100 <_start+0x60>

0000000000001199 <main>:
    1199:	55                   	push   %rbp
    119a:	48 89 e5             	mov    %rsp,%rbp
    119d:	53                   	push   %rbx
    119e:	48 83 ec 58          	sub    $0x58,%rsp
    11a2:	89 7d ac             	mov    %edi,-0x54(%rbp)
    11a5:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
    11a9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11b0:	00 00 
    11b2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    11b6:	31 c0                	xor    %eax,%eax
    11b8:	48 89 e0             	mov    %rsp,%rax
    11bb:	48 89 c3             	mov    %rax,%rbx
    11be:	48 8d 05 43 0e 00 00 	lea    0xe43(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    11c5:	48 89 c7             	mov    %rax,%rdi
    11c8:	e8 63 fe ff ff       	call   1030 <puts@plt>
    11cd:	8b 05 75 2e 00 00    	mov    0x2e75(%rip),%eax        # 4048 <MINBUF_SIZE>
    11d3:	48 63 d0             	movslq %eax,%rdx
    11d6:	48 83 ea 01          	sub    $0x1,%rdx
    11da:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    11de:	48 98                	cltq
    11e0:	ba 10 00 00 00       	mov    $0x10,%edx
    11e5:	48 83 ea 01          	sub    $0x1,%rdx
    11e9:	48 01 d0             	add    %rdx,%rax
    11ec:	b9 10 00 00 00       	mov    $0x10,%ecx
    11f1:	ba 00 00 00 00       	mov    $0x0,%edx
    11f6:	48 f7 f1             	div    %rcx
    11f9:	48 6b c0 10          	imul   $0x10,%rax,%rax
    11fd:	48 29 c4             	sub    %rax,%rsp
    1200:	48 89 e0             	mov    %rsp,%rax
    1203:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1207:	8b 05 3b 2e 00 00    	mov    0x2e3b(%rip),%eax        # 4048 <MINBUF_SIZE>
    120d:	48 63 d0             	movslq %eax,%rdx
    1210:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1214:	be 00 00 00 00       	mov    $0x0,%esi
    1219:	48 89 c7             	mov    %rax,%rdi
    121c:	e8 2f fe ff ff       	call   1050 <memset@plt>
    1221:	48 8b 15 28 2e 00 00 	mov    0x2e28(%rip),%rdx        # 4050 <stdin@GLIBC_2.2.5>
    1228:	8b 0d 1a 2e 00 00    	mov    0x2e1a(%rip),%ecx        # 4048 <MINBUF_SIZE>
    122e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1232:	89 ce                	mov    %ecx,%esi
    1234:	48 89 c7             	mov    %rax,%rdi
    1237:	e8 24 fe ff ff       	call   1060 <fgets@plt>
    123c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1240:	48 8d 15 e1 0d 00 00 	lea    0xde1(%rip),%rdx        # 2028 <_IO_stdin_used+0x28>
    1247:	48 89 d6             	mov    %rdx,%rsi
    124a:	48 89 c7             	mov    %rax,%rdi
    124d:	e8 1e fe ff ff       	call   1070 <strtok@plt>
    1252:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1256:	48 8d 05 cb 0d 00 00 	lea    0xdcb(%rip),%rax        # 2028 <_IO_stdin_used+0x28>
    125d:	48 89 c6             	mov    %rax,%rsi
    1260:	bf 00 00 00 00       	mov    $0x0,%edi
    1265:	e8 06 fe ff ff       	call   1070 <strtok@plt>
    126a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    126e:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    1273:	74 07                	je     127c <main+0xe3>
    1275:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    127a:	75 19                	jne    1295 <main+0xfc>
    127c:	48 8d 05 a8 0d 00 00 	lea    0xda8(%rip),%rax        # 202b <_IO_stdin_used+0x2b>
    1283:	48 89 c7             	mov    %rax,%rdi
    1286:	e8 a5 fd ff ff       	call   1030 <puts@plt>
    128b:	bf 01 00 00 00       	mov    $0x1,%edi
    1290:	e8 fb fd ff ff       	call   1090 <exit@plt>
    1295:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1299:	48 89 c7             	mov    %rax,%rdi
    129c:	e8 df fd ff ff       	call   1080 <atoi@plt>
    12a1:	89 45 bc             	mov    %eax,-0x44(%rbp)
    12a4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    12a8:	48 89 c7             	mov    %rax,%rdi
    12ab:	e8 d0 fd ff ff       	call   1080 <atoi@plt>
    12b0:	89 45 c0             	mov    %eax,-0x40(%rbp)
    12b3:	8b 55 c0             	mov    -0x40(%rbp),%edx
    12b6:	8b 45 bc             	mov    -0x44(%rbp),%eax
    12b9:	89 d6                	mov    %edx,%esi
    12bb:	89 c7                	mov    %eax,%edi
    12bd:	e8 4b 00 00 00       	call   130d <trap2>
    12c2:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    12c5:	83 7d c4 01          	cmpl   $0x1,-0x3c(%rbp)
    12c9:	75 11                	jne    12dc <main+0x143>
    12cb:	48 8d 05 76 0d 00 00 	lea    0xd76(%rip),%rax        # 2048 <_IO_stdin_used+0x48>
    12d2:	48 89 c7             	mov    %rax,%rdi
    12d5:	e8 56 fd ff ff       	call   1030 <puts@plt>
    12da:	eb 0f                	jmp    12eb <main+0x152>
    12dc:	48 8d 05 87 0d 00 00 	lea    0xd87(%rip),%rax        # 206a <_IO_stdin_used+0x6a>
    12e3:	48 89 c7             	mov    %rax,%rdi
    12e6:	e8 45 fd ff ff       	call   1030 <puts@plt>
    12eb:	b8 00 00 00 00       	mov    $0x0,%eax
    12f0:	48 89 dc             	mov    %rbx,%rsp
    12f3:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    12f7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    12fe:	00 00 
    1300:	74 05                	je     1307 <main+0x16e>
    1302:	e8 39 fd ff ff       	call   1040 <__stack_chk_fail@plt>
    1307:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    130b:	c9                   	leave
    130c:	c3                   	ret

000000000000130d <trap2>:
    130d:	55                   	push   %rbp
    130e:	48 89 e5             	mov    %rsp,%rbp
    1311:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1314:	89 75 e8             	mov    %esi,-0x18(%rbp)
    1317:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    131e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1325:	eb 08                	jmp    132f <trap2+0x22>
    1327:	83 45 f8 64          	addl   $0x64,-0x8(%rbp)
    132b:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    132f:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
    1333:	7e f2                	jle    1327 <trap2+0x1a>
    1335:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1338:	8b 45 e8             	mov    -0x18(%rbp),%eax
    133b:	01 c2                	add    %eax,%edx
    133d:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1340:	01 c0                	add    %eax,%eax
    1342:	39 c2                	cmp    %eax,%edx
    1344:	0f 94 c0             	sete   %al
    1347:	0f b6 c0             	movzbl %al,%eax
    134a:	5d                   	pop    %rbp
    134b:	c3                   	ret

Desensamblado de la sección .fini:

000000000000134c <_fini>:
    134c:	f3 0f 1e fa          	endbr64
    1350:	48 83 ec 08          	sub    $0x8,%rsp
    1354:	48 83 c4 08          	add    $0x8,%rsp
    1358:	c3                   	ret
