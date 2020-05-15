#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - LCStr.prom:103 - [printf('Array S is : \\n')] (0:21:2 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("Array S is : \n");
		/* merge: i = 0(21, 2, 21) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_1_2_i;
		((P0 *)_this)->_1_2_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->_1_2_i);
#endif
		;
		/* merge: i = 0(21, 3, 21) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_2_i;
		((P0 *)_this)->_1_2_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->_1_2_i);
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 4: // STATE 4 - LCStr.prom:105 - [((i<=(2-1)))] (15:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((P0 *)_this)->_1_2_i<=(2-1))))
			continue;
		/* merge: j = i(0, 5, 15) */
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_2_1_j;
		((P0 *)_this)->_1_2_1_j = ((P0 *)_this)->_1_2_i;
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)_this)->_1_2_1_j);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 5: // STATE 6 - LCStr.prom:96 - [((j>0))] (12:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (!((((P0 *)_this)->_1_2_1_j>0)))
			continue;
		/* merge: j = (j-1)(0, 7, 12) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_2_1_j;
		((P0 *)_this)->_1_2_1_j = (((P0 *)_this)->_1_2_1_j-1);
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)_this)->_1_2_1_j);
#endif
		;
		/* merge: .(goto)(0, 13, 12) */
		reached[0][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 8 - LCStr.prom:97 - [((j<25))] (12:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((P0 *)_this)->_1_2_1_j<25)))
			continue;
		/* merge: j = (j+1)(0, 9, 12) */
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_2_1_j;
		((P0 *)_this)->_1_2_1_j = (((P0 *)_this)->_1_2_1_j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)_this)->_1_2_1_j);
#endif
		;
		/* merge: .(goto)(0, 13, 12) */
		reached[0][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 10 - LCStr.prom:98 - [(1)] (21:0:2 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!(1))
			continue;
		/* merge: goto :b1(21, 11, 21) */
		reached[0][11] = 1;
		;
		/* merge: S[i] = alphabet[j](21, 16, 21) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->S[ Index(((P0 *)_this)->_1_2_i, 2) ]);
		((P0 *)_this)->S[ Index(((P0 *)_this)->_1_2_i, 2) ] = ((int)((P0 *)_this)->alphabet[ Index(((P0 *)_this)->_1_2_1_j, 26) ]);
#ifdef VAR_RANGES
		logval(":init::S[:init::i]", ((int)((P0 *)_this)->S[ Index(((P0 *)_this)->_1_2_i, 2) ]));
#endif
		;
		/* merge: printf('%c',S[i])(21, 17, 21) */
		reached[0][17] = 1;
		Printf("%c", ((int)((P0 *)_this)->S[ Index(((P0 *)_this)->_1_2_i, 2) ]));
		/* merge: i = (i+1)(21, 18, 21) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_2_i;
		((P0 *)_this)->_1_2_i = (((P0 *)_this)->_1_2_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->_1_2_i);
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 8: // STATE 16 - LCStr.prom:108 - [S[i] = alphabet[j]] (0:21:2 - 3)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->S[ Index(((P0 *)_this)->_1_2_i, 2) ]);
		((P0 *)_this)->S[ Index(((P0 *)_this)->_1_2_i, 2) ] = ((int)((P0 *)_this)->alphabet[ Index(((P0 *)_this)->_1_2_1_j, 26) ]);
#ifdef VAR_RANGES
		logval(":init::S[:init::i]", ((int)((P0 *)_this)->S[ Index(((P0 *)_this)->_1_2_i, 2) ]));
#endif
		;
		/* merge: printf('%c',S[i])(21, 17, 21) */
		reached[0][17] = 1;
		Printf("%c", ((int)((P0 *)_this)->S[ Index(((P0 *)_this)->_1_2_i, 2) ]));
		/* merge: i = (i+1)(21, 18, 21) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_2_i;
		((P0 *)_this)->_1_2_i = (((P0 *)_this)->_1_2_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->_1_2_i);
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 9: // STATE 24 - LCStr.prom:111 - [printf('\\n')] (0:51:1 - 3)
		IfNotBlocked
		reached[0][24] = 1;
		Printf("\n");
		/* merge: T[0] = 0(51, 26, 51) */
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->T[0]);
		((P0 *)_this)->T[0] = 0;
