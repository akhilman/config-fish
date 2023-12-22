function git-remote-http-to-ssh
    set -l remote

    if set -q argv[1]
        set remote $argv[1]
    else
        set remote origin
    end

    set -l url (git remote get-url $remote | string replace -r '^https?://([^/]+)/(.+)$' 'git@$1:$2')
        or return $status
    echo $remote = $url
    git remote set-url $remote $url
        or return $status
end
