# get the python version
function go_prompt_info() {
  local go_prompt
  go_prompt=$(goenv global)
  [[ "${go_prompt}x" == "x" ]] && return
  echo "${ZSH_THEME_GO_PROMPT_PREFIX}${go_prompt}${ZSH_THEME_GO_PROMPT_SUFFIX}"
}
