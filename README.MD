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

4. Build the project 

```bash
make all
```



5. Deploy this project to Azure app services

```bash
az webapp -n flask-ml-app
```

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

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


