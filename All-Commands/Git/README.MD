### Resolve Merge Conflicts
## Switch to the branch you are merging into
```
git checkout <branch-to-merge>
```
## Attempt to merge branches
```
git merge <branch-to-be-merged>
```
## Resolve conflicts manually in code editor

```
git add conflicteed-file.txt
```
```
git merge --continue
```
## To clone the repository from specific branch
```
syn: git clone -b <branch-name> <repository-url>
ex: git clone -b master http://github.com/example/repo.git
```
## git pull
```
git pull origin master
```
## To create a branch
```
git branch sample-branch
```
## To delete a branch
```
git branch -d sample-branch
```
## Stash the changes 
```
git stash save "WIP"
```
## Apply changes back from stash
```
git stash apply
```
## Force delete a local branch
```
git branch -D sample-branch
```