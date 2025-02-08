if [ -e "./fakeWork.txt" ]; then
    rm ./fakeWork.txt
    git add .
    git commit -m ""
    git push origin main
else 
    touch ./fakeWork.txt
fi 

echo "Enter your message"
read message
git add .
git commit -m"${message}"
if [ -n "$(git status - porcelain)" ];
then
 echo "IT IS CLEAN"
else
 git status
 echo "Pushing data to remote server!!!"
 git push -u origin master
fi
