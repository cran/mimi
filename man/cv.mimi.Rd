% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cv.mimi.R
\name{cv.mimi}
\alias{cv.mimi}
\title{selection of the regularization
parameters (lambda1 and lambda2) of the mimi function by cross-validation}
\usage{
cv.mimi(y, model = c("low-rank", "covariates"), var.type, x = NULL,
  groups = NULL, N = 5, algo = c("mcgd", "bcgd"), thresh = 1e-05,
  maxit = 100, max.rank = NULL, trace.it = F, parallel = F,
  len = 15)
}
\arguments{
\item{y}{[matrix, data.frame] incomplete and mixed data frame (nxp)}

\item{model}{either one of "groups", "covariates" or "low-rank", indicating which model should be fitted}

\item{var.type}{vector of length p indicating types of y columns (gaussian, binomial, poisson)}

\item{x}{[matrix, data.frame] covariate matrix (npxq)}

\item{groups}{factor of length n indicating groups (optional)}

\item{N}{[integer] number of cross-validation folds}

\item{algo}{type of algorithm to use, either one of "bcgd" (small dimensions, gaussian and binomial variables) or "mcgd" (large dimensions, poisson variables)}

\item{thresh}{[positive number] convergence threshold, default is 1e-5}

\item{maxit}{[integer] maximum number of iterations, default is 100}

\item{max.rank}{[integer] maximum rank of interaction matrix, default is 2}

\item{trace.it}{[boolean] whether information about convergence should be printed}

\item{parallel}{[boolean] whether the N-fold cross-validation should be parallelized, default value is TRUE}

\item{len}{[integer] the size of the grid}
}
\value{
A list with the following elements
\item{lambda1}{regularization parameter estimated by cross-validation for nuclear norm penalty (interaction matrix)}
\item{lambda2}{regularization parameter estimated by cross-validation for l1 norm penalty (main effects)}
\item{errors}{a table containing the prediction errors for all pairs of parameters}
}
\description{
selection of the regularization
parameters (lambda1 and lambda2) of the mimi function by cross-validation
}
