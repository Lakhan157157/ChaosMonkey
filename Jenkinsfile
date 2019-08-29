#!groovy
pipeline {
  agent any
  environment {
    def commitId = "${GIT_COMMIT}"
    def branchName = "${GIT_BRANCH}"
    //def author = sh(returnStdout: true, script: "git --no-pager show -s --format='%an' ${GIT_BRANCH}")
    def author = sh """ #!/bin/bash ( returnStdout: true, script: "git show ${commitId} | grep -i Author: | awk '{print \$2}'") """
    def temp = ''
    }
 stages {
    stage('BitBucketInforation') {
    steps {


          	echo "GIT_URL: ${GIT_URL}"
          	echo "Git commit id is: ${commitId}"
                echo "GIT_PREVIOUS_COMMIT: ${GIT_PREVIOUS_COMMIT}"
          	echo "GIT_BRANCH: ${GIT_BRANCH}" 
                echo "Author_Name: ${author}"
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

