#!/bin/sh

#  BuildScript.sh
#
#
#
#  Copyright (c) 2017年 sunn. All rights reserved.

# Sets the target folders and the final framework product.
################以下是可配置的##########################
PREFIX_NAME="GamaSDK"   #合并后库文件的名字的前缀，一般默认都是这个
FUNCTION_NAME="Facebook"  #生成库文件的名字的功能描述，如Login， Ad等

DOTA_BUILD_FLODER_NAME="GamaFacebook_DotA" #请输入你需要生成的target名字。一定要写正确哦
#######################################################
#时间信息
CUR_TIME=`date "+ %Y-%m-%d %H:%M:%S"`
DATE=`date +%Y%m%d_%H%M%S`
OUTPUT_NAME="$PREFIX_NAME""_""$FUNCTION_NAME""_"".a"

# Install dir will be the final output to the framework.
# The following line create it in the root folder of     the current project.
#DOTA_FLODER_DIR=${SRCROOT}/Products/${DOTA_BUILD_FLODER_NAME}.framework
DOTA_FLODER_DIR="${SOURCE_ROOT}"/../../"GamaResources"/"_LibGroup"/"${DOTA_BUILD_FLODER_NAME}"
[ ! -d $DOTA_FLODER_DIR ] && mkdir $DOTA_FLODER_DIR

#DOTA_FLODER_DIR_DEBUG="${SOURCE_ROOT}"/../../"GamaResources"/"_LibGroup"/"${DOTA_BUILD_FLODER_NAME_DEBUG}"
#[ ! -d $DOTA_FLODER_DIR ] && mkdir $DOTA_FLODER_DIR_DEBUG

##删除已存在的旧版本
FILES=`ls $DOTA_FLODER_DIR | grep $FUNCTION_NAME`

[ ! -z "$FILES" ] && rm  "$DOTA_FLODER_DIR/"*$FUNCTION_NAME*.a


# Working dir will be deleted after the framework creation.
WRK_DIR=build
DEVICE_DIR=${WRK_DIR}/Release-iphoneos
SIMULATOR_DIR=${WRK_DIR}/Release-iphonesimulator

# -configuration ${CONFIGURATION}
# Clean and Building both architectures.
##分别编译模拟器和真机的Framework
#xcodebuild -target "${DOTA_BUILD_FLODER_NAME}" ONLY_ACTIVE_ARCH=NO -configuration ${CONFIGURATION} -sdk iphoneos BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}" clean build
#xcodebuild -target "${DOTA_BUILD_FLODER_NAME}" ONLY_ACTIVE_ARCH=NO -configuration ${CONFIGURATION} -sdk iphonesimulator BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}" clean build

xcodebuild -configuration "Releacse" -target "${DOTA_BUILD_FLODER_NAME}" -sdk iphoneos clean build
xcodebuild -configuration "Releacse" -target "${DOTA_BUILD_FLODER_NAME}" -sdk iphonesimulator build

# Cleaning the oldest.
#if [ -d "${DOTA_FLODER_DIR}" ]
#then
#rm -rf "${DOTA_FLODER_DIR}"
#fi

mkdir -p "${DOTA_FLODER_DIR}"

#cp -R "${DEVICE_DIR}/" "${DOTA_FLODER_DIR}/"

# Uses the Lipo Tool to merge both binary files (i386 + armv6/armv7) into one Universal final product.
lipo -create "${DEVICE_DIR}/lib${DOTA_BUILD_FLODER_NAME}.a" "${SIMULATOR_DIR}/lib${DOTA_BUILD_FLODER_NAME}.a" -output "${DOTA_FLODER_DIR}/${OUTPUT_NAME}"

# 拷贝本工程头文件
rm -r "${DOTA_FLODER_DIR}/include"
cp -R "${WRK_DIR}/Release-iphoneos/include" "${DOTA_FLODER_DIR}"

rm -r "${WRK_DIR}"

open -a Finder ${DOTA_FLODER_DIR}






##!/bin/sh
##要build的target名(若一个工程有多个target，最好手动指定需要打包的目标，如TARGET_NAME="framework名")
#TARGET_NAME=${"GamaFacebook_DotA"}
#if [[ $1 ]]
#then
#TARGET_NAME=$1
#fi
#UNIVERSAL_OUTPUT_FOLDER="${SRCROOT}/Products/"
#
##创建输出目录，并删除之前的framework文件
#mkdir -p "${UNIVERSAL_OUTPUT_FOLDER}"
#rm -rf "${UNIVERSAL_OUTPUT_FOLDER}/${TARGET_NAME}.a"
#
##分别编译模拟器和真机的Framework
#xcodebuild -target "${TARGET_NAME}" ONLY_ACTIVE_ARCH=NO -configuration ${CONFIGURATION} -sdk iphoneos BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}" clean build
#xcodebuild -target "${TARGET_NAME}" ONLY_ACTIVE_ARCH=NO -configuration ${CONFIGURATION} -sdk iphonesimulator BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}" clean build
#
##拷贝framework到univer目录
#cp -R "${BUILD_DIR}/${CONFIGURATION}-iphonesimulator/${TARGET_NAME}.a" "${UNIVERSAL_OUTPUT_FOLDER}"
#
##合并framework，输出最终的framework到build目录
#lipo -create -output "${UNIVERSAL_OUTPUT_FOLDER}/${TARGET_NAME}.a/${TARGET_NAME}" "${BUILD_DIR}/${CONFIGURATION}-iphonesimulator/${TARGET_NAME}.a/${TARGET_NAME}" "${BUILD_DIR}/${CONFIGURATION}-iphoneos/${TARGET_NAME}.a/${TARGET_NAME}"
#
##删除编译之后生成的无关的配置文件
#dir_path="${UNIVERSAL_OUTPUT_FOLDER}/${TARGET_NAME}.a/"
#for file in ls $dir_path
#do
#if [[ ${file} =~ ".xcconfig" ]]
#then
#rm -f "${dir_path}/${file}"
#fi
#done
#
##判断build文件夹是否存在，存在则删除
#if [ -d "${SRCROOT}/build" ]
#then
#rm -rf "${SRCROOT}/build"
#fi
#
#rm -rf "${BUILD_DIR}/${CONFIGURATION}-iphonesimulator" "${BUILD_DIR}/${CONFIGURATION}-iphoneos"
#
##打开合并后的文件夹
#open "${UNIVERSAL_OUTPUT_FOLDER}"
