	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 3
		;
		((P0 *)_this)->_1_2_i = trpt->bup.ovals[1];
		((P0 *)_this)->_1_2_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 4: // STATE 5
		;
		((P0 *)_this)->_1_2_1_j = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 7
		;
		((P0 *)_this)->_1_2_1_j = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 9
		;
		((P0 *)_this)->_1_2_1_j = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 18
		;
		((P0 *)_this)->_1_2_i = trpt->bup.ovals[1];
		((P0 *)_this)->S[ Index(((P0 *)_this)->_1_2_i, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 8: // STATE 18
		;
		((P0 *)_this)->_1_2_i = trpt->bup.ovals[1];
		((P0 *)_this)->S[ Index(((P0 *)_this)->_1_2_i, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 9: // STATE 26
		;
		((P0 *)_this)->T[0] = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 29
		;
		((P0 *)_this)->_1_3_i = trpt->bup.ovals[1];
		((P0 *)_this)->_1_3_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 11: // STATE 31
		;
		((P0 *)_this)->_1_3_2_j = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 33
		;
		((P0 *)_this)->_1_3_2_j = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 35
		;
		((P0 *)_this)->_1_3_2_j = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 44
		;
		((P0 *)_this)->_1_3_i = trpt->bup.ovals[1];
		((P0 *)_this)->T[ Index(((P0 *)_this)->_1_3_i, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 44
		;
		((P0 *)_this)->_1_3_i = trpt->bup.ovals[1];
		((P0 *)_this)->T[ Index(((P0 *)_this)->_1_3_i, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: // STATE 54
		;
		((P0 *)_this)->index_T = trpt->bup.ovals[2];
		((P0 *)_this)->index_S = trpt->bup.ovals[1];
		((P0 *)_this)->z = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 17: // STATE 56
		;
		((P0 *)_this)->_1_4_i = trpt->bup.ovals[1];
		((P0 *)_this)->_1_4_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 59
		;
		((P0 *)_this)->_1_4_3_j = trpt->bup.ovals[1];
		((P0 *)_this)->_1_4_3_j = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 22: // STATE 63
		;
		now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 66
		;
		((P0 *)_this)->_1_4_3_3_n = trpt->bup.ovals[1];
		((P0 *)_this)->_1_4_3_3_m = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 24: // STATE 67
		;
		now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 70
		;
	/* 0 */	((P0 *)_this)->z = trpt->bup.oval;
		;
		;
		goto R999;

	case 26: // STATE 71
		;
		((P0 *)_this)->z = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 84
		;
		((P0 *)_this)->_1_4_3_j = trpt->bup.ovals[2];
		((P0 *)_this)->index_T = trpt->bup.ovals[1];
		((P0 *)_this)->index_S = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 29: // STATE 84
		;
		((P0 *)_this)->_1_4_3_j = trpt->bup.ovals[2];
		((P0 *)_this)->index_T = trpt->bup.ovals[1];
		((P0 *)_this)->index_S = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 30: // STATE 81
		;
		now.arrayData[ Index(((((P0 *)_this)->_1_4_i*2)+((P0 *)_this)->_1_4_3_j), 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 84
		;
		((P0 *)_this)->_1_4_3_j = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 90
		;
		((P0 *)_this)->_1_4_i = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 101
		;
		((P0 *)_this)->_1_4_p = trpt->bup.ovals[1];
		((P0 *)_this)->_1_4_p = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 34: // STATE 104
		;
		((P0 *)_this)->_1_4_p = trpt->bup.oval;
		;
		goto R999;
;
		
	case 35: // STATE 110
		goto R999;
;
		;
		
	case 37: // STATE 116
		;
		((P0 *)_this)->_1_6_h = trpt->bup.ovals[2];
		((P0 *)_this)->_1_6_h = trpt->bup.ovals[1];
		((P0 *)_this)->_1_6_flag = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 38: // STATE 119
		;
		((P0 *)_this)->_1_6_5_k = trpt->bup.ovals[1];
		((P0 *)_this)->_1_6_5_k = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 40: // STATE 122
		;
		((P0 *)_this)->_1_6_5_4_exist = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 125
		;
		((P0 *)_this)->_1_6_5_4_p = trpt->bup.ovals[1];
		((P0 *)_this)->_1_6_5_4_p = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 42: // STATE 128
		;
		((P0 *)_this)->_1_6_5_4_1_y = trpt->bup.ovals[1];
		((P0 *)_this)->_1_6_5_4_1_x = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 43: // STATE 134
		;
		((P0 *)_this)->_1_6_5_4_p = trpt->bup.ovals[3];
		((P0 *)_this)->_1_6_5_4_exist = trpt->bup.ovals[2];
	/* 1 */	((P0 *)_this)->_1_6_5_4_1_y = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_1_6_5_4_1_x = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 44: // STATE 134
		;
		((P0 *)_this)->_1_6_5_4_p = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 159
		;
		((P0 *)_this)->_1_6_h = trpt->bup.ovals[2];
		((P0 *)_this)->_1_6_flag = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_1_6_5_4_exist = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 46: // STATE 153
		;
		((P0 *)_this)->_1_6_5_k = trpt->bup.ovals[1];
		((P0 *)_this)->_1_6_5_4_exist = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 47: // STATE 153
		;
		((P0 *)_this)->_1_6_5_k = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 159
		;
		((P0 *)_this)->_1_6_h = trpt->bup.oval;
		;
		goto R999;
;
		
	case 49: // STATE 165
		goto R999;

	case 50: // STATE 167
		;
		p_restor(II);
		;
		;
		goto R999;
	}

