# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/xuejian/esp/esp-idf/components/bootloader/subproject"
  "/home/xuejian/Documents/JPad/firmware/hello_world/build/bootloader"
  "/home/xuejian/Documents/JPad/firmware/hello_world/build/bootloader-prefix"
  "/home/xuejian/Documents/JPad/firmware/hello_world/build/bootloader-prefix/tmp"
  "/home/xuejian/Documents/JPad/firmware/hello_world/build/bootloader-prefix/src/bootloader-stamp"
  "/home/xuejian/Documents/JPad/firmware/hello_world/build/bootloader-prefix/src"
  "/home/xuejian/Documents/JPad/firmware/hello_world/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/xuejian/Documents/JPad/firmware/hello_world/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
