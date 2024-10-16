#!/bin/bash

extensions=(
    "bbenoist.nix"
    "davidanson.vscode-markdownlint"
    "hashicorp.terraform"
    "mechatroner.rainbow-csv"
    "mikestead.dotenv"
    "ms-azuretools.vscode-azureresourcegroups"
    "ms-azuretools.vscode-azureterraform"
    "ms-azuretools.vscode-docker"
    "ms-kubernetes-tools.vscode-kubernetes-tools"
    "ms-python.debugpy"
    "ms-python.python"
    "ms-python.vscode-pylance"
    "ms-vscode.azure-account"
    "ms-vscode.azurecli"
    "redhat.ansible"
    "redhat.vscode-xml"
    "redhat.vscode-yaml"
    "wayou.vscode-todo-highlight"
    "yzhang.markdown-all-in-one"
)

for i in "${extensions[@]}"; do
    code --install-extension "$i"
done
