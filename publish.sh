# Example script to generate HTML and push to local gh-pages directory.

# build site from markdown
jekyll build

# path on your system to your github pages repo checkout
SITE_DIR=../parul-l.github.io


# add relevant files
# cp _site/index.html ${SITE_DIR}/resume/.
cp -R _site/media ${SITE_DIR}/assets/css/resume/.

## copy layout and resume.md
cp _layouts/cv.html ${SITE_DIR}/_includes/cv.html
cp index.md ${SITE_DIR}/resume.md

## replace text to appropriate paths
# s => substitute, g => globally, 
sed -i '' 's|media/|/assets/css/resume/media/|g' ${SITE_DIR}/_includes/cv.html

# replace 'cv' with 'resume' in resume.md
sed -i '' 's|layout: cv|layout: resume|' ${SITE_DIR}/resume.md