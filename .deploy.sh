git log --pretty=format:"%h - %an, %ar : %s"
ls -altR $WEBDEV/credibilium/build
cp -R $WEBDEV/credibilium/build/* .
diff -r $WEBDEV/credibilium/build . 
# remove files on in ./ !!!
git diff | more
git add --all
git commit -m "Build Updates - resolved jsx bug in solutions page" -a
git diff | more
git push -u origin master
git ls-tree --name-only -r master
