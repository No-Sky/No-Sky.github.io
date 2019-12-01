git add .
git commit -m 'backup'
git push origin notebackup

hugo --theme=zozo
cd public
git add .
git commit -m 'auto-update'
git push origin master