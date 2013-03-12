
set(EQUALIZER_PACKAGE_VERSION 1.5.0)
set(EQUALIZER_DEPENDS
  REQUIRED vmmlib Lunchbox Collage OpenGL Boost
  OPTIONAL X11 hwsd GLStats hwloc OpenSceneGraph SAGE OpenCV)
set(EQUALIZER_BOOST_COMPONENTS "program_options")
set(EQUALIZER_ROOT_VAR EQ_ROOT)
set(EQUALIZER_REPO_URL https://github.com/Eyescale/Equalizer.git)
set(EQUALIZER_REPO_TAG master)
