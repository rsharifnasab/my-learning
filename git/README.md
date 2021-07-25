---
title: git slides
author: Roozbeh Sharifnasab
extensions:
  - image_ueberzug
---

# Git!

> Git (/git/)[7] is a distributed version-control system for tracking changes in source code during software development.

# Table Of Contents

-   current problems
-   what is version control?
-   more about git
-   distributed vs centralized
-   how to use git
-   file status life cycle
-   Github
-   Push? Remote? Clone?
-   fork, PR, issue
-   .gitignore, .git
-   branch, merge
-   common commands
-   further read

# what do we do now? Manual version controlling by programmer

![](images/trad.png)

# problems

-   copy-paste/save-as whole project after every stable build
-   what if more than 1 developer work at the same time?
-   which version was stable?
-   all files are unnecessary while saving as?

# benefits of version control

-   easily management collaboration on a project
-   ability to have unlimited number of developers
-   easily revert back your files if something went wrong

# SVN (by Apache)

![](images/subversion.png)

# Visual Studio Team Services code (by Microsoft)

![](images/vs.png)

# git (by Linus Torvalds)

![](images/git.png)

# As of 2020, the 5.6 release of the Linux kernel had around 33 million lines of code.

![](images/tux.png)

# git features

-   free and open source
-   distributed
-   non-linear (branches)
-   handle large projects efficiently

![15](images/linus.jpg)

# Centralized version control

![](images/centralized.png)

# Distributed version control

![](images/distributed.png)

# how to use git

1. search!
2. I search too
3. everybody else does search too

# file status life cycle

![](images/lifecycle.jpg)

# github

-   instagram for git

-   a place to keep git projects, review them, fork them, star them.

-   alternatives: gitlab, bitbucket, any other place

    ![](images/github.jpg)

#### gist: some part of code to share with others

# Push? Remote? Clone?

-   remote: where should I upload my git projects
-   push: act of uploading gits
-   clone: download whole git
-   pull: check for updates in the remote git

![](images/push-meme.png)

# fork

![fork](images/fork.png)

# PR

![](images/PR.png)

# issue, issue template

![](images/issue.png)

# .gitignore, .git

-   .git: local and hidden folder that contains git internal files, don't open it!

-   delete .git folder in case of removing git from project

-   .gitignore: ignore these sort of files

```
*.class
.idea/
__pycache__/
```

good site: [gitignore.io](https://www.gitignore.io/)

#### do not commit large and binary files! why?

# branch

![](images/branch.png)

# merge

![](images/merge.png)

# merge conflict

![](images/conflict.png)

# common commands (1)

```bash
# first time initialize
git config --global user.name "Bugs Bunny"
git config --global user.email bugs@gmail.com
git init
```

# common commands (2)

```bash
# regulary code and commit
git status
git add -A # or git add filename
git commit -m 'commit message'
```

# common commands (3)

```bash
# work with remote
git remote add origin https://github.com/yc/yr.git
git push origin master # from master to origin remote
git pull
git clone https://github.com/sb-acc/some-repo.git
```

# common commands (4)

```bash
# see old commits and other versions
git log
git log --abbrev-commit --pretty=oneline
git checkout # change HEAD
git diff # difference
```

# common commands (5)

```bash
# eveything messed up
git reset --hard HEAD # revert to last commit
rm -rf .git # get rid of git!
```

# further read

-   [Parsa's really good slides](http://slides.com/parsahejabi/git#/1)

-   [this github io page](https://rachelcarmena.github.io/2018/12/12/how-to-teach-git.html)

-   [command by command explain](https://recompilermag.com/issues/issue-1/how-to-teach-git/)

-   [jadi's videos](https://faradars.org/courses/fvgit9609-managed-distributed-edition-using-git)

-   [step by step](https://dont-be-afraid-to-commit.readthedocs.io/en/latest/git/commandlinegit.html)

-   [this good slide](https://courses.cs.washington.edu/courses/cse403/13au/lectures/git.ppt.pdf)

-   [tags](https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag)

-   [git-scm](https://git-scm.com/)

Make pdf from md file:

```bash
pandoc README.md -t beamer -o panc.pdf --pdf-engine=xelatex
```


view in terminal
```bash
pip install lookatme
pip install lookatme.contrib.image_ueberzug
looakatme README.md
```
