if status is-login
    and not set -q ENVIRONMENT_D_LOADED
    and command -q envsubst
    for f in $HOME/.config/environment.d/*.conf
        cat $f | while read line
            string match -qr '^(?<key>\w+?)=(?<value>[^\#]+).*$' $line
            and set -x $key (echo $value | envsubst)
        end
    end
end
