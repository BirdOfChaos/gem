if (("${CMAKE_Fortran_COMPILER_ID}" STREQUAL "Intel") AND NOT ("${CMAKE_SYSTEM_NAME}" STREQUAL "CrayLinuxEnvironment"))
  if(CMAKE_Fortran_COMPILER_VERSION VERSION_GREATER 2021)
    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -qmkl -static-intel")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -qmkl")
    set(CMAKE_EXE_LINKER_FLAGS_INIT "${CMAKE_EXE_LINKER_FLAGS_INIT} -qmkl")
  else()
    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -mkl -static-intel")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mkl")
    set(CMAKE_EXE_LINKER_FLAGS_INIT "${CMAKE_EXE_LINKER_FLAGS_INIT} -mkl")
  endif()
endif()
