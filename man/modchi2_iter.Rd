% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modChi2.R
\name{modchi2_iter}
\alias{modchi2_iter}
\title{Wrapper function for the modified Chi2 function from the discretization package.}
\usage{
modchi2_iter(predictors, labels, test = F, validation = F,
  proportions = c(0.3, 0.3), criterion = "gini", param = list(alp =
  0.5))
}
\arguments{
\item{predictors}{The matrix array containing the numeric attributes to discretize.}

\item{labels}{The actual labels of the provided predictors (0/1).}

\item{test}{Boolean : True if the algorithm should use predictors to construct a test set on which to search for the best discretization scheme using the provided criterion (default: TRUE).}

\item{validation}{Boolean : True if the algorithm should use predictors to construct a validation set on which to calculate the provided criterion using the best discretization scheme (chosen thanks to the provided criterion on either the test set (if true) or the training set (otherwise)) (default: TRUE).}

\item{proportions}{The list of the (2) proportions wanted for test and validation set. Only the first is used when there is only one of either test or validation that is set to TRUE. Produces an error when the sum is greater to one. Useless if both test and validation are set to FALSE. Default: list(0.2,0.2).}

\item{criterion}{The criterion ('gini','aic','bic') to use to choose the best discretization scheme among the generated ones (default: 'gini'). Nota Bene: it is best to use 'gini' only when test is set to TRUE and 'aic' or 'bic' when it is not. When using 'aic' or 'bic' with a test set, the likelihood is returned as there is no need to penalize for generalization purposes.}

\item{param}{List providing the parameters to test (see ?discretization::modChi2, default=list(alp = 0.5)).}
}
\description{
This function discretizes a training set using the modified Chi2 method and the user-provided parameters and chooses the best discretization scheme among them based on a user-provided criterion and eventually a test set.
}
\details{
This function discretizes a dataset containing continuous features \eqn{X} in a supervised way, i.e. knowing observations of a binomial random variable \eqn{Y} which we would like to predict based on the discretization of \eqn{X}.
To do so, the \code{ModifiedChi2} alorithm starts by putting each unique values of \eqn{X} in a separate value of the ‘‘discretized'' categorical feature \eqn{E}. It then tests if two adjacent values of \eqn{E} are significantly different using the \eqn{\chi^2}-test.
In the context of Credit Scoring, a logistic regression is fitted between the ‘‘discretized'' features \eqn{E} and the response feature \eqn{Y}. As a consequence, the output of this function is the discretized features \eqn{E}, the logistic regression model of \eqn{E} on \eqn{Y} and the parameters used to get this fit.
}
\references{
Enea, M. (2015), speedglm: Fitting Linear and Generalized Linear Models to Large Data Sets, \url{https://CRAN.R-project.org/package=speedglm}
HyunJi Kim (2012). discretization: Data preprocessing, discretization for classification. R package version 1.0-1. \url{https://CRAN.R-project.org/package=discretization}
Tay, F. E. H. and Shen, L. (2002). Modified Chi2 Algorithm for Discretization, \emph{IEEE Transactions on knowledge and data engineering}, \strong{14}, 666–670.
#' @examples
# Simulation of a discretized logit model
set.seed(1)
x = matrix(runif(300), nrow = 100, ncol = 3)
cuts = seq(0,1,length.out= 4)
xd = apply(x,2, function(col) as.numeric(cut(col,cuts)))
theta = t(matrix(c(0,0,0,2,2,2,-2,-2,-2),ncol=3,nrow=3))
log_odd = rowSums(t(sapply(seq_along(xd[,1]), function(row_id) sapply(seq_along(xd[row_id,]),
function(element) theta[xd[row_id,element],element]))))
y = stats::rbinom(100,1,1/(1+exp(-log_odd)))

modchi2_iter(x,y)
}
\seealso{
\code{glm}, \code{speedglm}, \code{discretization}
}
\author{
Adrien Ehrhardt
}
\keyword{Chi2}
\keyword{discretization}
\keyword{modified}
