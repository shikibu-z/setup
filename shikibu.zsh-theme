# prompt for $PS1
PROMPT='▶ %{$fg_bold[green]%}%3~$(git_prompt_info)';
PROMPT+='$(git_prompt_status)%{$reset_color%} ';

# display return status code
local return_code="%(?..%{$fg_bold[red]%}%?%{$reset_color%})";
RPS1="${return_code}";

# specify git prompt variables
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[cyan]%}";
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}";
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ●";
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[yellow]%} ●";
ZSH_THEME_GIT_PROMPT_AHEAD=" ●";
