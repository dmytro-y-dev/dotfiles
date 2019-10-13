#!/bin/zsh

project=$1

typeset -A subcmds
subcmds=(
  "as" "athena-source"
  "ad" "athena-deployment"
  "g" "generic"
  "fokus" "fokus"
)

workspace_name() {
  cmd=$1

  for key val in ${(kv)subcmds}; do
    if [ $key = $cmd ]; then
      echo -n $val
    fi
  done
}

available_commands() {
  for key val in ${(kv)subcmds}; do
    echo "$key ($val)"
  done
}

workspace=$(workspace_name $project)

if [ ! -z $workspace ]; then
  tmuxinator start $workspace 
else
  commands_=$(available_commands)
  echo "Unknown project type \`$project\` is specified as first argument. Supported options:\n${commands_}";
fi

