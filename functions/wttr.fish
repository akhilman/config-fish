function wttr --description 'Show weather' --argument place
    if [ -z $place ]
        set place kemerovo
    end
    set tmp (mktemp -t wttrXXXXXX)
    curl -o $tmp wttr.in/$place
    and less -R $tmp
    and rm $tmp
end
