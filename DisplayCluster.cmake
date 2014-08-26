set(DISPLAYCLUSTER_PACKAGE_VERSION 0.2.0)
#set(DISPLAYCLUSTER_REPO_URL https://github.com/smadhueagle/DisplayCluster.git)
set(DISPLAYCLUSTER_REPO_URL https://github.com/arshadsu/DisplayCluster.git)
set(DISPLAYCLUSTER_REPO_TAG mergeBBPDC)

set(DISPLAYCLUSTER_DEPENDS REQUIRED Boost LibJpegTurbo Qt4 
    OPTIONAL MPI Poppler GLUT OpenGL TUIO FFMPEG OpenMP FCGI SDL)
set(DISPLAYCLUSTER_BOOST_COMPONENTS "program_options date_time serialization unit_test_framework regex")
set(DISPLAYCLUSTER_QT4_COMPONENTS "QtCore QtGui QtNetwork QtOpenGL QtXml QtXmlPatterns QtSvg QtWebKit")
set(DISPLAYCLUSTER_POPPLER_COMPONENTS "Qt4")
set(DISPLAYCLUSTER_DEB_DEPENDS libavutil-dev libavformat-dev libavcodec-dev
  libopenmpi-dev openmpi-bin libjpeg-turbo8-dev libturbojpeg libswscale-dev freeglut3-dev
  libxmu-dev libpoppler-dev libboost-date-time-dev libboost-serialization-dev
  libboost-test-dev libboost-program-options-dev libboost-regex-dev libfcgi-dev)
set(DISPLAYCLUSTER_PORT_DEPENDS ffmpeg freeglut boost poppler)
#<<<<<<< HEAD
#set(DISPLAYCLUSTER_CMAKE_ARGS -DBUILD_DISPLAYCLUSTER_LIBRARY=ON -DBUILD_DESKTOPSTREAMER=ON #-DENABLE_TUIO_TOUCH_LISTENER=ON -DENABLE_PDF_SUPPORT=ON -DCMAKE_OSX_ARCHITECTURES=x86_64)



find_package(MPI)
if(MPI_FOUND)
  if(NOT MPI_C_COMPILER)
    set(MPI_C_COMPILER mpicc)
  endif()
  if(NOT MPI_CXX_COMPILER)
    set(MPI_CXX_COMPILER mpicxx)
  endif()
  set(DISPLAYCLUSTER_EXTRA
    CMAKE_COMMAND CC=${MPI_C_COMPILER} CXX=${MPI_CXX_COMPILER} MPI_INCLUDES=${MPI_INCLUDES} cmake)
endif()
