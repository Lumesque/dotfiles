function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end

# Basically an alias file
abbr --add ls ls -aF --color=always
abbr --add ggpush git push origin $(git branch --show-current)
abbr --add dotdot --regex '^\.\.+$' --function multicd
