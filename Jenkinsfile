#!groovy
pipeline {
  agent any
  environment {
    def commitId = "${GIT_COMMIT}"
    def branchName = "${GIT_BRANCH}"
    def author = sh "\$(git --no-pager show -s --format='%an <%ae>' ${branchName})" 
    def temp = ''
    }
 stages {
    stage('BitBucketInforation') {
    steps {
            sh """
            git fetch origin master >&2
            author="\$(git --no-pager show -s --format='%an <%ae>' ${branchName})" || { >&2 echo "Failed to extract author"; exit 1; }
            commitIds=\$(git rev-parse HEAD) || { >&2 echo "Failed to find commit id"; exit 1; }
            #git log --oneline > temp.txt
            #head -1 temp.txt | awk '{print \$1}'
            echo "${GIT_COMMIT}"
            #echo "this is test"
            """.trim()
          	echo "GIT_URL: ${GIT_URL}"
          	echo "Git commit id is: ${commitId}"
                echo "GIT_PREVIOUS_COMMIT: ${GIT_PREVIOUS_COMMIT}"
          	echo "GIT_BRANCH: ${GIT_BRANCH}" 
                echo "Author_Name: ${Author}"
                echo "commitids: ${commitids}"
            //cat temp.txt
          	}
            
      
      /*echo "Branch name is:${branchName}"
        echo "Commit ID is:${commitid}"
        echo "Person who commit code in branch (${branchName}) :${commitPersonName}"
        echo "Person who create pull request from branch (${branchName}) :${pullRequestOwner}"
        echo "Person who merge the code :${codeMergeOwner}"
        echo "Person who approve the merging of code: ${mergeApprover}"
        */
        }  
            
    }
}