#ifdef VAR_RANGES
		logval(":init::T[0]", ((int)((P0 *)_this)->T[0]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 27 - LCStr.prom:114 - [printf('Array T is : \\n')] (0:47:2 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		Printf("Array T is : \n");
		/* merge: i = 0(47, 28, 47) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_1_3_i;
		((P0 *)_this)->_1_3_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->_1_3_i);
#endif
		;
		/* merge: i = 0(47, 29, 47) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_3_i;
		((P0 *)_this)->_1_3_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->_1_3_i);
#endif
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 11: // STATE 30 - LCStr.prom:116 - [((i<=(2-1)))] (41:0:1 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (!((((P0 *)_this)->_1_3_i<=(2-1))))
			continue;
		/* merge: j = i(0, 31, 41) */
		reached[0][31] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_3_2_j;
		((P0 *)_this)->_1_3_2_j = ((P0 *)_this)->_1_3_i;
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)_this)->_1_3_2_j);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 12: // STATE 32 - LCStr.prom:96 - [((j>0))] (38:0:1 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((((P0 *)_this)->_1_3_2_j>0)))
			continue;
		/* merge: j = (j-1)(0, 33, 38) */
		reached[0][33] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_3_2_j;
		((P0 *)_this)->_1_3_2_j = (((P0 *)_this)->_1_3_2_j-1);
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)_this)->_1_3_2_j);
#endif
		;
		/* merge: .(goto)(0, 39, 38) */
		reached[0][39] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 34 - LCStr.prom:97 - [((j<25))] (38:0:1 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!((((P0 *)_this)->_1_3_2_j<25)))
			continue;
		/* merge: j = (j+1)(0, 35, 38) */
		reached[0][35] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_3_2_j;
		((P0 *)_this)->_1_3_2_j = (((P0 *)_this)->_1_3_2_j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)_this)->_1_3_2_j);
#endif
		;
		/* merge: .(goto)(0, 39, 38) */
		reached[0][39] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 36 - LCStr.prom:98 - [(1)] (47:0:2 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!(1))
			continue;
		/* merge: goto :b3(47, 37, 47) */
		reached[0][37] = 1;
		;
		/* merge: T[i] = alphabet[j](47, 42, 47) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->T[ Index(((P0 *)_this)->_1_3_i, 2) ]);
		((P0 *)_this)->T[ Index(((P0 *)_this)->_1_3_i, 2) ] = ((int)((P0 *)_this)->alphabet[ Index(((P0 *)_this)->_1_3_2_j, 26) ]);
#ifdef VAR_RANGES
		logval(":init::T[:init::i]", ((int)((P0 *)_this)->T[ Index(((P0 *)_this)->_1_3_i, 2) ]));
#endif
		;
		/* merge: printf('%c',T[i])(47, 43, 47) */
		reached[0][43] = 1;
		Printf("%c", ((int)((P0 *)_this)->T[ Index(((P0 *)_this)->_1_3_i, 2) ]));
		/* merge: i = (i+1)(47, 44, 47) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_3_i;
		((P0 *)_this)->_1_3_i = (((P0 *)_this)->_1_3_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->_1_3_i);
#endif
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 15: // STATE 42 - LCStr.prom:119 - [T[i] = alphabet[j]] (0:47:2 - 3)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->T[ Index(((P0 *)_this)->_1_3_i, 2) ]);
		((P0 *)_this)->T[ Index(((P0 *)_this)->_1_3_i, 2) ] = ((int)((P0 *)_this)->alphabet[ Index(((P0 *)_this)->_1_3_2_j, 26) ]);
#ifdef VAR_RANGES
		logval(":init::T[:init::i]", ((int)((P0 *)_this)->T[ Index(((P0 *)_this)->_1_3_i, 2) ]));
#endif
		;
		/* merge: printf('%c',T[i])(47, 43, 47) */
		reached[0][43] = 1;
		Printf("%c", ((int)((P0 *)_this)->T[ Index(((P0 *)_this)->_1_3_i, 2) ]));
		/* merge: i = (i+1)(47, 44, 47) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_3_i;
		((P0 *)_this)->_1_3_i = (((P0 *)_this)->_1_3_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->_1_3_i);
#endif
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 16: // STATE 50 - LCStr.prom:122 - [printf('\\n')] (0:111:3 - 3)
		IfNotBlocked
		reached[0][50] = 1;
		Printf("\n");
		/* merge: z = 0(111, 52, 111) */
		reached[0][52] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->z;
		((P0 *)_this)->z = 0;
