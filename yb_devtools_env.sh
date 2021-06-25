# Copyright (c) Yugabyte, Inc.

# This is a common configuration that can be sourced into ~/.bashrc or ~/.zshrc.

export PATH=~/code/yb-devtools/bin:~/code/yb-cpplint/cpplint:$PATH

# Aliases for easy navigation between project directories. E.g. you can create multiple directories
# such as ~/code/yugabyte, ~/code/yugabyte1, ~/code/yugabyte2, etc. and navigate between them using
# cdyb, cdyb1, cdyb2, etc.

_create_yb_chdir_aliases() {
  local i
  for i in "" {1..20}; do
    alias cdyb$i="cd ~/code/yugabyte-db$i"
    alias cdybtp$i="cd ~/code/yugabyte-db-thirdparty$i"
    alias cdybdt$i="cd ~/code/yb-devtools$i"
  done
}

_create_yb_chdir_aliases
unset _create_yb_chdir_aliases
