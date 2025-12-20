set -l color00 '#1b1d1e'
set -l color01 '#505354'
set -l color02 '#c8be46'
set -l color03 '#f4fd22'
set -l color04 '#737174'
set -l color05 '#747271'
set -l color06 '#62605f'
set -l color07 '#c6c5bf'
set -l color08 '#a3a3a6'
set -l color09 '#fff78e'
set -l color0A '#fff27d'
set -l color0B '#feed6c'
set -l color0C '#919495'
set -l color0D '#9a9a9d'
set -l color0E '#a3a3a6'
set -l color0F '#dadbd6'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
