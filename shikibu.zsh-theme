###
 # @Description : My theme for oh my zsh.
 # @Author      : Junyong Zhao (junyong@seas.upenn.edu)
 # @Date        : 2021-12-28 15:56:11
 # @LastEditors : Junyong Zhao (junyong@seas.upenn.edu)
 # @LastEditTime: 2022-01-11 11:30:46
###

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
