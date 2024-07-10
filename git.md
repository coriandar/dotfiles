## git
### init
```js
git config --global color.ui auto
git config --global core.editor "vim"
git config --global user.name "coriandar"
git config --global pull.rebase false
git config --global fetch.prune true
git config --global user.email "xxx"
```

### [Oh Shit, Git!?!][2.1]
[2.1]: https://ohshitgit.com/

```js
git remote prune origin // prune remote list
git reset --hard HEAD~1 // go back a commit, good for reverse merge.
git reset --hard origin/<branch> // reset to origin/branch

ssh-keygen -t ed25519 -C <youremail>
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com

git log --oneline -- <filename>
git branch <branch-name>
git diff // can add <filename> / <branch-name>

git stash // stash temporarily
git stash pop // remove and re-apply most recent to chosen branch
git stash list

git checkout HEAD <filename> // discard changes, revert back to head
git checkout <hash> // HEAD points at commit, detached, can make new branch
git restore --staged <filename> // unstage file

git tag // list tags
git tag -l *beta* // wildcard search
git tag <label> commitHash -f // move existing tag
git push --tags // Pushed all to remote, can specify

git commit -am "message" // commit existing only
git push origin <branch> // specific branch

git rebase -i HEAD~5 //Need specify how far back.
git rebase -i --root
git push -f // force push

git reflog show // show log, defaults to HEAD
git checkout HEAD@{2}
git diff HEAD@{2} HEAD@{5}
git reflog diff main@{0} main@{yesterday}

git reset <commitHash> // undo commit to specific branch, moves branch pointer backwards
git reset --hard <commitHash> // undo commit and changes
git revert <commitHash> // for collab, creates commit with undos

git switch -c <branch-name> // branch & switch
git merge <branch-name> // switch to receiving first
```
--------------------------------------------------
