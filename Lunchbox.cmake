
set(LUNCHBOX_PACKAGE_VERSION 1.8.0)
set(LUNCHBOX_REPO_URL https://github.com/Eyescale/Lunchbox.git)
set(LUNCHBOX_REPO_TAG master)
set(LUNCHBOX_DEPENDS eyescale eyescalePorts hwloc DNSSD REQUIRED Boost)
set(LUNCHBOX_DEB_DEPENDS libboost-regex-dev libboost-serialization-dev
  libhwloc-dev libavahi-compat-libdnssd-dev)
set(LUNCHBOX_BOOST_COMPONENTS "regex serialization")
set(LUNCHBOX_FORCE_BUILD ${CI_BUILD})
