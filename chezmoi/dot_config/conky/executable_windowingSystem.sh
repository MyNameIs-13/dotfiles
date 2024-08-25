#!/bin/bash

loginctl show-session "$(loginctl | grep ${USER} | awk '{print $1}')" -p Type | awk -F= '{print $2}'
