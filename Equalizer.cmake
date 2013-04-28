
set(EQUALIZER_PACKAGE_VERSION 1.5.0)
set(EQUALIZER_DEPENDS
  REQUIRED vmmlib Lunchbox Collage OpenGL Boost
  OPTIONAL X11 hwsd GLStats hwloc OpenSceneGraph SAGE OpenCV)
set(EQUALIZER_DEB_DEPENDS libavahi-compat-libdnssd-dev libhwloc-dev bison flex
  libboost-all-dev librdmacm-dev libibverbs-dev librdmacm-dev libudt-dev
  libx11-dev libgl1-mesa-dev libglewmx1.6-dev libspnav0 librdmacm-dev
  libibverbs-dev librdmacm-dev libopenscenegraph-dev libopencv-dev)

set(EQUALIZER_BOOST_COMPONENTS "program_options")
set(EQUALIZER_ROOT_VAR EQ_ROOT)
set(EQUALIZER_REPO_URL https://github.com/Eyescale/Equalizer.git)
set(EQUALIZER_REPO_TAG master)
