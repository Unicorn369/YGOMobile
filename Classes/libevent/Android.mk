LOCAL_PATH := $(call my-dir)
####################################
# Build libevent2_pthreads
include $(CLEAR_VARS)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/android $(LOCAL_PATH)/include
LOCAL_MODULE := libevent2_pthreads
LOCAL_SRC_FILES := evthread_pthread.c
include $(BUILD_STATIC_LIBRARY)


####################################
# Build libevent2_core
include $(CLEAR_VARS)

LOCAL_MODULE:= libevent2_core
LOCAL_STATIC_LIBRARIES := libevent2_pthreads

LOCAL_SRC_FILES := \
    buffer.c \
    bufferevent.c \
    bufferevent_filter.c \
    bufferevent_pair.c \
    bufferevent_ratelim.c \
    bufferevent_sock.c \
    epoll.c \
    event.c \
    evmap.c \
    evthread.c \
    evutil.c \
    evutil_rand.c \
    evutil_time.c \
    listener.c \
    log.c \
    signal.c \
    strlcpy.c \
    select.c \
    poll.c

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/android \
    $(LOCAL_PATH)/include

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

include $(BUILD_STATIC_LIBRARY)


####################################
# Build libevent2
include $(CLEAR_VARS)

LOCAL_MODULE:= libevent2
#LOCAL_STATIC_LIBRARIES := libevent2_pthreads

LOCAL_SRC_FILES := \
    buffer.c \
    bufferevent.c \
    bufferevent_filter.c \
    bufferevent_pair.c \
    bufferevent_ratelim.c \
    bufferevent_sock.c \
    epoll.c \
    event.c \
    evmap.c \
    evthread.c \
    evutil.c \
    evutil_rand.c \
    evutil_time.c \
    listener.c \
    log.c \
    signal.c \
    strlcpy.c \
    select.c \
    poll.c \
    \
    event_tagging.c \
    http.c \
    evdns.c \
    evrpc.c

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/android \
    $(LOCAL_PATH)/include

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

include $(BUILD_STATIC_LIBRARY)
