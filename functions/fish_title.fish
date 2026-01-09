###
# Setting title for XTerm
##

function fish_title

    set -l title

    if not set -q TMUX
        set title "$USER@$hostname"
    end

    if [ $_ = fish ]
        set -a title (prompt_pwd)
    else
        set -a title "$argv"
    end

    string join ' : ' $title

end
