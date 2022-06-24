git filter-branch --env-filter '
    an="$GIT_AUTHOR_NAME"
    am="$GIT_AUTHOR_EMAIL"
    cn="$GIT_COMMITTER_NAME"
    cm="$GIT_COMMITTER_EMAIL"

    if [ cn = "yayydyasd" ]
    then
        cn="yayydyasdaaa"
        cm="108115283+test@users.noreply.github.com"
        an="yayydyasdaaa"
        am="108115283+test@users.noreply.github.com"
    fi
 
    export GIT_AUTHOR_NAME="$an"
    export GIT_AUTHOR_EMAIL="$am"
    export GIT_COMMITTER_NAME="$cn"
    export GIT_COMMITTER_EMAIL="$cm"
'
git push origin --force