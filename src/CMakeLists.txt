set(SOURCES hmac_md5.c
	netbios_ns.c
	netbios_query.c
	netbios_session.c
	netbios_utils.c
	smb_buffer.c
	smb_dir.c
	smb_fd.c
	smb_file.c
	smb_message.c
	smb_ntlm.c
	smb_session.c
	smb_session_msg.c
	smb_share.c
	smb_spnego.c
	smb_stat.c
	smb_trans2.c
	smb_transport.c
	smb_utils.c
	../contrib/mdx/md4.c
	../contrib/mdx/md5.c
	../contrib/rc4/rc4.c)

include_directories(contrib)

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

add_library(dsm ${SOURCES})
target_link_libraries(dsm PUBLIC ${core_DEPENDS} ${CORE_LIBRARIES})
#target_link_libraries(dsm Threads::Threads)
target_link_libraries(dsm "${CMAKE_THREAD_LIBS_INIT}")
set_target_properties(dsm PROPERTIES
                           VERSION ${PROJECT_VERSION}
                           SOVERSION ${SOVERSION})
if(NOT MSVC)
  #add_definitions("-D_U_=__attribute__((unused))")
else()
  #add_definitions("-D_U_=")
  if(CMAKE_SYSTEM_NAME STREQUAL WindowsStore)
    #add_definitions("-D_MSC_UWP")
  endif()
endif()

install(TARGETS dsm EXPORT dsm
                     RUNTIME DESTINATION bin
                     ARCHIVE DESTINATION lib${LIB_SUFFIX}
                     LIBRARY DESTINATION lib${LIB_SUFFIX})
