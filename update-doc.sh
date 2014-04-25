if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  echo -e "Starting to update doc\n"

  #copy data we're interested in to other place
  cp -R output $HOME/output

  #go to home and setup git
  cd $HOME
  git config --global user.email "jbruel#travis@gmail.com"
  git config --global user.name "Jean-Michel Bruel"
  git config --global push.default simple

  #using token clone gh-pages branch
  git clone --quiet --branch=doc https://${GH_TOKEN}@github.com/PapyrusFAQ.git  doc > /dev/null

  #go into diractory and copy data we're interested in to that directory
  cd doc
  cp -Rf $HOME/coverage/* .

  #add, commit and push files
  git add -f .
  git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to doc"
  git push -fq origin doc > /dev/null

  echo -e "Done magic with output\n"
fi