#!groovy
import hudson.slaves.EnvironmentVariablesNodeProperty
import hudson.EnvVars
import jenkins.model.*
pipeline {
  agent any
  environment {
    def commitId = "${GIT_COMMIT}"
    def branchName = "${GIT_BRANCH}"
    def temp = ''
    def author = "\$(git --no-pager show -s --format='%an <%ae>' ${branchName})"
    }
 stages {
    stage('BitBucketInforation') {
    steps {
            sh """
            #git log --oneline > temp.txt
            #head -1 temp.txt | awk '{print \$1}'
            #echo "this is test"
            """.trim()
          	echo "GIT_URL: ${GIT_URL}"
          	echo "Git commit id is: ${commitId}"
                echo "GIT_PREVIOUS_COMMIT: ${GIT_PREVIOUS_COMMIT}"
          	echo "GIT_BRANCH: ${GIT_BRANCH}" 
                echo "Author_Name: ${author}"
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

