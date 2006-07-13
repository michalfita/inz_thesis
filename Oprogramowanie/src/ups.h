#ifndef __UPS_H__
#define __UPS_H__

sbit UPS_FAIL = P1^3;
sbit UPS_BATT = P1^2;
sbit D0_FAIL = P1^0;
sbit D1_FAIL = P1^1;

#define CHECK_UPS_FAIL (UPS_FAIL = 1, !UPS_FAIL)
#define CHECK_D0_FAIL  (D0_FAIL = 1, !D0_FAIL)
#define CHECK_D1_FAIL  (D1_FAIL = 1, !D1_FAIL)


#endif /* __UPS_H__ */
