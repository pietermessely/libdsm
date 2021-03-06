include(CheckIncludeFile)
check_include_file("alloca.h" HAVE_ALLOCA_H)
check_include_file("arpa/inet.h" HAVE_ARPA_INET_H)
check_include_file("bsd/string.h" HAVE_BSD_STRING_H)
check_include_file("dlfcn.h" HAVE_DLFCN_H)
check_include_file("gssapi/gssapi.h" HAVE_GSSAPI_GSSAPI_H)
check_include_file("ifaddrs.h" HAVE_IFADDRS_H)
check_include_file("inttypes.h" HAVE_INTTYPES_H)
check_include_file("libtasn1.h" HAVE_TASN1_3PLUS)
check_include_file("memory.h" HAVE_MEMORY_H)
check_include_file("netdb.h" HAVE_NETDB_H)
check_include_file("netinet/in.h" HAVE_NETINET_IN_H)
check_include_file("netinet/tcp.h" HAVE_NETINET_TCP_H)
check_include_file("net/if.h" HAVE_NET_IF_H)
check_include_file("poll.h" HAVE_POLL_H)
check_include_file("pthread.h" HAVE_PTHREAD)
check_include_file("stdint.h" HAVE_STDINT_H)
check_include_file("stdlib.h" HAVE_STDLIB_H)
check_include_file("strings.h" HAVE_STRINGS_H)
check_include_file("string.h" HAVE_STRING_H)
check_include_file("sys/filio.h" HAVE_SYS_FILIO_H)
check_include_file("sys/ioctl.h" HAVE_SYS_IOCTL_H)
check_include_file("sys/socket.h" HAVE_SYS_SOCKET_H)
check_include_file("sys/sockio.h" HAVE_SYS_SOCKIO_H)
check_include_file("sys/statvfs.h" HAVE_SYS_STATVFS_H)
check_include_file("sys/stat.h" HAVE_SYS_STAT_H)
check_include_file("sys/sysmacros.h" HAVE_SYS_SYSMACROS_H)
check_include_file("sys/time.h" HAVE_SYS_TIME_H)
check_include_file("sys/types.h" HAVE_SYS_TYPES_H)
check_include_file("sys/uio.h" HAVE_SYS_UIO_H)
check_include_file("sys/vfs.h" HAVE_SYS_VFS_H)
check_include_file("sys/queue.h" HAVE_SYS_QUEUE_H)
check_include_file("unistd.h" HAVE_UNISTD_H)
check_include_file("utime.h" HAVE_UTIME_H)
check_include_file("stddef.h" STDC_HEADERS)

# dsm specific (not that nice since they're hard coded for the moment)
#add_definitions(-DASN1_ARRAY_TYPE=asn1_static_node)
add_definitions(-DICONV_CONST) 
add_definitions(-D_FORTIFY_SOURCE=2)
#
set(LT_OBJDIR ".libs/")
set(PACKAGE ${PROJECT_NAME})
set(PACKAGE_BUGREPORT messely.pieter@gmail.com)
set(PACKAGE_NAME ${PROJECT_NAME})
set(PACKAGE_VERSION ${PROJECT_VERSION})
set(PACKAGE_STRING "${PROJECT_NAME} ${PACKAGE_VERSION}")
set(PACKAGE_TARNAME ${PROJECT_NAME})
set(PACKAGE_URL "")
#
set(STDC_HEADERS 1)
set(URANDOM "/dev/urandom")


include(CheckStructHasMember)
check_struct_has_member("struct sockaddr" sa_len sys/socket.h HAVE_SOCKADDR_LEN)
check_struct_has_member("struct sockaddr_storage" ss_family sys/socket.h HAVE_SOCKADDR_STORAGE)
#
check_struct_has_member ("struct timespec" tv_sec time.h HAVE_STRUCT_TIMESPEC)
#
include(CheckSymbolExists)
check_symbol_exists("makedev" "sys/mkdev.h" MAJOR_IN_MKDEV)
check_symbol_exists("makedev" "sys/sysmacros.h" MAJOR_IN_SYSMACROS)
check_symbol_exists("clock_gettime" "time.h" HAVE_CLOCK_GETTIME)
check_symbol_exists("clockid_t" "time.h" HAVE_CLOCKID_T)
check_symbol_exists("CLOCK_MONOTONIC" "time.h" HAVE_DECL_CLOCK_MONOTONIC 1)
check_symbol_exists("iconv" "iconv.h" HAVE_ICONV)
check_symbol_exists("getifaddrs" "ifaddrs.h" HAVE_GETIFADDRS)
check_symbol_exists("strlcat" "bsd/string.h" HAVE_LIBBSD)
check_symbol_exists("pipe" "unistd.h" HAVE_PIPE)
check_symbol_exists("nl_langinfo" "langinfo.h" HAVE_NL_LANGINFO)
check_symbol_exists(PTHREAD_PRIO_INHERIT pthread.h HAVE_PTHREAD_PRIO_INHERIT)
#
include(CheckFunctionExists)
check_function_exists(strlcpy HAVE_STRLCPY)
check_function_exists(strndup HAVE_STRNDUP)


include(CheckCCompilerFlag)
if(CMAKE_COMPILER_IS_GNUCC)
  check_c_compiler_flag(-Wall C_ACCEPTS_WALL)

  if(C_ACCEPTS_WALL)
    add_definitions(-Wall)
  endif()
endif()

# We always want 64 bit file offsets
add_definitions(-D_FILE_OFFSET_BITS=64)

configure_file(cmake/config.h.cmake ${CMAKE_CURRENT_BINARY_DIR}/config.h)
add_definitions(-DHAVE_CONFIG_H)
