
set(HWLOC_PACKAGE_VERSION 1.5)

# can't autopain on Windows without too much hassle
# can't build universal on OS X
# Haven't bothered on BlueGene yet
if(MSVC OR APPLE OR LINUX_PPC)
  return()
endif()

set(HWLOC_REPO_URL https://github.com/BlueBrain/hwloc.git)
set(HWLOC_REPO_TAG display)
set(HWLOC_DEPENDS NVCtrl)
set(HWLOC_NOPACKAGE ON)
set(HWLOC_NOTEST ON)
set(HWLOC_OPTIONAL ON)

set(HWLOC_EXTRA CONFIGURE_COMMAND ${CMAKE_COMMAND} -P hwloc_configure_cmd.cmake)
