#ifndef __RTCSERVICE_H__
#define __RTCSERVICE_H__

void rtc_get_time(unsigned char *year,
                  unsigned char *month,       
                  unsigned char *day,
                  unsigned char *hour,
                  unsigned char *minute,
                  unsigned char *second);

void rtc_set_time(unsigned char year,
                  unsigned char month,       
                  unsigned char day,
                  unsigned char hour,
                  unsigned char minute,
                  unsigned char second);

#endif /* __RTCSERVICE_H__ */

