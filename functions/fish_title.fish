###
# Setting title for XTerm
##

function fish_title

    set -l title

    if not string match -q 'tmux*' $TERM
        set title "$USER@$hostname:"
    end

    if [ $_ = fish ]
        set -a title (prompt_pwd)
    else
        set -a title "$argv"
    end

    echo $title

end
