function vcsh-remote-http-to-ssh
    set -l fish_trace on
    set -l repo
    set -l remote

    if set -q argv[1]
        set repo $argv[1]
    else
        echo "Usage $(path basename (status filename)) <repo> [remote]"
        return 1
    end

    if set -q argv[2]
        set remote $argv[2]
    else
        set remote origin
    end

    set -l url (vcsh $repo remote get-url $remote | string replace -r '^https?://([^/]+)/(.+)$' 'git@$1:$2')
        or return $status
    echo $remote = $url
    vcsh $repo remote set-url $remote $url
        or return $status
end
