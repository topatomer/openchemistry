set(_source "${CMAKE_CURRENT_SOURCE_DIR}/chemdata")
set(_build "${CMAKE_CURRENT_BINARY_DIR}/chemdata")

unset(_deps)
if(NOT USE_SYSTEM_MONGODB)
  list(APPEND _deps MongoCxxLib)
endif()

ExternalProject_Add(chemdata
  SOURCE_DIR ${_source}
  BINARY_DIR ${_build}
  CMAKE_ARGS
    ${OpenChemistry_DEFAULT_ARGS}
  DEPENDS
    ${_deps}
    chemkit)