#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)
FILE=${CURRENT_DIR}/build

if [ ! -d "$FILE" ]; then
    echo "$FILE not exist"
    mkdir ${FILE}
fi

# Build project
cd ${FILE} && cmake -DEasy3D_ENABLE_QT=ON -DEasy3D_ENABLE_CGAL=ON -DEasy3D_BUILD_DOCUMENTATION=ON -DEasy3D_BUILD_TESTS=ON -DEasy3D_BUILD_PYTHON_BINDINGS=ON -DEasy3D_ENABLE_FFMPEG=ON -DCGAL_DO_NOT_WARN_ABOUT_CMAKE_BUILD_TYPE=TRUE .. && make -j32