set(EQUALIZERGRAPHICS_OPTIONAL true)
set(EQUALIZERGRAPHICS_DEPENDS REQUIRED Equalizer EqDocs)
set(EQUALIZERGRAPHICS_REPO_URL https://github.com/Eyescale/equalizergraphics.com.git)
set(EQUALIZERGRAPHICS_REPO_TAG master)
set(EQUALIZERGRAPHICS_SOURCE "${CMAKE_SOURCE_DIR}/src/equalizergraphics")

set(EQUALIZERGRAPHICS_EXTRA
  CONFIGURE_COMMAND ${CMAKE_COMMAND} -E touch ${CMAKE_BINARY_DIR}/equalizergraphics/config.status
  BUILD_COMMAND ${CMAKE_COMMAND} -E touch ${CMAKE_BINARY_DIR}
  INSTALL_COMMAND ${CMAKE_COMMAND} -E touch ${CMAKE_BINARY_DIR}
)
