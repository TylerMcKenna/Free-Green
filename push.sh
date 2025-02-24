#!/bin/bash

directoryPath="/home/jimmybob/Desktop/Free-Green"

lastFileModificationDate=`stat --format="%y" ${directoryPath}/fakeWork.txt`
currentDate=`date +"%F"`

echo "${directoryPath}/fakeWork.txt"
echo "Work" >> ${directoryPath}/fakeWork.txt

if [ "${lastFileModificationDate:0:10}" != "${currentDate}" ] 
then 
    if [ -e "${directoryPath}/fakeWork.txt" ]
    then
        echo "Work" > ${directoryPath}/fakeWork.txt
    else 
        touch ${directoryPath}/fakeWork.txt
    fi 

    (cd ${directoryPath}; git add .)
    (cd ${directoryPath}; git commit -m "This commit is a certified test")
    (cd ${directoryPath}; git push origin main)
else
    echo "No need to fake commit twice in a day."
fi
