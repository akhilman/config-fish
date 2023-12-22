function git-remote-http-to-ssh -a remote
    test -z "$remote"
        and set remote origin

    set -l url (git remote get-url $remote | string replace -r '^https?://([^/]+)/(.+)$' 'git@$1:$2')
        or return $status
    echo $remote = $url
    git remote set-url $remote $url
        or return $status
end
