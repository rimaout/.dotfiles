if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source  # atuin history
end

set -g fish_greeting # empty (remove the default greeting)
set -g fish_key_bindings fish_vi_key_bindings

starship init fish | source # Starship init
zoxide init fish | source   # zoxide init

## Aliases
alias cd="z"     # zoxide
alias ..="cd .."
alias ls="eza --icons"
alias omp="/opt/homebrew/opt/llvm/bin/clang -Xpreprocessor -fopenmp -I/opt/homebrew/opt/libomp/include -L/opt/homebrew/opt/libomp/lib -lomp"

#SML path
set PATH "/usr/local/smlnj/bin/" $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/mr/miniconda3/bin/conda
    eval /Users/mr/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/Users/mr/miniconda3/etc/fish/conf.d/conda.fish"
        . "/Users/mr/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/Users/mr/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

# Activate virtual environment if .venv or venv exists
if test -f .venv/bin/activate.fish
    source .venv/bin/activate.fish
end
if test -f venv/bin/activate.fish
    source venv/bin/activate.fish
end
