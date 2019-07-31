cmake_minimum_required(VERSION 3.2)

project(libdsm
        LANGUAGES C
        VERSION 0.0.1)

set(SOVERSION 1 CACHE STRING "" FORCE)

set(INSTALL_LIB_DIR "${CMAKE_INSTALL_PREFIX}/lib${LIB_SUFFIX}" CACHE PATH "Installation directory for libraries")
set(INSTALL_INC_DIR "${CMAKE_INSTALL_PREFIX}/include" CACHE PATH "Installation directory for headers")
set(INSTALL_PKGCONFIG_DIR "${CMAKE_INSTALL_PREFIX}/lib${LIB_SUFFIX}/pkgconfig" CACHE PATH "Installation directory for pkgconfig (.pc) files")
set(INSTALL_CMAKE_DIR "${CMAKE_INSTALL_PREFIX}/lib${LIB_SUFFIX}/cmake/libdsm" CACHE PATH "Installation directory for cmake (.cmake) files")

option(BUILD_SHARED_LIBS "Build shared libraries" OFF)
option(ENABLE_EXAMPLES "Build example programs" OFF)

include(cmake/ConfigureChecks.cmake)

include_directories(${CMAKE_CURRENT_BINARY_DIR}
                    include
                    include/bdsm
			contrib
			compat
			#contrib/mdx
			#contrib/rc4
			#contrib/spnego
)

set(core_DEPENDS CACHE STRING "" FORCE)

if(CMAKE_SYSTEM_NAME MATCHES Windows)
  list(APPEND CORE_LIBRARIES ws2_32.lib)
  #add_definitions(-DWIN32_LEAN_AND_MEAN -D_CRT_NONSTDC_NO_DEPRECATE -D_CRT_SECURE_NO_WARNINGS -DHAVE_SOCKADDR_IN6)
  #include_directories(include/msvc)
elseif(CMAKE_SYSTEM_NAME STREQUAL Solaris)
  #find_library(SOCKET_LIBRARY socket)
  #find_library(NSL_LIBRARY nsl)
  #list(APPEND CORE_LIBRARIES ${SOCKET_LIBRARY} ${NSL_LIBRARY})
endif()

if(ENABLE_EXAMPLES)
  add_subdirectory(bin)
endif()

add_subdirectory(src)

install(DIRECTORY include/
        DESTINATION ${INSTALL_INC_DIR})
