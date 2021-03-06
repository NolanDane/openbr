set(BR_WITH_IPC2013 OFF CACHE BOOL "Build with Intel Perceptual Computing SDK 2013")

if(${BR_WITH_IPC2013})
  find_package(IPC2013 REQUIRED)
  set(BR_THIRDPARTY_SRC ${BR_THIRDPARTY_SRC} plugins/ipc2013.cpp)
  set(BR_THIRDPARTY_LIBS ${BR_THIRDPARTY_LIBS} ${IPC2013_LIBS})
  install(DIRECTORY ${IPC2013_DIR}/bin/x64/ DESTINATION bin)
endif()
