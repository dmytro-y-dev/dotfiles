#!/bin/zsh

project=$1

if [ "$project" = "as" ]; then
  tmuxinator start athena-source
elif [ "$project" = "ad" ]; then
  tmuxinator start athena-deployment
elif [ "$project" = "g" ]; then
  tmuxinator start generic
else
  echo "Unknown project type $project specified as first argument. Check ~/start-workspace.sh for supported options.";
fi

