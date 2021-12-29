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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *IEEE_P_3620187407;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_1991350011_3212880686_init();
    work_a_0403601100_3212880686_init();
    work_a_4015019049_3212880686_init();
    work_a_0123541133_3212880686_init();
    work_a_2944273966_3212880686_init();
    work_a_1553260227_3212880686_init();
    work_a_0909257147_3212880686_init();
    work_a_2438403994_3212880686_init();
    work_a_3792027181_3212880686_init();
    work_a_1666539893_3212880686_init();
    work_a_1209342514_3212880686_init();
    work_a_0450004039_3212880686_init();
    work_a_3515486745_3212880686_init();
    work_a_2663979118_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_0110751689_3212880686_init();
    work_a_1833817950_3212880686_init();
    work_a_2199296449_3212880686_init();
    work_a_3650175700_3212880686_init();
    work_a_0888426207_2372691052_init();


    xsi_register_tops("work_a_0888426207_2372691052");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
