#!/bin/sh
# 放在与 .xcodeproj 文件同级目录下，生成结果在 build 目录下

# 需要编译的 scheme
scheme="MWSDK"

if [ -z "$scheme" ] || [ "$scheme" = "" ]; then
     echo "请填入 scheme 名称"
fi

echo "scheme: $scheme"

#返回这个脚本文件放置的目录，并可以根据这个目录来定位所要运行程序的相对路径
cd "$(dirname "$0")" || exit 0

if [ -d "build" ]; then
rm -rf "build"
fi
#if [ -d "archives" ]; then
#rm -rf "archives"
#fi

xcodebuild archive \
    -scheme "$scheme" \
    -sdk iphoneos \
    -archivePath "archives/ios_devices.xcarchive" \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
    SKIP_INSTALL=NO

xcodebuild archive \
    -scheme "$scheme" \
    -sdk iphonesimulator \
    -archivePath "archives/ios_simulators.xcarchive" \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
    SKIP_INSTALL=NO


#xcodebuild -configuration "Release" -target "${scheme}" -sdk iphoneos clean build
#xcodebuild -configuration "Release" -target "${scheme}" -sdk iphonesimulator build

# 优先从 archive 文件夹下读取
product_list=$(ls archives/ios_devices.xcarchive/Products/Library/Frameworks)
for file_name in $product_list
do
    full_product_name=$file_name
    break
done

# 读取不到就从 showBuildSettings 读取
if [ -z "$full_product_name" ] || [ "$full_product_name" = "" ]; then
    name_dict=$(xcodebuild -showBuildSettings | grep FULL_PRODUCT_NAME)
    full_product_name=${name_dict#*= }
fi

product_name=${full_product_name%.*}

xcodebuild -create-xcframework \
    -framework archives/ios_devices.xcarchive/Products/Library/Frameworks/"$full_product_name" \
    -framework archives/ios_simulators.xcarchive/Products/Library/Frameworks/"$full_product_name" \
    -output build/"$product_name".xcframework

open -a Finder "build"
    
    
    