#ifdef VAR_RANGES
		logval(":init::z", ((P0 *)_this)->z);
#endif
		;
		/* merge: index_S = -(1)(111, 53, 111) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->index_S;
		((P0 *)_this)->index_S =  -(1);
#ifdef VAR_RANGES
		logval(":init::index_S", ((P0 *)_this)->index_S);
#endif
		;
		/* merge: index_T = -(1)(111, 54, 111) */
		reached[0][54] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->index_T;
		((P0 *)_this)->index_T =  -(1);
#ifdef VAR_RANGES
		logval(":init::index_T", ((P0 *)_this)->index_T);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 17: // STATE 55 - LCStr.prom:9 - [i = 0] (0:93:2 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_1_4_i;
		((P0 *)_this)->_1_4_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->_1_4_i);
#endif
		;
		/* merge: i = 0(93, 56, 93) */
		reached[0][56] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_4_i;
		((P0 *)_this)->_1_4_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->_1_4_i);
#endif
		;
		/* merge: .(goto)(0, 94, 93) */
		reached[0][94] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 18: // STATE 57 - LCStr.prom:9 - [((i<=(2-1)))] (87:0:2 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!((((P0 *)_this)->_1_4_i<=(2-1))))
			continue;
		/* merge: j = 0(87, 58, 87) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_1_4_3_j;
		((P0 *)_this)->_1_4_3_j = 0;
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)_this)->_1_4_3_j);
#endif
		;
		/* merge: j = 0(87, 59, 87) */
		reached[0][59] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_4_3_j;
		((P0 *)_this)->_1_4_3_j = 0;
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)_this)->_1_4_3_j);
#endif
		;
		/* merge: .(goto)(0, 88, 87) */
		reached[0][88] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 19: // STATE 60 - LCStr.prom:11 - [((j<=(2-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		if (!((((P0 *)_this)->_1_4_3_j<=(2-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 61 - LCStr.prom:13 - [((S[i]==T[j]))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (!((((int)((P0 *)_this)->S[ Index(((P0 *)_this)->_1_4_i, 2) ])==((int)((P0 *)_this)->T[ Index(((P0 *)_this)->_1_4_3_j, 2) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 62 - LCStr.prom:15 - [(((i==0)||(j==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		if (!(((((P0 *)_this)->_1_4_i==0)||(((P0 *)_this)->_1_4_3_j==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 63 - LCStr.prom:15 - [arrayData[((i*2)+j)] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		(trpt+1)->bup.oval = now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ];
		now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ] = 1;
