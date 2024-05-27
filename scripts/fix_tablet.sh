#!/bin/bash

set -ouex pipefail

# This will make OpenTabletDriver actually detect tablets
rpm-ostree kargs --append='modprobe.blacklist=hid_uclogic'
