function editor --description 'Run EDITOR'
    set -l editor
    if test -n "$EDITOR"
        set editor $EDITOR
    else if command -q editor
        set editor (command -s editor)
    end

    if test -z "$editor"
        echo "EDITOR environment variable is not set." >&2
        return 1
    end

    $editor $argv
end
