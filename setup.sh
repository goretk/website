#!/bin/sh

echo "Checkout submodules"
git submodule update --init --recursive
echo "Checkout public master"
cd public && git checkout master

