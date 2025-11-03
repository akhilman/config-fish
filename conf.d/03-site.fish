#!/usr/bin/fish

set -l function_path $__fish_config_dir/functions

for d in $__fish_config_dir/site/*;
    test -d $d
        or continue
    for c in $d/conf.d/*.fish;
        source $c
    end
    test -d $d/functions
        and set --append function_path $d/functions
end

for p in $fish_function_path
    contains $p $function_path
        or set --append function_path $p
end
set fish_function_path $function_path
