#include "log.hpp"
#include <stdarg.h>

FILE *logfile = stderr;

void Log:debug(const char *fmt, ...)
{
    va_list args;
    va_start(args, fmt);

    vfprintf(logfile, fmt, args);
}
