if [ -e "./fakeWork.txt" ]; then
    rm ./fakeWork.txt
else 
    touch ./fakeWork.txt
fi 

git add .
git commit -m "This commit is a certified banger"
git push origin main
