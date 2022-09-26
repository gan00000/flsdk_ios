#!/bin/sh

set -e

# If we're already inside this script then die
if [ -n "$MULTIPLATFORM_BUILD_IN_PROGRESS" ]; then
exit 0
fi
export MULTIPLATFORM_BUILD_IN_PROGRESS=1

# Predefine variables
 export BUILT_TARGET="FLSDK"   # out
 export OUTPUT_FRAMEWORK_NAME="MWSDK" # default or out
 export OUTPUT_FRAMEWORK_BASE_LOCATION="$(PROJECT_DIR)" # out

INPUT_STATIC_LIB="lib${BUILT_TARGET}.a"
# FRAMEWORK_NAME declared in project optional
#OUTPUT_FRAMEWORK_NAME="${FRAMEWORK_NAME}"  # default or out
# OUTPUT_FRAMEWORK_BASE_LOCATION declared in project
#OUTPUT_FRAMEWORK_LOCATION="${OUTPUT_FRAMEWORK_BASE_LOCATION}/${OUTPUT_FRAMEWORK_NAME}.framework"

export TMP_FRAMEWORK_LOCATION="${BUILT_PRODUCTS_DIR}/${OUTPUT_FRAMEWORK_NAME}.framework"

# Create the path to the real Headers dir
mkdir -p "${TMP_FRAMEWORK_LOCATION}/Headers"

# # Copy the public headers into the framework
/bin/cp -a "${BUILT_PRODUCTS_DIR}/include/${BUILT_TARGET}/" \
"${TMP_FRAMEWORK_LOCATION}/Headers"

# Delete the last framework
#if [ -d "$OUTPUT_FRAMEWORK_LOCATION" ]; then
#rm -rf "${OUTPUT_FRAMEWORK_LOCATION}"
#fi

# Build the other platform.
xcodebuild -configuration "Release" -target "${BUILT_TARGET}" -sdk iphoneos clean build
xcodebuild -configuration "Release" -target "${BUILT_TARGET}" -sdk iphonesimulator build

function make_fat_library {
# Will smash 2 static libs together
xcrun lipo -create "${1}" "${2}" -output "${3}"
}

# Working dir will be deleted after the framework creation.
#WRK_DIR=
DEVICE_DIR=build/Release-iphoneos
SIMULATOR_DIR=build/Release-iphonesimulator

# Join the 2 static libs into 1 and push into the .framework
make_fat_library "${DEVICE_DIR}/${INPUT_STATIC_LIB}" \
"${SIMULATOR_DIR}/${INPUT_STATIC_LIB}" \
"${TMP_FRAMEWORK_LOCATION}/${OUTPUT_FRAMEWORK_NAME}"

# Copy the framework to the user's target location
cp -a "${TMP_FRAMEWORK_LOCATION}" "${OUTPUT_FRAMEWORK_BASE_LOCATION}"

open -a Finder "${OUTPUT_FRAMEWORK_BASE_LOCATION}"
#open -a Finder "${TMP_FRAMEWORK_LOCATION}"

