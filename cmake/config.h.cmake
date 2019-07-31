/* config.h.cmake */

/* ... */
#define ASN1_ARRAY_TYPE asn1_static_node

/* Define to 1 if you have the <alloca.h> header file. */
#cmakedefine HAVE_ALLOCA_H

/* Define to 1 if you have the <arpa/inet.h> header file. */
#cmakedefine HAVE_ARPA_INET_H

/* Define to 1 if you have the <bsd/string.h> header file. */
#cmakedefine HAVE_BSD_STRING_H

/* Define to 1 if the system has the type `clockid_t'. */
#cmakedefine HAVE_CLOCKID_T

/* Define to 1 if you have the `clock_gettime' function. */
#cmakedefine HAVE_CLOCK_GETTIME

/* Define to 1 if you have the declaration of `CLOCK_MONOTONIC', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_CLOCK_MONOTONIC

/* Define to 1 if you have the <dlfcn.h> header file. */
#cmakedefine HAVE_DLFCN_H

/* Define to 1 if you have the `getifaddrs' function. */
#cmakedefine HAVE_GETIFADDRS

/* Define to 1 if you have the <gssapi/gssapi.h> header file. */
#cmakedefine HAVE_GSSAPI_GSSAPI_H

/* Define if you have the iconv() function and it works. */
#cmakedefine HAVE_ICONV

/* Define to 1 if you have the <ifaddrs.h> header file. */
#cmakedefine HAVE_IFADDRS_H

/* Define to 1 if you have the <inttypes.h> header file. */
#cmakedefine HAVE_INTTYPES_H

/* Define to 1 if you have the `nsl' library (-lnsl). */
#cmakedefine HAVE_LIBNSL

/* Does this system have libbsd strl*** functions implementation */
#cmakedefine HAVE_LIBBSD

/* Define to 1 if you have the `socket' library (-lsocket). */
#cmakedefine HAVE_LIBSOCKET

/* Define to 1 if you have the <memory.h> header file. */
#cmakedefine HAVE_MEMORY_H

/* Define to 1 if you have the <netdb.h> header file. */
#cmakedefine HAVE_NETDB_H

/* Define to 1 if you have the <netinet/in.h> header file. */
#cmakedefine HAVE_NETINET_IN_H

/* Define to 1 if you have the <netinet/tcp.h> header file. */
#cmakedefine HAVE_NETINET_TCP_H

/* Define to 1 if you have the <net/if.h> header file. */
#cmakedefine HAVE_NET_IF_H

/* Define to 1 if you have the `nl_langinfo' function. */
#cmakedefine HAVE_NL_LANGINFO

/* Define to 1 if you have the `pipe' function. */
#cmakedefine HAVE_PIPE

/* Define to 1 if you have the `_pipe' function. */
/* #undef HAVE__PIPE */

/* Define to 1 if you have the <poll.h> header file. */
#cmakedefine HAVE_POLL_H

/* Define if you have POSIX threads libraries and header files. */
#cmakedefine HAVE_PTHREAD

/* Have PTHREAD_PRIO_INHERIT. */
#cmakedefine HAVE_PTHREAD_PRIO_INHERIT

/* Whether sockaddr struct has sa_len */
#cmakedefine HAVE_SOCKADDR_LEN

/* Whether we have sockaddr_Storage */
#cmakedefine HAVE_SOCKADDR_STORAGE

/* Define to 1 if you have the <stdint.h> header file. */
#cmakedefine HAVE_STDINT_H

/* Define to 1 if you have the <stdlib.h> header file. */
#cmakedefine HAVE_STDLIB_H

/* Define to 1 if you have the <strings.h> header file. */
#cmakedefine HAVE_STRINGS_H

/* Define to 1 if you have the <string.h> header file. */
#cmakedefine HAVE_STRING_H

/* Define to 1 if you have the `strlcpy' function. */
#cmakedefine HAVE_STRLCPY

/* Define to 1 if you have the `strndup' function. */
#cmakedefine HAVE_STRNDUP

/* Define to 1 if the system has the type `struct timespec'. */
#cmakedefine HAVE_STRUCT_TIMESPEC

/* Define to 1 if you have the <sys/filio.h> header file. */
#cmakedefine HAVE_SYS_FILIO_H

/* Define to 1 if you have the <sys/ioctl.h> header file. */
#cmakedefine HAVE_SYS_IOCTL_H

/* Define to 1 if you have the <sys/socket.h> header file. */
#cmakedefine HAVE_SYS_SOCKET_H

/* Define to 1 if you have the <sys/sockio.h> header file. */
#cmakedefine HAVE_SYS_SOCKIO_H

/* Define to 1 if you have the <sys/statvfs.h> header file. */
#cmakedefine HAVE_SYS_STATVFS_H

/* Define to 1 if you have the <sys/stat.h> header file. */
#cmakedefine HAVE_SYS_STAT_H

/* Define to 1 if you have the <sys/time.h> header file. */
#cmakedefine HAVE_SYS_TIME_H

/* Define to 1 if you have the <sys/types.h> header file. */
#cmakedefine HAVE_SYS_TYPES_H

/* Define to 1 if you have the <sys/uio.h> header file. */
#cmakedefine HAVE_SYS_UIO_H

/* Define to 1 if you have the <sys/vfs.h> header file. */
#cmakedefine HAVE_SYS_VFS_H

/* Define to 1 if you have the <sys/queue.h> header file. */
#cmakedefine HAVE_SYS_QUEUE_H

/* libtasn1 has v 3.0 downcase types */
#cmakedefine HAVE_TASN1_3PLUS

/* Define to 1 if you have the <unistd.h> header file. */
#cmakedefine HAVE_UNISTD_H

/* Define to 1 if you have the <utime.h> header file. */
#cmakedefine HAVE_UTIME_H

/* Define to 1 if `major', `minor', and `makedev' are declared in <mkdev.h>. */
#cmakedefine MAJOR_IN_MKDEV

/* Define to 1 if `major', `minor', and `makedev' are declared in <sysmacros.h>. */
#cmakedefine MAJOR_IN_SYSMACROS

/* Define as const if the declaration of iconv() needs const. */
#define ICONV_CONST 

/* Define to the sub-directory where libtool stores uninstalled libraries. */
#define LT_OBJDIR

/* Define to 1 if you have the ANSI C header files. */
#cmakedefine STDC_HEADERS

/* Define to 1 for Unicode (Wide Chars) APIs. */
/* #undef UNICODE */

/* Path of the random number generation device */
#define URANDOM "/dev/urandom"

/* Define to 64 for large files support. */
#cmakedefine _FILE_OFFSET_BITS

/* Define to 2 to get glibc warnings. */
#cmakedefine _FORTIFY_SOURCE

/* Extensions to ISO C89 from ISO C99. */
/* #undef _ISOC99_SOURCE */

/* IEEE Std 1003.1. */
/* #undef _POSIX_C_SOURCE */

/* IEEE Std 1003.1. */
/* #undef _POSIX_SOURCE */

/* Define to 1 for Unicode (Wide Chars) APIs. */
/* #undef _UNICODE */

/* ... */
/* #undef asn1_static_node */

#include "compat.h"
