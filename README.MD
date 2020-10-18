# Overview ![Python application test with Github Actions](https://github.com/jameslian147/cicd-project/workflows/Python%20application%20test%20with%20Github%20Actions/badge.svg)
This is a python project that demostrates the necessary steps in setting up CI CD in Azure and Github actions

## Project Plan
Trello board
https://trello.com/b/j66JLQ23

Management Spreadsheet
https://docs.google.com/spreadsheets/d/1g__ADvqWh5nC4_anMRsUzwtnP_uprrVialXOOlmvjC0/edit?usp=sharing

## Instructions

### Quick view of architecture
![alt text](https://github.com/jameslian147/cicd-project/blob/master/images/architecture.png?raw=true "Architecture")

### In brief
This is the desired setup we want to do at the end of this project. When there are changes to the git repo, eg. file modification, Gitactions will auto run the Makefile all thru the file .github/workflows/pythonapp.yml.

Azure Pipelines works quite similar with Gitactions except we will be doing deployment to app services after a successful build.

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

### Steps
1. Go to Azure Portal

2. Click on Cloud Shell

![alt text](https://github.com/jameslian147/cicd-project/blob/master/images/cloud-shell.png?raw=true "Cloud Shell")

3. Clone this project at the cloud shell

![alt text](https://github.com/jameslian147/cicd-project/blob/master/images/git-status.png?raw=true "Git Status")

4. Setup a virtual environment 

```bash
make setup
source ~/.udacity-devops/bin/activate
```

![alt text](https://github.com/jameslian147/cicd-project/blob/master/images/setenv.png?raw=true "Set Environment")

5. Build the project

```bash
make all
```

![alt text](https://github.com/jameslian147/cicd-project/blob/master/images/build-all.png?raw=true "Build All")

5. Deploy this project to Azure app services

```bash
az webapp up -n flask-ml-app
```

![alt text](https://github.com/jameslian147/cicd-project/blob/master/images/az-app-services.png?raw=true "App Services")

6. Go to Azure Pipelines
https://dev.azure.com

7. Create a new project
and go to Settings >> Pipelines >> Service Connections
![alt text](https://github.com/jameslian147/cicd-project/blob/master/images/new-project.png?raw=true "New Project")

8. Select Azure Resource Manager >> Service Principal (automatic)

9. Select your Azure Subscription and Resource Group and a new Service Name
![alt text](https://github.com/jameslian147/cicd-project/blob/master/images/new-service-connection.png?raw=true "Service Connection")

10. Go to pipelines >> Create Pipeline
![alt text](https://github.com/jameslian147/cicd-project/blob/master/images/create-pipeline.png?raw=true "Create Pipeline")

11. Select your repository
![alt text](https://github.com/jameslian147/cicd-project/blob/master/images/select-repo.png?raw=true "Select Repo")

12. Review and save the pipeline yml
![alt text](https://github.com/jameslian147/cicd-project/blob/master/images/save-pipeline.png?raw=true "Save Pipeline")



* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


