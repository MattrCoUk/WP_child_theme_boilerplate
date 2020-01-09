#!/bin/sh

ABSPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo ''
echo '====================================================='
echo 'DELETE this boilerplate installation repo and files'
echo 'leaving a nice and clean WP child theme.'
echo ''
echo 'Proceed? y/n'
read usr_input

if [[ ! "$usr_input" =~ ^(Y|y)$ ]] ; then 
   echo 'exit'
   exit 1
fi

echo 'Working...'

rm -rf "$ABSPATH"/.git
rm "$ABSPATH"/.gitignore
rm "$ABSPATH"/LICENSE
rm "$ABSPATH"/README.md
rm "$ABSPATH"/clear-boilerplate-files.sh

echo 'Done.'