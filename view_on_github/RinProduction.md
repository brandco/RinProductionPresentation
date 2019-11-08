R in Production Part I: Challenges and Examples
================
Branden Collingsworth
2019/11/4

\#Motivation

\#\#You should learn how to get your R code into production

  - all the value that you are ever going to create as a data scientist
    is going to happen when someone else makes a decision or when you
    automate the decision making process entirely

  - getting your work product into the hands of users or into another
    system should be a core competency

# Production Challenges

  - Infrastructure: A computer to run my code

  - Source Control: The code itself

  - Testing: A way to tell if it’s working correctly when I’m not
    watching it

class: inverse

# R Programmers Can Do Production

## It’s not that hard, using only<sup>1</sup> R

.footnote\[\[1\] Mostly R\]

# Demos of Pure R Production Workloads

  - [ETL Job](http://localhost:4200/ETL-demo.html)

  - [Static Site](http://localhost:4200/)

  - [API](http://localhost:8000/predict)

  - Shiny Web App

\#Cloud Deployment

Docker on my laptop is the same as other Docker hosts

1.  Push image to repository

2.  Create an App Service for the Docker container

3.  Start it: <https://rmd-server.azurewebsites.net/>

# I Don’t Have to Mention

  - Which web framework is the best?

  - How much CSS, HTML and JavaScript you need to know?

  - Who’s going to be your sysadmin?

class: center, inverse, middle

\#Questions?
