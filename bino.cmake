# can't autopain on Windows without too much hassle
# can't build universal on OS X
if(MSVC OR APPLE)
  return()
endif()

set(BINO_PACKAGE_VERSION 1.4.0)
set(BINO_REPO_URL git://git.savannah.nongnu.org/bino.git)
set(BINO_REPO_TAG bino-1.4.0)
set(BINO_DEPENDS Equalizer REQUIRED FFMPEG GLEW OpenAL Qt4)
set(BINO_SOURCE "${CMAKE_SOURCE_DIR}/src/bino")
set(BINO_OPTIONAL ON)
set(BINO_EXTRA
  PATCH_COMMAND cd ${BINO_SOURCE} && autoreconf -i
  CONFIGURE_COMMAND PKG_CONFIG_PATH=${CMAKE_CURRENT_BINARY_DIR}/install/lib/pkgconfig ${BINO_SOURCE}/configure  "--prefix=${CMAKE_CURRENT_BINARY_DIR}/install" CPPFLAGS=-I${CMAKE_CURRENT_BINARY_DIR}/install/include LDFLAGS=-L${CMAKE_CURRENT_BINARY_DIR}/install/lib
)
