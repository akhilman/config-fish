function vcsh-remote-http-to-ssh -a repo -a remote
    if test -z "$repo"
        echo "Usage $(path basename (status filename)) <repo> [remote]"
        return 1
    end

    if test -z "$remote"
        set remote origin
    end

    set -l url (vcsh $repo remote get-url $remote | string replace -r '^https?://([^/]+)/(.+)$' 'git@$1:$2')
        or return $status
    echo $remote = $url
    vcsh $repo remote set-url $remote $url
        or return $status
end
