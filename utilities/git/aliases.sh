alias git-commit="git commit -s -m"
alias git-status-all="git status -uall"
alias git-push="git push origin"
alias git-add-all="git add -A"

git-commit-push()  {
    local message=$1
    local branch=$2

    git add --all
    git commit --signoff --message $message
    git push origin $branch

}

git-amend()  {
    git add --all
    git commit --amend --no-edit
}

git-amend-push()  {
    local branch=$1

    git add --all
    git commit --amend --no-edit
    git push --force origin $branch
}
