#!/bin/bash
# remove old folder
rm -rf devops-w2-test
echo "old folder removed"

# create new folder
mkdir devops-w2-test
echo "new folder created"

# create two folders
cd devops-w2-test
mkdir fol_1
mkdir fol_2

# create files in fol_1
touch  ./fol_1/1_1.txt
touch  ./fol_1/1_2.txt
touch  ./fol_1/1_3.txt

# create files on fol_2

touch  ./fol_2/1_1.txt
touch  ./fol_2/1_2.txt
touch  ./fol_2/1_3.txt

# create  .gitignore
echo -e "fol_1\nfol_2" >> .gitignore

# change file permission
find . -type f \( -name "*_1.txt" -or -name "*_3.txt" \) -exec chmod 600 {} \;
find . -type f -name "*_2.txt" -exec chmod 777 {} \;

# create README file and add header
touch README.md
echo "README created"
echo "# Week 2 Lab – Bash & Git" >> README.md
echo "## by: Jiashun Chen, x19134118" >> README.md
echo -e "[Github Link](https://github.com/jiashun-nci/devops-lab-2-task-6)" >> README.md



# add to remote repo
git init
git add .
git commit -m "Week 2 Lab: Bash and  git  practise"
git remote add origin git@github.com:jiashun-nci/jiashun-nci-devops-lab-2-task-6.git
git branch -M main
git push -u origin main

echo "Job Completed"

# update README.md
echo "---" >> README.md
echo -e "To run the script.sh run: \`bash script.sh\`" >> README.md

git add .
git commit -m "Update README.md"
git push -u origin main


echo "README updated"
