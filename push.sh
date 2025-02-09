#!/bin/bash

if [ -e "/home/jimmybob/Desktop/Free-Green/fakeWork.txt" ]; then
    rm /home/jimmybob/Desktop/Free-Green/fakeWork.txt
else 
    touch /home/jimmybob/Desktop/Free-Green/fakeWork.txt
fi 
(cd /home/jimmybob/Desktop/Free-Green; git add .)
(cd /home/jimmybob/Desktop/Free-Green; git commit -m "This commit is a certified test")
(cd /home/jimmybob/Desktop/Free-Green; git push origin main)
