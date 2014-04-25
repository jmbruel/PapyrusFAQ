#!/bin/bash
echo "coucou"
if [ "$TRAVIS_PULL_REQUEST" == "false" ]
then
	echo "coucou"
	exit 1
fi

