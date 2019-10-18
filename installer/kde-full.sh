#!/bin/bash

# MIT License
# 
# Copyright (c) 2019 Meyers Tom
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
# This source statement must be present at the top of this file
source "$framework"

prmpt "Installing minimal plasma desktop"

packages plasma

ask "Do you want wayland support?" "yes"

if [[ "$result" == "yes" ]]; then
    packages plasma-wayland-session

    ask "Do you want wayland as the default plasma compositor?" "yes"
    wayland="$result"

fi

ask "Do you want KDE applications?" "yes"

if [[ "$result" == "yes" ]]; then
    packages kde-applications
fi

ask "Do you want kde as the default DE during boot" "yes"

if [[ "$result" == "yes" ]]; then
    if [[ "$wayland" == "yes" ]]; then
        printf 'if [[ "%s(tty)" == "/dev/tty1" ]]; then \n\tXDG_SESSION_TYPE=wayland dbus-run-session startplasmacompositor\nfi\n' "$" >> .profile

    else
        echo "exec startkde" > "$HOME"/.xinitrc
    fi
fi

prmpt "The installation is done!!"

