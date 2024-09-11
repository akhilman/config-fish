if status is-login
    and not set -q ENVIRONMENT_LOADED
    and command -q envsubst
    for f in $HOME/.config/environment.d/*.conf
        cat $f | string match -qr '^(?<key>\w+?)=(?<value>[^\#]+).*$'
        set -x $key (echo $value | string trim | envsubst | string split :)
    end

end
