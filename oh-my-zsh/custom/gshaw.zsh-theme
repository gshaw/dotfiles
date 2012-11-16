ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*"

PROMPT='%{$fg[yellow]%}
[%!] [%n@%m:%~] $(git_prompt_info)
%{$reset_color%}%% ' 