#ifdef VAR_RANGES
		logval("arrayData[((:init::i*2)+:init::j)]", now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 65 - LCStr.prom:18 - [m = (i-1)] (0:67:2 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_1_4_3_3_m;
		((P0 *)_this)->_1_4_3_3_m = (((P0 *)_this)->_1_4_i-1);
#ifdef VAR_RANGES
		logval(":init::m", ((P0 *)_this)->_1_4_3_3_m);
#endif
		;
		/* merge: n = (j-1)(67, 66, 67) */
		reached[0][66] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_4_3_3_n;
		((P0 *)_this)->_1_4_3_3_n = (((P0 *)_this)->_1_4_3_j-1);
#ifdef VAR_RANGES
		logval(":init::n", ((P0 *)_this)->_1_4_3_3_n);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 24: // STATE 67 - LCStr.prom:19 - [arrayData[((i*2)+j)] = (arrayData[((m*2)+n)]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		(trpt+1)->bup.oval = now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ];
		now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ] = (now.arrayData[ Index(((((P0 *)_this)->_1_4_3_3_m*2)+((P0 *)_this)->_1_4_3_3_n), 4) ]+1);
#ifdef VAR_RANGES
		logval("arrayData[((:init::i*2)+:init::j)]", now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 70 - LCStr.prom:22 - [((arrayData[((i*2)+j)]>z))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		if (!((now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ]>((P0 *)_this)->z)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: z */  (trpt+1)->bup.oval = ((P0 *)_this)->z;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->z = 0;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 71 - LCStr.prom:23 - [z = arrayData[((i*2)+j)]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->z;
		((P0 *)_this)->z = now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ];
#ifdef VAR_RANGES
		logval(":init::z", ((P0 *)_this)->z);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 72 - LCStr.prom:24 - [index_S = i] (0:87:3 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->index_S;
		((P0 *)_this)->index_S = ((P0 *)_this)->_1_4_i;
#ifdef VAR_RANGES
		logval(":init::index_S", ((P0 *)_this)->index_S);
#endif
		;
		/* merge: index_T = j(87, 73, 87) */
		reached[0][73] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->index_T;
		((P0 *)_this)->index_T = ((P0 *)_this)->_1_4_3_j;
#ifdef VAR_RANGES
		logval(":init::index_T", ((P0 *)_this)->index_T);
#endif
		;
		/* merge: .(goto)(87, 79, 87) */
		reached[0][79] = 1;
		;
		/* merge: .(goto)(87, 83, 87) */
		reached[0][83] = 1;
		;
		/* merge: j = (j+1)(87, 84, 87) */
		reached[0][84] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_1_4_3_j;
		((P0 *)_this)->_1_4_3_j = (((P0 *)_this)->_1_4_3_j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)_this)->_1_4_3_j);
#endif
		;
		/* merge: .(goto)(0, 88, 87) */
		reached[0][88] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 28: // STATE 74 - LCStr.prom:26 - [((arrayData[((i*2)+j)]==z))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][74] = 1;
		if (!((now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ]==((P0 *)_this)->z)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 75 - LCStr.prom:27 - [index_S = i] (0:87:3 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->index_S;
		((P0 *)_this)->index_S = ((P0 *)_this)->_1_4_i;
#ifdef VAR_RANGES
		logval(":init::index_S", ((P0 *)_this)->index_S);
#endif
		;
		/* merge: index_T = j(87, 76, 87) */
		reached[0][76] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->index_T;
		((P0 *)_this)->index_T = ((P0 *)_this)->_1_4_3_j;
#ifdef VAR_RANGES
		logval(":init::index_T", ((P0 *)_this)->index_T);
#endif
		;
		/* merge: .(goto)(87, 79, 87) */
		reached[0][79] = 1;
		;
		/* merge: .(goto)(87, 83, 87) */
		reached[0][83] = 1;
		;
		/* merge: j = (j+1)(87, 84, 87) */
		reached[0][84] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_1_4_3_j;
		((P0 *)_this)->_1_4_3_j = (((P0 *)_this)->_1_4_3_j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)_this)->_1_4_3_j);
#endif
		;
		/* merge: .(goto)(0, 88, 87) */
		reached[0][88] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 30: // STATE 81 - LCStr.prom:31 - [arrayData[((i*2)+j)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][81] = 1;
		(trpt+1)->bup.oval = now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ];
		now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ] = 0;
#ifdef VAR_RANGES
		logval("arrayData[((:init::i*2)+:init::j)]", now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 84 - LCStr.prom:11 - [j = (j+1)] (0:87:1 - 6)
		IfNotBlocked
		reached[0][84] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_4_3_j;
		((P0 *)_this)->_1_4_3_j = (((P0 *)_this)->_1_4_3_j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)_this)->_1_4_3_j);
#endif
		;
		/* merge: .(goto)(0, 88, 87) */
		reached[0][88] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 32: // STATE 90 - LCStr.prom:9 - [i = (i+1)] (0:93:1 - 3)
		IfNotBlocked
		reached[0][90] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_4_i;
		((P0 *)_this)->_1_4_i = (((P0 *)_this)->_1_4_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->_1_4_i);
#endif
		;
		/* merge: .(goto)(0, 94, 93) */
		reached[0][94] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 96 - LCStr.prom:36 - [printf(' LCStr length is %d ! \\n',z)] (0:107:2 - 3)
		IfNotBlocked
		reached[0][96] = 1;
		Printf(" LCStr length is %d ! \n", ((P0 *)_this)->z);
		/* merge: printf(' index_S  is %d  \\n',index_S)(107, 97, 107) */
		reached[0][97] = 1;
		Printf(" index_S  is %d  \n", ((P0 *)_this)->index_S);
		/* merge: printf(' index_T is %d  \\n',index_T)(107, 98, 107) */
		reached[0][98] = 1;
		Printf(" index_T is %d  \n", ((P0 *)_this)->index_T);
		/* merge: printf(' Common substring : \\n')(107, 99, 107) */
		reached[0][99] = 1;
		Printf(" Common substring : \n");
		/* merge: p = 0(107, 100, 107) */
		reached[0][100] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_1_4_p;
		((P0 *)_this)->_1_4_p = 0;
