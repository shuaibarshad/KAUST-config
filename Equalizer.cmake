
set(EQUALIZER_PACKAGE_VERSION 1.5.0)
set(EQUALIZER_DEPENDS
  REQUIRED vmmlib Lunchbox Collage OpenGL Boost BISON FLEX
  OPTIONAL X11 DisplayCluster hwsd GLStats hwloc OpenSceneGraph SAGE OpenCV)
set(EQUALIZER_DEB_DEPENDS bison flex libboost-program-options-dev
  libx11-dev libgl1-mesa-dev libglewmx1.6-dev libspnav0
  libopenscenegraph-dev libopencv-dev)

set(EQUALIZER_BOOST_COMPONENTS "program_options")
set(EQUALIZER_ROOT_VAR EQ_ROOT)
set(EQUALIZER_REPO_URL https://github.com/Eyescale/Equalizer.git)
set(EQUALIZER_REPO_TAG master)
