
set(VRPN_PACKAGE_VERSION 07.30)
set(VRPN_REPO_URL https://github.com/BlueBrain/vrpn.git)
# set(VRPN_FORCE_BUILD ON) # Until finder is version-aware
set(VRPN_OPTIONAL ON)
# Build with Wiiuse support by default
set(VRPN_DEPENDS REQUIRED Wiiuse)
set(VRPN_CMAKE_ARGS -DVRPN_USE_WIIUSE=ON -DVRPN_GPL_SERVER=ON)
