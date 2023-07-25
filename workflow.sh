notable_blog_dir=../; # where is your notion blog? 
cur_dir=$(pwd); # your github blog dir
cd $notable_blog_dir;
notablog generate .; # compile blog again
cp -r public/. $cur_dir/.; # copy changes
# commit and push changes
cd $cur_dir; 
git add .;
commit_msg="${1:-'re-generated blog'}";
echo $commit_msg;
git commit -m "$commit_msg";
git push -u origin main;