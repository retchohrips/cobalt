# Install system flatpaks
_install-cobalt-flatpaks:
  #!/bin/bash
  BAZZITE_FLATPAK_LIST="$(curl https://raw.githubusercontent.com/ublue-os/bazzite/main/installer/kde_flatpaks/flatpaks | grep -v "mozilla.firefox" | tr '\n' ' ')"
  COBALT_FLATPAK_LIST="$(curl https://raw.githubusercontent.com/retchohrips/cobalt/main/flatpaks/cobalt_flatpaks | tr '\n' ' ')"
  echo "Installing Bazzite Flatpaks..."
  flatpak --system -y install ${BAZZITE_FLATPAK_LIST}
  echo "Installing Cobalt Flatpaks..."
  flatpak --system -y install ${COBALT_FLATPAK_LIST}
