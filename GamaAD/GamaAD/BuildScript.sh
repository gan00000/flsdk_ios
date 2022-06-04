#!/bin/sh

# Sets the target folders and the final framework product.
################以下是可配置的##########################
PREFIX_NAME="MW"   #合并后库文件的名字的前缀，一般默认都是这个
FUNCTION_NAME="AD"  #生成库文件的名字的功能描述，如Login， Ad等

DOTA_BUILD_FLODER_NAME="GamaAD_DotA" #请输入你需要生成的target名字。一定要写正确哦

#######################################################
#时间信息
CUR_TIME=`date "+ %Y-%m-%d %H:%M:%S"`
DATE=`date +%Y%m%d_%H%M%S`
OUTPUT_NAME="$PREFIX_NAME""_""$FUNCTION_NAME"".a"

# Install dir will be the final output to the framework.
# The following line create it in the root folder of the current project.
#DOTA_FLODER_DIR=${SRCROOT}/Products/${DOTA_BUILD_FLODER_NAME}.framework
DOTA_FLODER_DIR="${SOURCE_ROOT}"/../../"GamaResources"/"_LibGroup"/"${DOTA_BUILD_FLODER_NAME}"
[ ! -d $DOTA_FLODER_DIR ] && mkdir $DOTA_FLODER_DIR

#删除已存在的旧版本
#FILES=`ls $DOTA_FLODER_DIR | grep $FUNCTION_NAME`
#
#[ ! -z "$FILES" ] && rm  "$DOTA_FLODER_DIR/"*$FUNCTION_NAME*.a

# Working dir will be deleted after the framework creation.
WRK_DIR=build
DEVICE_DIR=${WRK_DIR}/Release-iphoneos
SIMULATOR_DIR=${WRK_DIR}/Release-iphonesimulator

# -configuration ${CONFIGURATION}
# Clean and Building both architectures.
xcodebuild -configuration "Release" -target "${DOTA_BUILD_FLODER_NAME}" -sdk iphoneos clean build
xcodebuild -configuration "Release" -target "${DOTA_BUILD_FLODER_NAME}" -sdk iphonesimulator build

# Cleaning the oldest.
#if [ -d "${DOTA_FLODER_DIR}" ]
#then
#rm -rf "${DOTA_FLODER_DIR}"
#fi

mkdir -p "${DOTA_FLODER_DIR}"

#cp -R "${DEVICE_DIR}/" "${DOTA_FLODER_DIR}/"

# Uses the Lipo Tool to merge both binary files (i386 + armv6/armv7) into one Universal final product.
lipo -create "${DEVICE_DIR}/lib${DOTA_BUILD_FLODER_NAME}.a" "${SIMULATOR_DIR}/lib${DOTA_BUILD_FLODER_NAME}.a" -output "${DOTA_FLODER_DIR}/${OUTPUT_NAME}"

rm -r "${DOTA_FLODER_DIR}/include"
cp -R "${WRK_DIR}/Release-iphoneos/include" "${DOTA_FLODER_DIR}"

rm -r "${WRK_DIR}"

open -a Finder ${DOTA_FLODER_DIR}
