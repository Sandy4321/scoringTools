[![Travis build status](https://travis-ci.org/adimajo/scoringTools.svg?branch=master)](https://travis-ci.org/adimajo/scoringTools)
[![Coverage status](https://codecov.io/gh/adimajo/scoringTools/branch/master/graph/badge.svg)](https://codecov.io/github/adimajo/scoringTools?branch=master)

# Credit Scoring Tools

This package has been developed as part of a CIFRE PhD, a special PhD contract in France which is for the most part financed by a company. This company subsequently gets to choose which subject(s) are tackled.

This research has been financed by Crédit Agricole Consumer Finance (CA CF), subsidiary of the Crédit Agricole Group which provides all kinds of banking and insurance services. CA CF focuses on consumer loans, ranging from luxury cars to small electronics.

In order to accept / reject loan applications more efficiently (both quicker and to select better applicants), most financial institutions resort to Credit Scoring: given the applicant's characteristics he/she is given a Credit Score, which has been statistically designed using previously accepted applicants, and which partly decides whether the financial institution will grant the loan or not.

Three subjects are tackled in this package:

* Reject Inference: using not financed clients' information to build a scorecard (see `vignette("scoringTools"`)
* Quantization (discretization and grouping of levels) and interaction screening (see `vignette("glmdisc"`)
* Logistic regression trees (see `vignette("glmtree"`)

The packages' websites (obtained from `pkgdown`) are available respectively at:

* [adimajo.github.io/scoringTools](https://adimajo.github.io/scoringTools)
* [adimajo.github.io/glmdisc](https://adimajo.github.io/glmdisc)
* [adimajo.github.io/glmtree](https://adimajo.github.io/glmtree)

A Shiny app explaining all aspects of this work is also accessible by running `runDemo()`.
