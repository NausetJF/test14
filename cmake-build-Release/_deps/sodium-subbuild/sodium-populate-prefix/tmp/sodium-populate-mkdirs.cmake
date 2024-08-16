# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/nausetjf/CodeFiles/raylib/test14/cmake-build-Release/_deps/sodium-src")
  file(MAKE_DIRECTORY "/Users/nausetjf/CodeFiles/raylib/test14/cmake-build-Release/_deps/sodium-src")
endif()
file(MAKE_DIRECTORY
  "/Users/nausetjf/CodeFiles/raylib/test14/cmake-build-Release/_deps/sodium-build"
  "/Users/nausetjf/CodeFiles/raylib/test14/cmake-build-Release/_deps/sodium-subbuild/sodium-populate-prefix"
  "/Users/nausetjf/CodeFiles/raylib/test14/cmake-build-Release/_deps/sodium-subbuild/sodium-populate-prefix/tmp"
  "/Users/nausetjf/CodeFiles/raylib/test14/cmake-build-Release/_deps/sodium-subbuild/sodium-populate-prefix/src/sodium-populate-stamp"
  "/Users/nausetjf/CodeFiles/raylib/test14/cmake-build-Release/_deps/sodium-subbuild/sodium-populate-prefix/src"
  "/Users/nausetjf/CodeFiles/raylib/test14/cmake-build-Release/_deps/sodium-subbuild/sodium-populate-prefix/src/sodium-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/nausetjf/CodeFiles/raylib/test14/cmake-build-Release/_deps/sodium-subbuild/sodium-populate-prefix/src/sodium-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/nausetjf/CodeFiles/raylib/test14/cmake-build-Release/_deps/sodium-subbuild/sodium-populate-prefix/src/sodium-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