#ifdef VAR_RANGES
		logval(":init::p", ((P0 *)_this)->_1_4_p);
#endif
		;
		/* merge: p = ((index_S-z)+1)(107, 101, 107) */
		reached[0][101] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_4_p;
		((P0 *)_this)->_1_4_p = ((((P0 *)_this)->index_S-((P0 *)_this)->z)+1);
#ifdef VAR_RANGES
		logval(":init::p", ((P0 *)_this)->_1_4_p);
#endif
		;
		/* merge: .(goto)(0, 108, 107) */
		reached[0][108] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 34: // STATE 102 - LCStr.prom:41 - [((p<=index_S))] (107:0:1 - 1)
		IfNotBlocked
		reached[0][102] = 1;
		if (!((((P0 *)_this)->_1_4_p<=((P0 *)_this)->index_S)))
			continue;
		/* merge: printf('%c',S[p])(107, 103, 107) */
		reached[0][103] = 1;
		Printf("%c", ((int)((P0 *)_this)->S[ Index(((P0 *)_this)->_1_4_p, 2) ]));
		/* merge: p = (p+1)(107, 104, 107) */
		reached[0][104] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_4_p;
		((P0 *)_this)->_1_4_p = (((P0 *)_this)->_1_4_p+1);
#ifdef VAR_RANGES
		logval(":init::p", ((P0 *)_this)->_1_4_p);
