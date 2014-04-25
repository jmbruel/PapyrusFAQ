#!/bin/bash
echo -e "Starting to update doc\n"

#copy data we're interested in to other place
cp -R output $HOME/output

#go to home and setup git
cd $HOME
git config --global user.email "jbruel#travis@gmail.com"
git config --global user.name "Jean-Michel Bruel"
git config --global push.default simple

#using token clone doc branch
git clone --quiet --branch=doc https://${GH_TOKEN}@github.com/jmbruel/PapyrusFAQ.git  doc > /dev/null

#go into directory and copy data we're interested in to that directory
cd doc
cp -Rf $HOME/output/* ./output
ls -al ./output

#add, commit and push files without provoking Continuous Integration
git add -f .
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to doc -- [skip ci]"
git push -fq origin doc > /dev/null

echo -e "Done magic with output\n"

