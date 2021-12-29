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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/pc/OneDrive - Faculty of Engineering_Benha (Benha University)/Desktop/salma/pipeline project final file/pipeline project final file/PIPELINE/DATA_MEM.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1833817950_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:
LAB9:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 1672U);
    t7 = *((char **)t3);
    t3 = (t0 + 1512U);
    t8 = *((char **)t3);
    t3 = (t0 + 6988U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t3);
    t10 = (t9 - 268500992);
    t11 = (t10 / 4);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (32U * t13);
    t15 = (0U + t14);
    t16 = (t0 + 3552);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 32U);
    xsi_driver_first_trans_delta(t16, t15, 32U, 0LL);
    goto LAB6;

LAB8:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 1512U);
    t7 = *((char **)t1);
    t1 = (t0 + 6988U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t1);
    t10 = (t9 - 268500992);
    t11 = (t10 / 4);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t11);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t8 = (t4 + t15);
    t16 = (t0 + 3616);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB9;

}


extern void work_a_1833817950_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1833817950_3212880686_p_0};
	xsi_register_didat("work_a_1833817950_3212880686", "isim/pipeline_test_isim_beh.exe.sim/work/a_1833817950_3212880686.didat");
	xsi_register_executes(pe);
}
