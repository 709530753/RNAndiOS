#demo param(1) .xcproject(.xcworkspace) param(2) plist文件路径 param(3) archive_path ipa路径 param(4)configurationType
#./RNAndiOS.sh RNAndiOS.xcworkspace ./bin/exportOptionsPlist.plist ./bin/ Debug

#param(1) 项目名称
project_fullName=$1

#param(2) plist文件路径
exportOptionsPlistPath=$2

#param(3) package_path
archive_path=$3
if test ${#archive_path} -gt 0
then
archive_path=""$archive_path"bin/"
else
archive_path="./bin/"
fi

#param(4) configuration 默认Releasew
configurationType=$4

project_name=''
project_type=''

if test ${#project_fullName} -gt 0
then
projectArr=(${project_fullName//./ })
echo $project_fullName
project_name=${projectArr[0]}
project_type=${projectArr[1]}
if test ${#project_name} -gt 0
then
echo $project_name
else
echo 'error : please input project_name'
exit
fi

if test ${#project_type} -gt 0
then
project_typeArr=(${project_type//xc/ })
if [ $project_type == 'xcworkspace' ]
then
project_type=${project_typeArr[0]}
else
project_type='project'
fi
echo $project_type
else
echo 'error : please input project_type'
exit
fi

else
echo "error : please input project_fullName"
exit
fi

if test ${#exportOptionsPlistPath} -gt 0
then
echo $exportOptionsPlistPath
else
echo "error : please input exportOptionsPlistPath"
exit
fi

echo $archive_path

if test ${#configurationType} -gt 0
then
echo $configurationType
else
configurationType='Release'
fi

#clean project
clean_commond='xcodebuild clean'
echo $clean_commond

if test ${#project_fullName} -gt 0
then
$clean_commond
else
echo "error : please input project_fullName"
exit
fi

#build project
build_commond="xcodebuild -scheme "$project_name" -"$project_type" "$project_fullName" -configuration "$configurationType""
echo $build_commond
$build_commond

#archive project
archive_commond="xcodebuild archive -scheme "$project_name" -"$project_type" "$project_fullName" -configuration "$configurationType" -archivePath "$archive_path""$project_name""
echo $archive_commond
$archive_commond

#exportArchive
exportArchive_commond="xcodebuild -exportArchive -archivePath "$archive_path""$project_name".xcarchive -exportPath "$archive_path" -exportOptionsPlist "$exportOptionsPlistPath""
echo $exportArchive_commond
$exportArchive_commond
