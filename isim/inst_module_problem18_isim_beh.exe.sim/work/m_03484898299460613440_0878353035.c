/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/students/home/ncleves/CatPU/inst_module_problem18.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {319U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {391U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {320U, 0U};
static int ng7[] = {3, 0};
static unsigned int ng8[] = {399U, 0U};
static int ng9[] = {4, 0};
static unsigned int ng10[] = {329U, 0U};
static int ng11[] = {5, 0};
static unsigned int ng12[] = {276U, 0U};
static int ng13[] = {6, 0};
static unsigned int ng14[] = {286U, 0U};
static int ng15[] = {7, 0};
static unsigned int ng16[] = {531U, 0U};
static int ng17[] = {8, 0};
static unsigned int ng18[] = {598U, 0U};
static int ng19[] = {9, 0};
static unsigned int ng20[] = {418U, 0U};
static int ng21[] = {10, 0};
static unsigned int ng22[] = {352U, 0U};
static int ng23[] = {11, 0};
static unsigned int ng24[] = {772U, 0U};
static int ng25[] = {12, 0};
static unsigned int ng26[] = {596U, 0U};
static int ng27[] = {13, 0};
static int ng28[] = {14, 0};
static unsigned int ng29[] = {353U, 0U};
static int ng30[] = {15, 0};
static unsigned int ng31[] = {780U, 0U};
static int ng32[] = {16, 0};
static int ng33[] = {17, 0};
static unsigned int ng34[] = {761U, 0U};
static int ng35[] = {18, 0};
static unsigned int ng36[] = {471U, 0U};
static int ng37[] = {19, 0};
static unsigned int ng38[] = {23U, 0U};
static int ng39[] = {20, 0};
static unsigned int ng40[] = {721U, 0U};
static int ng41[] = {21, 0};
static unsigned int ng42[] = {583U, 0U};
static int ng43[] = {22, 0};
static unsigned int ng44[] = {277U, 0U};
static int ng45[] = {23, 0};
static int ng46[] = {24, 0};
static int ng47[] = {25, 0};
static unsigned int ng48[] = {0U, 0U};



static void Always_28_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 2680);
    *((int *)t2) = 1;
    t3 = (t0 + 2392);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng28)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng30)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng32)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng33)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng35)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng37)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng39)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng41)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng43)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng45)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng46)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng47)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 32);
    if (t6 == 1)
        goto LAB57;

LAB58:
LAB60:
LAB59:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng48)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 10);

LAB61:    goto LAB2;

LAB7:    xsi_set_current_line(32, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1448);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 10);
    goto LAB61;

LAB9:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB11:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB13:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB15:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB17:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB19:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB21:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB23:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB25:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB27:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB29:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB31:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB33:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB35:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng29)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB37:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng31)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB39:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB41:    xsi_set_current_line(66, ng0);
    t3 = ((char*)((ng34)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB43:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng36)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB45:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng38)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB47:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng40)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB49:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng42)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB51:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng44)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB53:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng34)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB55:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng36)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

LAB57:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng38)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB61;

}


extern void work_m_03484898299460613440_0878353035_init()
{
	static char *pe[] = {(void *)Always_28_0};
	xsi_register_didat("work_m_03484898299460613440_0878353035", "isim/inst_module_problem18_isim_beh.exe.sim/work/m_03484898299460613440_0878353035.didat");
	xsi_register_executes(pe);
}
