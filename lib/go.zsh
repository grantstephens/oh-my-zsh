# get the go version
function go_prompt_info() {
  local go_prompt
  go_prompt=$(go version | { read _ _ v _; echo ${v#go}; })
  [[ "${go_prompt}x" == "x" ]] && return
  echo "${ZSH_THEME_GO_PROMPT_PREFIX}${go_prompt}${ZSH_THEME_GO_PROMPT_SUFFIX}"
}
