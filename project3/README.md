# CUNY DATA 607 Spring 2020 Project 3 Data Science Skills

The purpose of this project is to answer the question, "Which are the most valued data science skills?" 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for testing purposes. 

### Prerequisites

Before you can test, you will need to request access to the MySQL database. Please send your IPv4 address to one of the team members so access can be given for your network. To find your address, you can go to this address https://nordvpn.com/what-is-my-ip/ and send your host address.

Because the dataset is 10,000 records, your machine might not be able to handle the computation. 

To use a small subset of records, remove `n = -1` from the Rmd file for the function dbFetch.

```
dbFetch(rs, n = -1 ) becomes dbFetch(rs)

```

## Built With

* [R Markdown](https://rmarkdown.rstudio.com/) - Development Environment
* [CRAN](https://cran.r-project.org/) - R Libraries and Tutorials
* [MySQL Workbench](https://www.mysql.com/products/workbench/) - Database Development
* [GitHub](https://github.com/)
* [GitHub Desktop](https://desktop.github.com/)
* [Azure](http://azure.microsoft.com/en-us/) - Infrastructure
* [Power BI](https://powerbi.microsoft.com/en-us/) - Analytics
* [MySQL](https://www.mysql.com/) - Database
* [Azure Text Analytics](https://azure.microsoft.com/en-us/services/cognitive-services/text-analytics/) - Machine Text Analytics
* [Sublime Text](https://www.sublimetext.com/) - Power Text Editor

## Deliverables

The following serves as the grading rubric for this project:
- You will need to determine what tool(s) you’ll use as a group to effectively collaborate, share code and any project documentation (such as motivation, approach, findings).
- You will have to determine what data to collect, where the data can be found, and how to load it.
- The data that you decide to collect should reside in a relational database, in a set of normalized tables.
- You should perform any needed tidying, transformations, and exploratory data analysis in R.
- Your deliverable should include all code, results, and documentation of your motivation, approach, and findings.
- As a group, you should appoint (at least) three people to lead parts of the presentation.
- While you are strongly encouraged (and will hopefully find it fun) to try out statistics and data models, your grade will not be affected by the statistical analysis and modeling performed (since this is a semester one course on Data Acquisition and Management).
- Every student must be prepared to explain how the data was collected, loaded, transformed, tidied, and analyzed for outliers, etc. in our Meetup. This is the only way I’ll have to determine that everyone actively participated in the process, so you need to hold yourself responsible for understanding what your class-size team did! If you are unable to attend the meet up, then you need to either present to me one-on-one before the meetup presentation, or post a 3 to 5 minute video (e.g. on YouTube) explaining the process. Individual students will not be responsible for explaining any forays into statistical analysis, modeling, data mining, regression, decision trees, etc.

## Authors

* **M**att Mecoli  

* **P**hilip Tanofsky  

* **S**ung Lee  

* **V**anita Thompson

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Julia Silge and David Robinson's *Text Mining with R* (https://www.tidytextmining.com/)
* Billie Thompson's GitHub README format (https://gist.github.com/PurpleBooth/109311bb0361f32d87a2)