# Download all content from Contentful
bundle exec jekyll contentful

# Build the site using Jekyll
bundle exec jekyll build --baseurl /$CIRCLE_PROJECT_REPONAME-$CIRCLE_BRANCH

# Set permissions for the build scripts
chmod +x deploy_*.sh
