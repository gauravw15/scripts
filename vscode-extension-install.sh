#!/usr/bin/env bash
# see https://stackoverflow.com/questions/58513266/how-to-install-multiple-extensions-in-vscode-using-command-line/#answers
cat extensions.txt | while read extension || [[ -n $extension ]];
do
  code --install-extension $extension --force
done
