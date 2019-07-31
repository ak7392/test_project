1.	Created two folders project 1 and project 2 in Desktop and created one remote repository named test_project. Set url for remote repository. 
2.	cd project1
3.	git checkout -b staging.
4.	“vim test1.txt” ..added contents to it. “git add test1.txt”  and then do  git commit -m “This is the first commit”  or git commit and text editor opens, write your message and save results wq!.
5.	git push -u origin master.
6.	cd project2
7.	git clone git@github.com:ak7392/test_project.git
8.	once inside project2 directory – git checkout staging
9.	vim test1.txt ..change text. git add test1.txt  and do commit “git commit” then text editor opens .. write your message and wq! (save edits).
10.	git push -u origin staging
11.	cd project1
12.	git checkout staging
13.	vim test1.txt .. “git add test1.txt” then do commit using git commit -m “This is third commit”.
14.	git push -u origin staging. (Basically our working directory was not updated with some changes pushed in remote repository from another working git directory as we have shown above and thus it creates a conflict. So we first need to do a git pull and then do a git push).
15.	git checkout master
16.	git merge staging
17.	git checkout -b testing
18.	vim test1.txt , change content as ‘A is an alphabet’ git add .  and do git commit with message.
19.	‘B is an alphabet’ git add .  and do git commit
‘C is an alphabet’ git add .  and do git commit
‘D is an alphabet’ git add .  and do git commit
‘E is an alphabet’ git add .  and do git commit
‘F is an alphabet’ git add .  and do git commit
‘G is an alphabet’ git add .  and do git commit
20.	git push -u origin testing

21.	git checkout master
22.	vim text1.txt, change content as ‘1 is an number’ git add .  and do git commit
23.	‘2 is an number’ git add .  and do git commit
‘3 is an number’ git add .  and do git commit
‘4 is an number’ git add .  and do git commit
‘5 is an number’ git add .  and do git commit
‘6 is an number’ git add .  and do git commit
‘7 is an number’ git add .  and do git commit
24.	git push -u origin master
25.	git rebase testing 
We will see lot conflicts while doing git rebase. 
Now we can follow two approaches either commit all rebase changes in for rebase changes done. 
As follows – 
1.	vim test1.txt  and manually add all changes or reject as per requirement. Save your work wq! .
2.	git add .  (adding those changes to the staging area)
3.	git commit -am “All Rebase changes included “.

             Or you can use git rebase – continue command to place commit through git rebase – continue command and then again you can rebase change for next commit using same command.
This can be done as below –
1.	vim test1.txt and again resolve conflicts.
2.	git add test1.txt
3.	git rebase –continue 
4.	vim test2.txt (Let’s say we have another changes to rebase to master)
5.	git add test2.txt
6.	git rebase – continue

26.	cd project2
27.	git branch –set-upstream-to=origin/testing (This will update the remotely tracked branch to our current testing branch)
28.	git checkout master
29.	git merge testing (Since all changes are alredy up to date, merge will be sccuessfull).
30.	Out of many instances master branch may be considered as main workflow or source code/production environment and the code changes you are making, which can be incorporated in future could be the part of testing branch. In other instance testing branch may also be compared to other workflows of your team and by doing rebasing on your master branch all commits are now added on top of the latest changes that happened parallel to your own work / source code.
After rebasing is done and we merge testing branch again into master branch, there will be one extraneous commit because of this merge.
So Testing will act a parallel directory where new features are getting added and master branch can be considered as a source code.
We update master peridically to be in sync with changes and rebase is perfect way to do that since it keeps our project history clean by adding linear commits whereas merge my create confusion for developers later in order to undertand history (As it does extraneous commits for any upstream changes).
