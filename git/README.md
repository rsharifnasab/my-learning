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
-   checkout
-   tag
-   amend
-   stash
-   revert
-   bisect
-   rebase
-   squash
-   Chery-pick
-   git flow
-   common commands
-   conclusion
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

![](https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Subversion_Logo.svg/1200px-Subversion_Logo.svg.png)

# Visual Studio Team Services code (by Microsoft)

![](https://logodix.com/logo/719944.png)

# git (by Linus Torvalds)

![](https://files.virgool.io/upload/users/4458/posts/q85kpw57vte6/quvbhkgvelb5.jpeg)

# As of 2020, the 5.6 release of the Linux kernel had around 33 million lines of code.

![](images/tux.png)

# git features

-   free and open source
-   distributed
-   non-linear (branches)
-   handle large projects efficiently

![](https://zdnet2.cbsistatic.com/hub/i/2017/11/24/6e389aa3-a510-4254-9f1e-965e0a6f036e/linustorvalds770x57.jpg)

# Centralized version control

![](https://homes.cs.washington.edu/~mernst/advice/version-control-fig2.png)

# Distributed version control

![](https://homes.cs.washington.edu/~mernst/advice/version-control-fig3.png)

# how to use git

1. search!
2. I search too
3. everybody else does search too

# file status life cycle

![](https://slideplayer.com/slide/13332433/80/images/17/Git+file+lifecycle.jpg)

# Github

-   instagram for git

-   a place to keep git projects, review them, fork them, star them.

-   alternatives: Gitlab, Bitbucket, any other place

    ![](https://blog.devmountain.com/wp-content/uploads/2019/07/Gitvs.Github-1a.jpg)

#### gist: some part of code to share with others

# Push? Remote? Clone?

-   remote: where should I upload my git projects
-   push: act of uploading git
-   clone: download whole git
-   pull: check for updates in the remote git

![](images/push-meme.png)

![](https://res.cloudinary.com/practicaldev/image/fetch/s--NUSRQ-3J--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://i.redd.it/5iphhycu0io11.png)

# fork

![fork](images/fork.png)

# PR

![](images/PR.png)

# issue, issue template

![](https://github.blog/wp-content/uploads/2018/05/new-issue-page-with-multiple-templates.png?fit=1604%2C694)

# .gitignore, .git

-   .git: local and hidden folder that contains git internal files, don't open it!

-   delete .git folder in case of removing git from project

-   .gitignore: ignore these sort of files

```
*.class
.idea/
__pycache__/
```

Good site: [gitignore.io](https://www.gitignore.io/)

#### do not commit large and binary files! Why?

---

# is git running in background?

-   background process?
-   what is **tracking** mean?

# branch

![](https://www.nobledesktop.com/image/gitresources/git-branches-merge.png)

-   keep master branch stable
-   development branch
-   feature branch
-   bug-fix branch

![](./images/favorite-branch.png)

# merge

![](https://res.cloudinary.com/practicaldev/image/fetch/s--MEKaM3dY--/c_imagga_scale,f_auto,fl_progressive,h_900,q_auto,w_1600/https://cl.ly/430Q2w473e2R/Image%25202018-04-30%2520at%25201.07.58%2520PM.png)

# merge conflict

-   what if we can merge?
-   some developers changed same file
-   somebody should combine changes
-   with help of merge-tool

![](https://lh6.googleusercontent.com/proxy/EXZtnMuZcVrMmQ1YJ1vdyoadiEy-FQtUocRc5mWiOqUgcxp5SlJ-T-Bs8dFERfxym7E7U6SebY1PJRx9OYPJ5gtFrDPMMFF-)

#### didn't understand? Want a review? View [this](https://medium.com/hackernoon/a-gentle-introduction-to-git-and-github-the-eli5-way-43f0aa64f2e4)

# checkout

-   switch another branch
-   view an old commit
-   reset a file to a specific commit version

![checkout](https://static.javatpoint.com/tutorial/git/images/git-checkout.png)

# tag

-   commits doesn't have a name
-   specify special commits
-   which commit is last working version?
-   how to handle versions?

![](https://miro.medium.com/max/638/1*CW-G-2zVFpEfEZNOTBvT0g.jpeg)

# amend

-   re-writing history
-   change commit message
-   change committed files

### don't rewrite history (especially for published commits)

# stash

-   save uncommitted changes
-   different options for uncommitted, ignored, staged

![](https://static.javatpoint.com/tutorial/git/images/git-stash.png)

# revert

-   undo last commit changes

-   with a brand-new commit

    ![](https://www.blog.nakulrajput.com/wp-content/uploads/2018/10/Git-Reverting-Resetting.jpg)

# bisect

![](https://files.virgool.io/upload/users/195916/posts/kiybjsojv6cf/amufcdey5v9x.png)

# rebase

-   instead of merge
-   combine history with adding old commits
-   interactive mode: select some commits
-   be careful: might re-write history
-   don't do this in public branches, or junior development team.

![rebase](https://miro.medium.com/max/603/1*75GIyh005_Wl9vRQF3tgTQ.png)

### learn more [here](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)

# squash

-   not a git command
-   a term in using rebase
-   group specific changes to one commit

# cherry-pick

-   add other branch's commit to current branch

![](https://www.syntevo.com/doc/download/attachments/6979705/workflows-cherrypick.png?version=1&modificationDate=1443735398000&api=v2)

# git flow

-   whats masters do with git branches?

-   set of rules to use branching better

    ![](https://miro.medium.com/max/2880/1*9yJY7fyscWFUVRqnx0BM6A.png)

    +   Master is production ready

    +   Master is deployed to production
    +   Development happens in a development branch, which in turn has feature branches
    +   Deploy when the development of a release is finished and validated
    +   Requires a validation for each release

-   automated tools: set of aliases

-   nothing to worry about

# common commands

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
git remote add origin https://github.com/your-account/your-repository.git
git push origin master # push from master branch to origin remote
git pull # get new updates
git clone https://github.com/sb-acc/some-repo.git

# see old commits (and other beautiful versions of this command)
git log
git log --abbrev-commit --pretty=oneline
git log --graph --oneline --decorate --abbrev-commit

# work with history
git checkout branchname # change HEAD to another commit/branch
git reset --hard HEAD # revert to last commit
git diff HEAD # what is changed from head
git checkout HEAD filename # revert filename to last commit

git blame filename # who changed this file

# stash
git stash # save uncommited changes and revert repository to commited sate
git stash list
git stash pop # pop last saved stash


# tag
git tag tagname -am 'tag message' # create new tag
git tag # list all tags
git push --tags


# merge
git config --global merge.tool meld # meld or another app
git checkout destination
git merge source
git mergetool # open the merge tool

# get help
curl http:/cheat.sh/git
man git-add
info git-add


rm -rf .git # get rid of git!
```

# conclusion

-   search
-   read help & documentation
-   don't fear
-   everything messed up: re-clone whole project and delete current folder
-   test new command in a toy repository
-   don't commit large files
-   don't re-write public history
-   pull before push, pull before start coding
-   alias for your useful command could be good

# further read

-   [Parsa's really good slides](http://slides.com/parsahejabi/git#/1)
-   [Amir's awesome slides](https://github.com/amirhallaji/My-Learning/tree/master/git)
-   [very good cheat sheet](https://github.com/arslanbilal/git-cheat-sheet)
-   [this Github io page](https://rachelcarmena.github.io/2018/12/12/how-to-teach-git.html)
-   [command by command explain](https://recompilermag.com/issues/issue-1/how-to-teach-git/)
-   [Jadi's videos](https://faradars.org/courses/fvgit9609-git-github-gitlab)
-   [step by step](https://dont-be-afraid-to-commit.readthedocs.io/en/latest/git/commandlinegit.html)
-   [this good slide](https://courses.cs.washington.edu/courses/cse403/13au/lectures/git.ppt.pdf)
-   [tags](https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag)
-   [git-scm](https://git-scm.com/)

---

Make PDF from this markdown file:

```bash
pandoc git.md -t beamer -o panc.pdf --pdf-engine=xelatex
```
