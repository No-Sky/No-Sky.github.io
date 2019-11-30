git add .
git commit -m 'backup'
git push origin notebackup

hugo
cd public
git add .
git commit -m 'auto-update'
git push origin master