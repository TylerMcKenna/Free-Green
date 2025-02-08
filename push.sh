if [ -e "./fakeWork.txt" ]; then
    rm ./fakeWork.txt
else 
    touch ./fakeWork.txt
fi 

echo "Enter your commit message"
read message
git add .
git commit -m"${message}"
git push -u origin master
