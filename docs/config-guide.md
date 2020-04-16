# Configuration Guide
## SCM Integration
#### onPullRequest Job/Event setup

##### Setup GitHub PullRequest plugin 
   * Open Jenkins -> Credentials
   * Update Username and Password for "ghprbhook-token" credentials
   
![Alt text](https://github.com/qaprosoft/qps-infra/blob/master/docs/img/Credentials.png?raw=true "Credentials") 

##### Trigger onPullRequest Job(s)
   * Go to your GitHub repository
   * Create new Pull Request
        * Verify in Jenkins that onPullRequest-repo,onPullRequest-repo-trigger jobs launched and succeed
        
![Alt text](https://github.com/qaprosoft/qps-infra/blob/master/docs/img/PushJobs.png?raw=true "PushJobs")

## Organization Setup        
### Register Organization
* Open Jenkins->Management_Jobs folder.
* Run "RegisterOrganization" providing your SCM (GitHub) organization name as folderName
     * New folder is created with default content
     
 Create organization: 
 ![Alt text](https://github.com/qaprosoft/qps-infra/blob/master/docs/img/Organization.png?raw=true "Organization")

#### Register Repository
* Open your organization folder
* Run "RegisterRepository" pointing to your TestNG repository (use https://github.com/qaprosoft/carina-demo as sample repo to scan)
     * Repository should be scanned and TestNG jobs created
     
Create Repository:
 ![Alt text](https://github.com/qaprosoft/qps-infra/blob/master/docs/img/Repository.png?raw=true "Repository")       

##### onPush Job/Event setup

###### Setup GitHub WebHook
   * Go to your GitHub repository
   * Click "Settings" tab
   * Click "Webhooks" menu option
   * Click "Add webhook" button
   * Type http://your-jenkins-domain.com/jenkins/github-webhook/ into "Payload URL" field
   * Select application/json in "Content Type" field
   * Tick "Send me everything." option
   * Click "Add webhook" button
   
###### Trigger onPush Job(s)
 *  After any push or merge into the master onPush-repo job is launched, suites scanned, TestNG jobs created
   
## Troubleshooting

## Support Channel

* Join [Telegram channel](https://t.me/qps_infra) in case of any question
