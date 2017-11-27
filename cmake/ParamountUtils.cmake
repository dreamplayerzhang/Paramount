function(check_sanitize_prerequisites san_option)
  if(${san_option})
    if(NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang" AND
       NOT CMAKE_CXX_COMPILER_ID MATCHES "GNU")
      message(WARNING "${san_option} only works with Clang or GCC")
    elseif(NOT CMAKE_BUILD_TYPE MATCHES "Debug")
      message(WARNING "${san_option} only works for debug builds")
    endif()
  endif()
endfunction()
