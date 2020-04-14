# It job watch- Sparta Project :cyclone: :monkey:

## Summary:
The aim of this project is to create working development, testing and production environment and to build a pipeline to move the code through them using Jenkins. To ensure that this pipeline is automated and using a slave node to have tests that ensure the code is working and pass, so then it can be pushed.

## Getting Started:
Fork repository from the link below to start running on your local machine for development and testing purposes.

https://github.com/Mahansparta/It_Jobs_Watch_Data_Package

### Prerequisites:
Software/Tools used in this project:
- Pycharm
- Chef
- Bash
- Git
- Trello
- Virtual Box
- pip

## Tasks:

### Trello

Use Trello as a project management tool to track progression of the project, to label which tasks are of higher priority and the difficultly of the tasks.
Use agile framework to constantly report back to the Trello to ensure the correct tasks are being completed with DOD.

### Python App Pipeline:

- Create a `development` environment using Vagrant and provision it with Chef such that it can run the application and tests successfully.
- Create an AMI using packer and chef that is capable of running the application and configure Jenkins to use this as a slave.
- Create a Jenkins job that listens for `PULL-REQUESTS` to your `dev` branch on your repo and starts a testing job.
- Tests should be run on the application on the slave node, if successfully code should be merged to the `master` branch.
- Create a job that builds your AMI when all tests have passed using **Packer**.

### Chef Python Cookbook Pipeline
- Create a `development` pipeline for your Python cookbook.
- Create a Jenkins job that listens for `PULL-REQUESTS` to your `dev` branch on your Python Cookbook repo and starts a testing job.
- Run tests using Chef Kitchen in the Cloud - `A test slave will be needed for this.`
- Create a job that will merge your changes to your configuration to the master branch which can then be used by the pipeline above.

## Github:

Github will be a major part of the project. It will be used as a source control. The following structure should be followed when designing your `Git Branching` strategy.

```bash
\__master branch (Protected)
 \__dev branch (Protected)                  Pull-requests(Trigger Jenkins)
```

## Task 1:
Run app in local machine to make sure app runs correctly. (code runs and test pass)


## Task 2:
Create VM in Virtual Box and sync app into the VM within the vagrant file.
Ensure app works correctly in VM and saves data that is created from the app.
Then automate this process using provisions.

```Then how I did this.
(Vagrant file)
(Provisions)

Explain what these tests test and why

```

## Task 3:
Build VM using chef first without previsions to track down errors easier and fix them .
Then use cookbook to provision.

## Authors

* **Mahan Jahromi** - *DevOps Engineer* - [Mahansparta](https://github.com/Mahansparta/it_job_watch_mahan)


## Acknowledgments

* Hat tip to anyone whose helped me with this Project
* Inspiration  - Filipe Paiva
* Mum
