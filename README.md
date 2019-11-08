# R in Production Presentation

>R in Production Part I: Challenges and Examples
>
>What does it mean to put code into production? Why would you want to? What are the challenges? Branden Collingsworth, Aurora Cooperative's Director of Data Science, will show how R can be used to deploy static web pages, dashboards, dynamic web applications, APIs, ETL and batch scoring jobs while dealing with the common challenges that arise when users depend on your code.

_Omaha R User Group presentation from November 7th 2019_

The purpose of this presentation was to demonstrate why R users should think about their R code as production and how to deal with the issues that users face putting R into production.

## Notes for users attempting to use the demos

* Clone the repository to your machine
`git clone https://github.com/brandco/RinProductionPresentation.git`

* To experiment with the code on your local machine, open the Rproj file 
`RinProduction.Rproj`

* To get the docker container running, execute the commands in the file `commandline`

_Note that the docker build file points the the URL of this repository on GitHub. Replace with '.' if building locally_

* The .rmd files were rendered to GitHub markdown in the `view_on_github` directory for users who want to see the presentation content without cloning the repo. GitHub makes these markdown files readable on the web with major loss in formatting.

* You can find a pre-built Docker image from the demo at https://hub.docker.com/r/brandco/rinprod

* The Azure App Service for running the Docker Container was shut down after the demo and the link will no long work
