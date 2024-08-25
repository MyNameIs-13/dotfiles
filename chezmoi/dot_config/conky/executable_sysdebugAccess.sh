#!/bin/bash

sudo chmod a+rx /sys/kernel/debug
sudo find /sys/kernel/debug/dri -name amdgpu_pm_info -exec chmod a+rx {} \;
exit 0
