function condaenv_prompt_info() {
  [[ -n ${CONDA_DEFAULT_ENV} ]] || [[ $CONDA_DEFAULT_ENV == "base" ]] || return
  echo "${ZSH_THEME_CONDAENV_PREFIX=(}${CONDA_DEFAULT_ENV}${ZSH_THEME_CONDAENV_SUFFIX=)}"
}
