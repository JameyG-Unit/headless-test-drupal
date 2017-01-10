# Copy static site
CWD=`pwd`

# Clone deployment repository
cd /tmp
git clone git@github.com:JameyG-Unit/headless-test-master.git production

# Copy built Jekyll site into output directory
cd $CWD
cp -r $CWD/_site/* /tmp/production

# Commit and push to the deployment repository
git config --global user.email "jamey.greenwood@theunit.co.uk"
git config --global user.name "Jamey Greenwood"

cd /tmp/production

git add .
git commit -m "Automated production build deployment – `date`"
git push -f origin master
