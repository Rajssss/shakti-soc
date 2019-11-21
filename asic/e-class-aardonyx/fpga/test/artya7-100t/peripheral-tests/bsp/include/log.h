/**
 * @file log.h
 * @project 
 * @brief  
 */

#include <stdarg.h>

// Log Levels 
#define TRACE 5
#define INFO 4
#define DEBUG 3
#define WARN 2
#define ERROR 1
#define FATAL 0

extern void vprintfmt(void (*putch)(int, void**), void **putdat, const char *fmt, va_list ap);

//function prototype 
void log_trace(const char*fmt, ...);
void log_info(const char*fmt, ...);
void log_debug(const char*fmt, ...);
void log_warn(const char*fmt, ...);
void log_error(const char*fmt, ...);
void log_fatal(const char*fmt, ...);

