#!/bin/bash
echo -e "Starting to update doc\n"

#copy data we're interested in to other place
cp -R output $HOME/output

#go to home and setup git
cd $HOME
git config --global user.email "jbruel#travis@gmail.com"
git config --global user.name "Jean-Michel Bruel"
git config --global push.default simple

#using token clone io pages branch
git clone --quiet https://${GH_TOKEN}@github.com/jmbruel/jmbruel.github.io.git  doc > /dev/null

#go into directory and copy data we're interested in to that directory
cd doc
cp $HOME/output/faq.html ./index.html
ls -al index.html

#add, commit and push files without provoking Continuous Integration
git add -f index.html
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to io pages -- [skip ci]"
git push -fq origin master > /dev/null

echo -e "Done magic with output\n"
