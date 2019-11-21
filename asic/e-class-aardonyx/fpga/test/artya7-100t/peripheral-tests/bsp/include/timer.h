#ifndef TIMER_H
#define TIMER_H

#define CLINT_CTRL_ADDR 0x02000000
#define  CLINT_MTIME 0xbff8

uint64_t get_timer_value();

#endif
