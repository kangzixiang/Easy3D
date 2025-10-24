#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)
FILE=${CURRENT_DIR}/build

if [ ! -d "$FILE" ]; then
    echo "$FILE not exist"
    mkdir ${FILE}
fi

# Build project
cd ${FILE} && cmake -DEasy3D_ENABLE_QT=ON -DEasy3D_ENABLE_CGAL=ON -DCGAL_DO_NOT_WARN_ABOUT_CMAKE_BUILD_TYPE=TRUE .. && make -j32