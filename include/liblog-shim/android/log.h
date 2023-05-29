#pragma once

#include <cstdint>
#include <cstdlib>

#define ALOG(args...)
#define ALOGD(args...)
#define ALOGE(args...)
#define ALOGF(args...)
#define ALOGW(args...)
#define ALOGV(args...)
#define ALOGW_IF(args...)
#define ALOG_ASSERT(args...)
#define LOG_FATAL_IF(args...)

#define LOG_ALWAYS_FATAL(args...) exit(1)
#define LOG_ALWAYS_FATAL_IF(cond, args...) if (cond) exit(1)

#define __android_log_print(args...)
#define android_errorWriteLog(args...)
#define __android_log_buf_print(args...)
#define __android_log_set_logger(args...)
#define __android_log_set_aborter(args...)
#define __android_log_logd_logger(args...)
#define __android_log_call_aborter(args...)
#define __android_log_set_default_tag(args...)
#define __android_log_write_log_message(args...)

#define __android_log_is_loggable(args...)          false
#define __android_log_set_minimum_priority(args...) ANDROID_LOG_DEFAULT
#define __android_log_get_minimum_priority(args...) ANDROID_LOG_DEFAULT

typedef enum LogSeverity {
  VERBOSE,
  DEBUG,
  INFO,
  WARNING,
  ERROR,
  FATAL_WITHOUT_ABORT,
  FATAL,
} LogSeverity;

typedef enum log_id {
  LOG_ID_MIN = 0,
  LOG_ID_MAIN = 0,
  LOG_ID_RADIO = 1,
  LOG_ID_EVENTS = 2,
  LOG_ID_SYSTEM = 3,
  LOG_ID_CRASH = 4,
  LOG_ID_STATS = 5,
  LOG_ID_SECURITY = 6,
  LOG_ID_KERNEL = 7,
  LOG_ID_MAX,
  LOG_ID_DEFAULT = 0x7FFFFFFF
} log_id_t;

typedef enum android_LogPriority {
  ANDROID_LOG_UNKNOWN = 0,
  ANDROID_LOG_DEFAULT,
  ANDROID_LOG_VERBOSE,
  ANDROID_LOG_DEBUG,
  ANDROID_LOG_INFO,
  ANDROID_LOG_WARN,
  ANDROID_LOG_ERROR,
  ANDROID_LOG_FATAL,
  ANDROID_LOG_SILENT,
} android_LogPriority;

struct __android_log_message {
  size_t      struct_size;
  int32_t     buffer_id;
  int32_t     priority;
  const char* tag;
  const char* file;
  uint32_t    line;
  const char* message;
};

namespace android::base {
    static LogSeverity PriorityToLogSeverity(int);
}
