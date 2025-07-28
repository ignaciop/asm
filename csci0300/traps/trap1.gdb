
trap1:     formato del fichero elf64-x86-64


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

0000000000001070 <atoi@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <atoi@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

Desensamblado de la sección .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	45 31 c0             	xor    %r8d,%r8d
    1096:	31 c9                	xor    %ecx,%ecx
    1098:	48 8d 3d da 00 00 00 	lea    0xda(%rip),%rdi        # 1179 <main>
    109f:	ff 15 1b 2f 00 00    	call   *0x2f1b(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    10a5:	f4                   	hlt
    10a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ad:	00 00 00 
    10b0:	48 8d 3d 89 2f 00 00 	lea    0x2f89(%rip),%rdi        # 4040 <stdin@GLIBC_2.2.5>
    10b7:	48 8d 05 82 2f 00 00 	lea    0x2f82(%rip),%rax        # 4040 <stdin@GLIBC_2.2.5>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <_start+0x58>
    10c3:	48 8b 05 fe 2e 00 00 	mov    0x2efe(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <_start+0x58>
    10cf:	ff e0                	jmp    *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	ret
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10e0:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4040 <stdin@GLIBC_2.2.5>
    10e7:	48 8d 35 52 2f 00 00 	lea    0x2f52(%rip),%rsi        # 4040 <stdin@GLIBC_2.2.5>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    %rsi
    1102:	74 14                	je     1118 <_start+0x98>
    1104:	48 8b 05 cd 2e 00 00 	mov    0x2ecd(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <_start+0x98>
    1110:	ff e0                	jmp    *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1120:	f3 0f 1e fa          	endbr64
    1124:	80 3d 1d 2f 00 00 00 	cmpb   $0x0,0x2f1d(%rip)        # 4048 <stdin@GLIBC_2.2.5+0x8>
    112b:	75 33                	jne    1160 <_start+0xe0>
    112d:	55                   	push   %rbp
    112e:	48 83 3d aa 2e 00 00 	cmpq   $0x0,0x2eaa(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0d                	je     1148 <_start+0xc8>
    113b:	48 8b 3d ee 2e 00 00 	mov    0x2eee(%rip),%rdi        # 4030 <__dso_handle>
    1142:	ff 15 98 2e 00 00    	call   *0x2e98(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1148:	e8 63 ff ff ff       	call   10b0 <_start+0x30>
    114d:	c6 05 f4 2e 00 00 01 	movb   $0x1,0x2ef4(%rip)        # 4048 <stdin@GLIBC_2.2.5+0x8>
    1154:	5d                   	pop    %rbp
    1155:	c3                   	ret
    1156:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    115d:	00 00 00 
    1160:	c3                   	ret
    1161:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1168:	00 00 00 00 
    116c:	0f 1f 40 00          	nopl   0x0(%rax)
    1170:	f3 0f 1e fa          	endbr64
    1174:	e9 67 ff ff ff       	jmp    10e0 <_start+0x60>

0000000000001179 <main>:
    1179:	55                   	push   %rbp
    117a:	48 89 e5             	mov    %rsp,%rbp
    117d:	53                   	push   %rbx
    117e:	48 83 ec 38          	sub    $0x38,%rsp
    1182:	89 7d cc             	mov    %edi,-0x34(%rbp)
    1185:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    1189:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1190:	00 00 
    1192:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1196:	31 c0                	xor    %eax,%eax
    1198:	48 89 e0             	mov    %rsp,%rax
    119b:	48 89 c3             	mov    %rax,%rbx
    119e:	48 8d 05 63 0e 00 00 	lea    0xe63(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    11a5:	48 89 c7             	mov    %rax,%rdi
    11a8:	e8 83 fe ff ff       	call   1030 <puts@plt>
    11ad:	8b 05 85 2e 00 00    	mov    0x2e85(%rip),%eax        # 4038 <MINBUF_SIZE>
    11b3:	48 63 d0             	movslq %eax,%rdx
    11b6:	48 83 ea 01          	sub    $0x1,%rdx
    11ba:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    11be:	48 98                	cltq
    11c0:	ba 10 00 00 00       	mov    $0x10,%edx
    11c5:	48 83 ea 01          	sub    $0x1,%rdx
    11c9:	48 01 d0             	add    %rdx,%rax
    11cc:	b9 10 00 00 00       	mov    $0x10,%ecx
    11d1:	ba 00 00 00 00       	mov    $0x0,%edx
    11d6:	48 f7 f1             	div    %rcx
    11d9:	48 6b c0 10          	imul   $0x10,%rax,%rax
    11dd:	48 29 c4             	sub    %rax,%rsp
    11e0:	48 89 e0             	mov    %rsp,%rax
    11e3:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    11e7:	8b 05 4b 2e 00 00    	mov    0x2e4b(%rip),%eax        # 4038 <MINBUF_SIZE>
    11ed:	48 63 d0             	movslq %eax,%rdx
    11f0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    11f4:	be 00 00 00 00       	mov    $0x0,%esi
    11f9:	48 89 c7             	mov    %rax,%rdi
    11fc:	e8 4f fe ff ff       	call   1050 <memset@plt>
    1201:	48 8b 15 38 2e 00 00 	mov    0x2e38(%rip),%rdx        # 4040 <stdin@GLIBC_2.2.5>
    1208:	8b 0d 2a 2e 00 00    	mov    0x2e2a(%rip),%ecx        # 4038 <MINBUF_SIZE>
    120e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1212:	89 ce                	mov    %ecx,%esi
    1214:	48 89 c7             	mov    %rax,%rdi
    1217:	e8 44 fe ff ff       	call   1060 <fgets@plt>
    121c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1220:	48 89 c7             	mov    %rax,%rdi
    1223:	e8 48 fe ff ff       	call   1070 <atoi@plt>
    1228:	89 45 d0             	mov    %eax,-0x30(%rbp)
    122b:	8b 45 d0             	mov    -0x30(%rbp),%eax
    122e:	89 c7                	mov    %eax,%edi
    1230:	e8 4b 00 00 00       	call   1280 <trap1>
    1235:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    1238:	83 7d d4 01          	cmpl   $0x1,-0x2c(%rbp)
    123c:	75 11                	jne    124f <main+0xd6>
    123e:	48 8d 05 e3 0d 00 00 	lea    0xde3(%rip),%rax        # 2028 <_IO_stdin_used+0x28>
    1245:	48 89 c7             	mov    %rax,%rdi
    1248:	e8 e3 fd ff ff       	call   1030 <puts@plt>
    124d:	eb 0f                	jmp    125e <main+0xe5>
    124f:	48 8d 05 fa 0d 00 00 	lea    0xdfa(%rip),%rax        # 2050 <_IO_stdin_used+0x50>
    1256:	48 89 c7             	mov    %rax,%rdi
    1259:	e8 d2 fd ff ff       	call   1030 <puts@plt>
    125e:	b8 00 00 00 00       	mov    $0x0,%eax
    1263:	48 89 dc             	mov    %rbx,%rsp
    1266:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    126a:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1271:	00 00 
    1273:	74 05                	je     127a <main+0x101>
    1275:	e8 c6 fd ff ff       	call   1040 <__stack_chk_fail@plt>
    127a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    127e:	c9                   	leave
    127f:	c3                   	ret

0000000000001280 <trap1>:
    1280:	55                   	push   %rbp
    1281:	48 89 e5             	mov    %rsp,%rbp
    1284:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1287:	c7 45 fc 1e 05 00 00 	movl   $0x51e,-0x4(%rbp)
    128e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1291:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    1294:	0f 9f c0             	setg   %al
    1297:	0f b6 c0             	movzbl %al,%eax
    129a:	5d                   	pop    %rbp
    129b:	c3                   	ret

Desensamblado de la sección .fini:

000000000000129c <_fini>:
    129c:	f3 0f 1e fa          	endbr64
    12a0:	48 83 ec 08          	sub    $0x8,%rsp
    12a4:	48 83 c4 08          	add    $0x8,%rsp
    12a8:	c3                   	ret
