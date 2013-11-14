set(EQOGRE_PACKAGE_VERSION 1.0.0)
set(EQOGRE_REPO_URL https://github.com/eile/eqOgre)
set(EQOGRE_DEPENDS REQUIRED Equalizer GLUT OGRE)
set(EQOGRE_FORCE_BUILD ${CI_BUILD})

set(EQOGRE_DEB_DEPENDS pkg-config freeglut3-dev)
# set(EQOGRE_PORT_DEPENDS freeglut ogre)

# ogre does not install Ubuntu 13.10 on due to boost version conflicts
if(NOT (LSB_RELEASE AND LSB_CODENAME STREQUAL "saucy"))
  list(APPEND EQOGRE_DEB_DEPENDS libogre-dev)
endif()