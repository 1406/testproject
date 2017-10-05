class Log
{
public:
    void debug(const char *fmt, ...);
    void info(const char *fmt, ...);
    void warn(const char *fmt, ...);
    void error(const char *fmt, ...);
    void fatel(const char *fmt, ...);
    int init();
};
