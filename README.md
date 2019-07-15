# zsh-condaenv
Plugin provides `condaenv_prompt_info` function which returns the current conda environment name.



## Installation

First clone the repo into your ZSH custom plugins directory using:
```
git clone "https://github.com/saravanabalagi/zsh-condaenv" "$ZSH/custom/plugins/condaenv"
```

Then add it to your `plugins` in `.zshrc` file

```
plugins=(my_plugins my_other_plugins condaenv)
```

Then launch a new terminal or source `.zshrc` in your current terminal to get the function working

## Usage

### General

You can retrieve the conda env name by calling

```
condaenv_prompt_info
```
It returns the conda environment name if you are in one, and an empty string if you are not in any conda env, or in the `base` env. 

### Themes
You can use these variables in your theme changing color and other customizations. For example, to display conda env in blue, you can do something like:

```
base_prompt=PROMPT
PROMPT=$(condaenv_prompt_info)"$base_prompt"

ZSH_THEME_CONDAENV_PROMPT_PREFIX="%{$fg[blue]%}[ "
ZSH_THEME_CONDAENV_PROMPT_SUFFIX="] %{$reset_color%}"
```
