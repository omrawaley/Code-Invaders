# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/om/C++/CodeInvaders/_deps/sfml-src"
  "/Users/om/C++/CodeInvaders/_deps/sfml-build"
  "/Users/om/C++/CodeInvaders/_deps/sfml-subbuild/sfml-populate-prefix"
  "/Users/om/C++/CodeInvaders/_deps/sfml-subbuild/sfml-populate-prefix/tmp"
  "/Users/om/C++/CodeInvaders/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp"
  "/Users/om/C++/CodeInvaders/_deps/sfml-subbuild/sfml-populate-prefix/src"
  "/Users/om/C++/CodeInvaders/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/om/C++/CodeInvaders/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/om/C++/CodeInvaders/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
