# Copyright 2019 Google
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include(ExternalProject)

# Note: When updating to 20230802.0 or later, remove the PATCH_COMMAND below.
set(version 20220623.0)

ExternalProject_Add(
  abseil-cpp

  DOWNLOAD_DIR ${FIREBASE_DOWNLOAD_DIR}
  DOWNLOAD_NAME abseil-cpp-${version}.tar.gz
  URL https://github.com/abseil/abseil-cpp/archive/${version}.tar.gz
  URL_HASH SHA256=4208129b49006089ba1d6710845a45e31c59b0ab6bff9e5788a87f55c5abd602

  PREFIX ${PROJECT_BINARY_DIR}

  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND ""
  TEST_COMMAND ""
  HTTP_HEADER "${EXTERNAL_PROJECT_HTTP_HEADER}"

  PATCH_COMMAND patch -Np1 -i ${CMAKE_CURRENT_LIST_DIR}/abseil-cpp.patch.txt
)
