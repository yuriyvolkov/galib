#!/bin/bash

for file in $(ls *.C | sed -e 's/\.C//')
do
  git mv $file.C $file.cpp
done
