% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/allClasses.R
\name{reject_infered}
\alias{reject_infered}
\title{An S4 class to represent a reject inference technique.}
\description{
An S4 class to represent a reject inference technique.
}
\section{Slots}{

\describe{
\item{\code{method_name}}{The name of the used reject inference method.}

\item{\code{financed_model}}{The logistic regression model on financed clients.}

\item{\code{acceptance_model}}{The acceptance model (if estimated by the given method).}

\item{\code{infered_model}}{The logistic regression model resulting from the reject inference method.}
}}

