#!/bin/bash

langs[1]=javascript
langs[2]=java
langs[3]=csharp
langs[4]=ruby
langs[5]=php

for lang in $(seq 1 5)
  do
    cd sdk/${langs[lang]}
    git add .
    git commit -m "$1"
    cd ../..
  done