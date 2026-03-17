# name: ayu Dark modified
# url: 'https://github.com/dempfi/ayu'
# preferred_background: 161616

set -g fish_color_normal B3B1AD
set -g fish_color_command 39BAE6
set -g fish_color_quote C2D94C
set -g fish_color_redirection FFEE99
set -g fish_color_end F29668
set -g fish_color_error FF3333
set -g fish_color_param B3B1AD
set -g fish_color_comment 626A73
set -g fish_color_match F07178
set -g fish_color_selection --background=7c5a16
set -g fish_color_search_match --background=7c5a16
set -g fish_color_history_current --bold
set -g fish_color_operator 7c5a16
set -g fish_color_escape 95E6CB
set -g fish_color_cwd 59C2FF
set -g fish_color_cwd_root red
set -g fish_color_valid_path --underline
set -g fish_color_autosuggestion 4D5566
set -g fish_color_user brgreen
set -g fish_color_host normal
set -g fish_color_cancel -r
set -g fish_pager_color_completion normal
set -g fish_pager_color_description B3A06D yellow
set -g fish_pager_color_prefix normal --bold --underline
set -g fish_pager_color_progress brwhite --background=cyan
set -g fish_pager_color_selected_background --background=7c5a16
set -g fish_color_option B3B1AD
set -g fish_color_keyword 39BAE6

# Setup right prompt colors
set -g fish_color_duration blue
set -g fish_color_hline grey # if not generated
set -g fish_color_njobs green
set -g fish_color_status --background red white
set -g fish_color_time white
set -g fish_color_vcs yellow # if not generated
set -g fish_color_venv magenta # if not generated

# Enable generated colors
set -g hline_generate_color_cwd 1
set -g hline_generate_color_hline 1
set -g hline_generate_color_host 1
set -g hline_generate_color_user 1
set -g hline_generate_color_vcs 1
set -g hline_generate_color_venv 1

# Adjust generated colors
set -g hline_generated_color_hue_offset 250 # 0 <= H <= 360
set -g hline_generated_color_saturation 25 # 0 <= S <= 100
set -g hline_generated_color_value 80 # 0 <= V <= 100
