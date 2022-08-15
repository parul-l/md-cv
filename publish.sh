# Example script to generate HTML and push to local gh-pages directory.

# build site from markdown
jekyll build

# path on your system to your github pages repo checkout
SITE_DIR=../parul-l.github.io


# # remove old resume files
rm -R ${SITE_DIR}/resume/*

# # re-add new
cp _site/index.html ${SITE_DIR}/resume/.
cp -R _site/media ${SITE_DIR}/resume/.

## copy layout and resume.md
cp _layouts/cv.html ${SITE_DIR}/_layouts/cv_html
cp index.md ${SITE_DIR}/resume.md
