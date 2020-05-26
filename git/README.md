# git!
```
Git (/ɡɪt/)[7] is a distributed version-control system for tracking changes in source code during software development.
```



## Table Of Contents 

+ current problems
+ what is version control?
+ more about git
+ distributed vs centralized
+ how to use git
+ file status life cycle 
+ github 
+ push? remote? clone?
+ fork, PR, issue
+ .gitignore,  .git 
+ branch, merge
+ common commands
+ further read





## current problems

traditional version controlling by programmer

![trad](images/trad.png)

+ copy-paste/save-as whole project after every stable build
+ what if more than 1 developer work at the same time?
+ which one was stable?
+ which files are unnecessary 



## what is version control?

+ easily management collaboration on a project
+ ability to have unlimited number of developers 
+ easily revert back your files if something went wrong



+ SVN (apache sub-version)

![SVN logo](images/svn.png)





+ Visual Studio Team Services code (by Microsoft)

![vs team services logo](https://logodix.com/logo/719944.png)






+ ## git

![git wallpaper](https://files.virgool.io/upload/users/4458/posts/q85kpw57vte6/quvbhkgvelb5.jpeg)





## more about git 



![tux](images/tux.png)


```
As of 2020, the 5.6 release of the Linux kernel had around 33 million lines of code. (from wikipedia)
```

by Linus Torvalds

![trovalds photo](https://zdnet2.cbsistatic.com/hub/i/2017/11/24/6e389aa3-a510-4254-9f1e-965e0a6f036e/linustorvalds770x57.jpg)

+ free and open source
+ distributed
+ non-linear (branches)
+ handle large projects efficiently




## distributed vs centralized

![distributed](https://homes.cs.washington.edu/~mernst/advice/version-control-fig2.png)

![distributed](https://homes.cs.washington.edu/~mernst/advice/version-control-fig3.png)







## how to use git

1. search!
2. I search too
3. everybody else does search too



## file status life cycle 

![lifecycle](https://slideplayer.com/slide/13332433/80/images/17/Git+file+lifecycle.jpg)





## github

+ instagram for gits

+ a place to keep gits! review them, fork them, star them, issue on them..

+ alternatives: gitlab, bitbucket, any other place like: CEIT gitlab

  ![git vs github](https://blog.devmountain.com/wp-content/uploads/2019/07/Gitvs.Github-1a.jpg)

  

#### gist: some part of code to share with others



## push? remote? clone?

+ remote: where should i upload my gits 
+ push: act of uploading gits 
+ clone: download whole git 
+ pull: check for updates in the remote git

![meme](images/push-meme.png)



## fork, PR, issue

![fork](images/fork.png)



![PR](images/PR.png)

### issue, issue template 

![issue](https://github.blog/wp-content/uploads/2018/05/new-issue-page-with-multiple-templates.png?fit=1604%2C694)





## .gitignore, .git

+ git: local and hidden folder that contains git internal files, don't open it!

+ delete .git folder in case of removing git from project

+ .gitignore:  ignore these sort of files

```
*.class
./.idea 
__pycache__/
```

good site: [gitignore.io](https://www.gitignore.io/)

#### do not commit large and binary files!

why? git is source-code version control, not for keeping documents



## branch 

![branch](https://www.nobledesktop.com/image/gitresources/git-branches-merge.png)

### and merge?

![merge](https://res.cloudinary.com/practicaldev/image/fetch/s--MEKaM3dY--/c_imagga_scale,f_auto,fl_progressive,h_900,q_auto,w_1600/https://cl.ly/430Q2w473e2R/Image%25202018-04-30%2520at%25201.07.58%2520PM.png)

### merge conflict

![solve merge confilcts](https://lh6.googleusercontent.com/proxy/EXZtnMuZcVrMmQ1YJ1vdyoadiEy-FQtUocRc5mWiOqUgcxp5SlJ-T-Bs8dFERfxym7E7U6SebY1PJRx9OYPJ5gtFrDPMMFF-)



## common commands

```bash
# first time initialize
git config --global user.name "Bugs Bunny" 
git config --global user.email bugs@gmail.com
git init

# regulary code and commit
git status 
git add -A # or git add filename
git commit -m 'commit message'

# work with remote
git remote add origin https://github.com/your-account/your-repo.git
git push origin master # from master branch to origin remote
git pull
git clone https://github.com/somebodys-account/a-good-repo.git

# see old commits and other versions
git log 
git log --abbrev-commit --pretty=oneline
git checkout # change HEAD to old commits, or other branches
git diff # difference between current file and last commit (HEAD)

# eveything messed up
git reset --hard HEAD #revert to last commit
rm rf .git # get rid of git!
```





## further read

+ [this github io page](https://rachelcarmena.github.io/2018/12/12/how-to-teach-git.html)

+ [command by command express](https://recompilermag.com/issues/issue-1/how-to-teach-git/)

+ [jadi's videos](https://faradars.org/courses/fvgit9609-managed-distributed-edition-using-git)

+ [step by step](https://dont-be-afraid-to-commit.readthedocs.io/en/latest/git/commandlinegit.html)

+ [this good slide](https://courses.cs.washington.edu/courses/cse403/13au/lectures/git.ppt.pdf)

+ [tags](https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag)


