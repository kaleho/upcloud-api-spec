#!/bin/bash

output="sdk"
templates="templates"

if [ $# -eq 0 ]
then
  echo "No arguments supplied. Creating all sdks..."

  langs[1]=javascript
  langs[2]=java
  langs[3]=csharp
  langs[4]=ruby
  langs[5]=php

  for lang in $(seq 1 5)
  do
    $BASH_SOURCE -l ${langs[lang]} -o sdk
  done
else
  OPTIND=1

  output=sdk
  lang=javascript

  while getopts ":o:l:" opt; do
    case $opt in
      o)
        output=$OPTARG
        echo "Output directory: $OPTARG" >&2
        ;;
      l)
        lang=$OPTARG
        echo "Lang: $OPTARG" >&2
        ;;
      \?)
        echo "Invalid option: -$OPTARG" >&2
        ;;
      :)
        echo "Option -$OPTARG requires an argument." >&2
        exit 1
        ;;
    esac
  done

  shift $((OPTIND-1))

  [ "$1" = "--" ] && shift
  java -jar swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -i schema.json -l $lang -o $output/$lang -t $templates/$lang -c $lang-config.json
fi