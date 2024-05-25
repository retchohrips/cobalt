#!/bin/bash

set -ouex pipefail

kde_flair=(
  "kdeplasma-addons"
  "plasma-wallpapers-dynamic"
)

programming_packages=(
  "code"
  "p7zip"
)

packages=(
  ${programming_packages[@]}
  ${kde_flair[@]}
)

rpm-ostree install ${packages[@]}