#endif
		;
		/* merge: .(goto)(0, 108, 107) */
		reached[0][108] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 35: // STATE 110 - LCStr.prom:44 - [printf('\\n')] (0:113:0 - 3)
		IfNotBlocked
		reached[0][110] = 1;
		Printf("\n");
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 112 - LCStr.prom:50 - [assert(((((z<=2)&&(z<=2))&&(((index_S-z)+1)>=0))&&(((index_T-z)+1)>=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][112] = 1;
		spin_assert(((((((P0 *)_this)->z<=2)&&(((P0 *)_this)->z<=2))&&(((((P0 *)_this)->index_S-((P0 *)_this)->z)+1)>=0))&&(((((P0 *)_this)->index_T-((P0 *)_this)->z)+1)>=0)), "((((z<=2)&&(z<=2))&&(((index_S-z)+1)>=0))&&(((index_T-z)+1)>=0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 114 - LCStr.prom:57 - [flag = 0] (0:162:3 - 1)
		IfNotBlocked
		reached[0][114] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_1_6_flag);
		((P0 *)_this)->_1_6_flag = 0;
#ifdef VAR_RANGES
		logval(":init::flag", ((int)((P0 *)_this)->_1_6_flag));
#endif
		;
		/* merge: h = 0(162, 115, 162) */
		reached[0][115] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_6_h;
		((P0 *)_this)->_1_6_h = 0;
#ifdef VAR_RANGES
		logval(":init::h", ((P0 *)_this)->_1_6_h);
#endif
		;
		/* merge: h = 0(162, 116, 162) */
		reached[0][116] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_1_6_h;
		((P0 *)_this)->_1_6_h = 0;
#ifdef VAR_RANGES
		logval(":init::h", ((P0 *)_this)->_1_6_h);
#endif
		;
		/* merge: .(goto)(0, 163, 162) */
		reached[0][163] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 38: // STATE 117 - LCStr.prom:58 - [((h<=(2-1)))] (156:0:2 - 1)
		IfNotBlocked
		reached[0][117] = 1;
		if (!((((P0 *)_this)->_1_6_h<=(2-1))))
			continue;
		/* merge: k = 0(156, 118, 156) */
		reached[0][118] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_1_6_5_k;
		((P0 *)_this)->_1_6_5_k = 0;
#ifdef VAR_RANGES
		logval(":init::k", ((P0 *)_this)->_1_6_5_k);
#endif
		;
		/* merge: k = 0(156, 119, 156) */
		reached[0][119] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_6_5_k;
		((P0 *)_this)->_1_6_5_k = 0;
#ifdef VAR_RANGES
		logval(":init::k", ((P0 *)_this)->_1_6_5_k);
#endif
		;
		/* merge: .(goto)(0, 157, 156) */
		reached[0][157] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 39: // STATE 120 - LCStr.prom:60 - [((k<=(2-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][120] = 1;
		if (!((((P0 *)_this)->_1_6_5_k<=(2-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 121 - LCStr.prom:62 - [((S[h]==T[k]))] (148:0:1 - 1)
		IfNotBlocked
		reached[0][121] = 1;
		if (!((((int)((P0 *)_this)->S[ Index(((P0 *)_this)->_1_6_h, 2) ])==((int)((P0 *)_this)->T[ Index(((P0 *)_this)->_1_6_5_k, 2) ]))))
			continue;
		/* merge: exist = 1(0, 122, 148) */
		reached[0][122] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_1_6_5_4_exist);
		((P0 *)_this)->_1_6_5_4_exist = 1;
#ifdef VAR_RANGES
		logval(":init::exist", ((int)((P0 *)_this)->_1_6_5_4_exist));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 41: // STATE 123 - LCStr.prom:66 - [((((h+z)<=(2-1))&&((k+z)<=(2-1))))] (137:0:2 - 1)
		IfNotBlocked
		reached[0][123] = 1;
		if (!((((((P0 *)_this)->_1_6_h+((P0 *)_this)->z)<=(2-1))&&((((P0 *)_this)->_1_6_5_k+((P0 *)_this)->z)<=(2-1)))))
			continue;
		/* merge: p = 0(137, 124, 137) */
		reached[0][124] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_1_6_5_4_p;
		((P0 *)_this)->_1_6_5_4_p = 0;
#ifdef VAR_RANGES
		logval(":init::p", ((P0 *)_this)->_1_6_5_4_p);
#endif
		;
		/* merge: p = 1(137, 125, 137) */
		reached[0][125] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_6_5_4_p;
		((P0 *)_this)->_1_6_5_4_p = 1;
#ifdef VAR_RANGES
		logval(":init::p", ((P0 *)_this)->_1_6_5_4_p);
#endif
		;
		/* merge: .(goto)(0, 138, 137) */
		reached[0][138] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 42: // STATE 126 - LCStr.prom:68 - [((p<=z))] (132:0:2 - 1)
		IfNotBlocked
		reached[0][126] = 1;
		if (!((((P0 *)_this)->_1_6_5_4_p<=((P0 *)_this)->z)))
			continue;
		/* merge: x = (h+p)(132, 127, 132) */
		reached[0][127] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_1_6_5_4_1_x;
		((P0 *)_this)->_1_6_5_4_1_x = (((P0 *)_this)->_1_6_h+((P0 *)_this)->_1_6_5_4_p);
#ifdef VAR_RANGES
		logval(":init::x", ((P0 *)_this)->_1_6_5_4_1_x);
#endif
		;
		/* merge: y = (k+p)(132, 128, 132) */
		reached[0][128] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_6_5_4_1_y;
		((P0 *)_this)->_1_6_5_4_1_y = (((P0 *)_this)->_1_6_5_k+((P0 *)_this)->_1_6_5_4_p);
#ifdef VAR_RANGES
		logval(":init::y", ((P0 *)_this)->_1_6_5_4_1_y);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 43: // STATE 129 - LCStr.prom:72 - [((S[x]!=T[y]))] (137:0:4 - 1)
		IfNotBlocked
		reached[0][129] = 1;
		if (!((((int)((P0 *)_this)->S[ Index(((P0 *)_this)->_1_6_5_4_1_x, 2) ])!=((int)((P0 *)_this)->T[ Index(((P0 *)_this)->_1_6_5_4_1_y, 2) ]))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _1_6_5_4_1_x */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_1_6_5_4_1_x;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_1_6_5_4_1_x = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _1_6_5_4_1_y */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_6_5_4_1_y;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_1_6_5_4_1_y = 0;
		/* merge: exist = 0(137, 130, 137) */
		reached[0][130] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_1_6_5_4_exist);
		((P0 *)_this)->_1_6_5_4_exist = 0;
#ifdef VAR_RANGES
		logval(":init::exist", ((int)((P0 *)_this)->_1_6_5_4_exist));
#endif
		;
		/* merge: .(goto)(137, 133, 137) */
		reached[0][133] = 1;
		;
		/* merge: p = (p+1)(137, 134, 137) */
		reached[0][134] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->_1_6_5_4_p;
		((P0 *)_this)->_1_6_5_4_p = (((P0 *)_this)->_1_6_5_4_p+1);
#ifdef VAR_RANGES
		logval(":init::p", ((P0 *)_this)->_1_6_5_4_p);
#endif
		;
		/* merge: .(goto)(0, 138, 137) */
		reached[0][138] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 44: // STATE 134 - LCStr.prom:68 - [p = (p+1)] (0:137:1 - 3)
		IfNotBlocked
		reached[0][134] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_6_5_4_p;
		((P0 *)_this)->_1_6_5_4_p = (((P0 *)_this)->_1_6_5_4_p+1);
#ifdef VAR_RANGES
		logval(":init::p", ((P0 *)_this)->_1_6_5_4_p);
#endif
		;
		/* merge: .(goto)(0, 138, 137) */
		reached[0][138] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 45: // STATE 140 - LCStr.prom:77 - [((exist==1))] (162:0:3 - 1)
		IfNotBlocked
		reached[0][140] = 1;
		if (!((((int)((P0 *)_this)->_1_6_5_4_exist)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _1_6_5_4_exist */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_1_6_5_4_exist;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_1_6_5_4_exist = 0;
		/* merge: flag = 1(162, 141, 162) */
		reached[0][141] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_1_6_flag);
		((P0 *)_this)->_1_6_flag = 1;
#ifdef VAR_RANGES
		logval(":init::flag", ((int)((P0 *)_this)->_1_6_flag));
#endif
		;
		/* merge: goto :b8(162, 142, 162) */
		reached[0][142] = 1;
		;
		/* merge: h = (h+1)(162, 159, 162) */
		reached[0][159] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_1_6_h;
		((P0 *)_this)->_1_6_h = (((P0 *)_this)->_1_6_h+1);
#ifdef VAR_RANGES
		logval(":init::h", ((P0 *)_this)->_1_6_h);
#endif
		;
		/* merge: .(goto)(0, 163, 162) */
		reached[0][163] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 46: // STATE 147 - LCStr.prom:82 - [exist = 0] (0:156:2 - 1)
		IfNotBlocked
		reached[0][147] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_1_6_5_4_exist);
		((P0 *)_this)->_1_6_5_4_exist = 0;
#ifdef VAR_RANGES
		logval(":init::exist", ((int)((P0 *)_this)->_1_6_5_4_exist));
#endif
		;
		/* merge: .(goto)(156, 149, 156) */
		reached[0][149] = 1;
		;
		/* merge: .(goto)(156, 152, 156) */
		reached[0][152] = 1;
		;
		/* merge: k = (k+1)(156, 153, 156) */
		reached[0][153] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_1_6_5_k;
		((P0 *)_this)->_1_6_5_k = (((P0 *)_this)->_1_6_5_k+1);
#ifdef VAR_RANGES
		logval(":init::k", ((P0 *)_this)->_1_6_5_k);
#endif
		;
		/* merge: .(goto)(0, 157, 156) */
		reached[0][157] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 47: // STATE 153 - LCStr.prom:60 - [k = (k+1)] (0:156:1 - 6)
		IfNotBlocked
		reached[0][153] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_6_5_k;
		((P0 *)_this)->_1_6_5_k = (((P0 *)_this)->_1_6_5_k+1);
#ifdef VAR_RANGES
		logval(":init::k", ((P0 *)_this)->_1_6_5_k);
#endif
		;
		/* merge: .(goto)(0, 157, 156) */
		reached[0][157] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 48: // STATE 159 - LCStr.prom:58 - [h = (h+1)] (0:162:1 - 5)
		IfNotBlocked
		reached[0][159] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_1_6_h;
		((P0 *)_this)->_1_6_h = (((P0 *)_this)->_1_6_h+1);
#ifdef VAR_RANGES
		logval(":init::h", ((P0 *)_this)->_1_6_h);
#endif
		;
		/* merge: .(goto)(0, 163, 162) */
		reached[0][163] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 49: // STATE 165 - LCStr.prom:90 - [assert((flag==0))] (0:167:0 - 3)
		IfNotBlocked
		reached[0][165] = 1;
		spin_assert((((int)((P0 *)_this)->_1_6_flag)==0), "(flag==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 167 - LCStr.prom:138 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][167] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

