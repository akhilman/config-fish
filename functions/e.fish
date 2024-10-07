function e --description 'Run EDITOR'
    set -l editor
    if test -n "$EDITOR"
        set editor $EDITOR
    end

    if test -z "$editor"
        echo "EDITOR environment variable is not set." >&2
        return 1
    end

    $editor $argv
end
