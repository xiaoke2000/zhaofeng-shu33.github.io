if( NOT SETUP_COMPILER_FLAGS_HAS_RUN )
  if(MSVC) # silence some warnings
    set( WARN_FLAGS "${WARN_FLAGS} /wd4244" ) # conversion from 'doublereal' to 'real', possible loss of data
    set( WARN_FLAGS "${WARN_FLAGS} /wd4554" ) # check operator precedence for possible error; use parentheses to clarify precedence
    set( WARN_FLAGS "${WARN_FLAGS} /wd4996" ) # This function or variable may be unsafe. Consider using freopen_s instead.
    set( CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${WARN_FLAGS}"
         CACHE STRING "Flags used by the C compiler during all build types." FORCE )
    set( CMAKE_DEBUG_POSTFIX "d" CACHE STRING "Append this string to debug lib names")
  endif(MSVC)
  set( SETUP_COMPILER_FLAGS_HAS_RUN TRUE CACHE INTERNAL "one-time setup of compiler options" FORCE)
endif( NOT SETUP_COMPILER_FLAGS_HAS_RUN )