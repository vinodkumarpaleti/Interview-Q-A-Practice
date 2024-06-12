### Merge Conflicts
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
git clone -b <branch-name> <repository-url>
git clone -b master http://github.com/example/repo.git
```
## git pull
```
git pull origin master
```