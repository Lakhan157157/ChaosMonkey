#!/bin/bash
commitid=`git log --oneline | head -n1 | awk '{print $1}'`
pullid=`git show $commitid --oneline| awk '{print $5}' | sed -e 's/#//'`
#curl -u lakhan157157:lakhan@lakhan@157 https://api.github.com/repos/lakhan157157/testing/pulls/$pullid <<EOF >>  info.json 
curl -u "lakhan157157:lakhan@lakhan@157" "https://api.github.com/repos/lakhan157157/testing/pulls/$pullid" -o info.json 
pruser=`jq '.user.login' info.json`
mergedby=`jq '.merged_by.login' info.json`
requested_reviewer=`jq '.requested_reviewers' info.json`
request_comments=`jq '.review_comments' info.json`

echo "commitid:  " $commitid
echo "pr_id: " $pullid
echo "pruser: " $pruser
echo "merged_by: " $mergedby
echo "requested_reviewer: " $requested_reviewer
echo "review_comments: " $review_comments

