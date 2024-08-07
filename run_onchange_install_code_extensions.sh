#!/bin/bash

pkglist=(
adamwalzer.string-converter
atlassian.atlascode
aws-scripting-guy.cform
dotjoshjohnson.xml
eamodio.gitlens
erd0s.terraform-autocomplete
github.copilot
github.copilot-chat
github.vscode-github-actions
golang.go
gruntfuggly.todo-tree
hashicorp.terraform
ms-azuretools.vscode-docker
ms-python.debugpy
ms-python.isort
ms-python.python
ms-python.vscode-pylance
ms-toolsai.jupyter
ms-toolsai.jupyter-keymap
ms-toolsai.jupyter-renderers
ms-toolsai.vscode-jupyter-cell-tags
ms-toolsai.vscode-jupyter-slideshow
ms-vscode-remote.remote-containers
ms-vscode.live-server
oderwat.indent-rainbow
redhat.vscode-commons
redhat.vscode-yaml
remisa.shellman
stkb.rewrap
timonwong.shellcheck
tyriar.sort-lines
ue.alphabetical-sorter
vscodevim.vim
wholroyd.jinja
)

for i in "${pkglist[@]}"; do
  code --install-extension $i
done
