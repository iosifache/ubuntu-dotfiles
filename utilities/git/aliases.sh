alias git-commit="git commit -s -m"
alias git-status-all="git status -uall"
alias git-push="git push origin"
alias git-add="git add -A"

git-commit-push()  {
    local message=$1
    local branch=$2

    git add -A
    git commit -s -m $message
    git push origin $branch

}
