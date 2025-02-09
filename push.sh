#!/bin/bash

# directoryPath="test"

lastFileModificationDate=`stat --format="%y" /home/jimmybob/Desktop/Free-Green/fakeWork.txt`
currentDate=`date +"%F"`

echo ${lastFileModificationDate:0:10}
echo $currentDate
if [ "${lastFileModificationDate:0:10}" == "${currentDate}" ]
then
    echo "test"
else 
    echo "failed test"
fi

if [[ ${lastFileModificationDate:0:10}!=$currentDate ]]; then 
    if [ -e "/home/jimmybob/Desktop/Free-Green/fakeWork.txt" ]; then
        echo "Work" > /home/jimmybob/Desktop/Free-Green/fakeWork.txt
    else 
        touch /home/jimmybob/Desktop/Free-Green/fakeWork.txt
    fi 
    (cd /home/jimmybob/Desktop/Free-Green; git add .)
    (cd /home/jimmybob/Desktop/Free-Green; git commit -m "This commit is a certified test")
    (cd /home/jimmybob/Desktop/Free-Green; git push origin main)
else
    echo "No need to fake commit twice in a day."
fi