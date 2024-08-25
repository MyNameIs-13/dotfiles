#!/bin/bash

plugins=(
    "ru.adelf.idea.dotenv"
    "net.seesharpsoft.intellij.plugins.csv"
    "io.aesy.yamllint"
    "nix-idea"
    "de.achimonline.ansible_lint"
    "ir.msdehghan.plugins.ansible"
    "Docker"
    "org.intellij.plugins.hcl"
)

pycharm  installPlugins "${plugins[@]}"
