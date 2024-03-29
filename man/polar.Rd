% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility.R
\name{polar}
\alias{polar}
\title{Polar Decomposition}
\usage{
polar(x)
}
\arguments{
\item{x}{a \code{matrix} or \code{Matrix}, which is presumed full-rank.}
}
\value{
a \code{matrix} of the unitary part of the polar decomposition.
}
\description{
Perform the polar decomposition of an n x p (n > p) matrix \code{x} into two parts: \code{u} and \code{h},
where \code{u} is an n x p unitary matrix with orthogonal columns (i.e. \code{crossprod(u)} is the identity matrix),
and \code{h} is a p x p positive-semidefinite Hermitian matrix.
The function returns the \code{u} matrix.
This is a helper function of \code{\link[=prs]{prs()}}.
}
\examples{
x <- matrix(1:6, nrow = 3)
polar_x <- polar(x)

}
\references{
Chen, F. and Rohe, K. (2020) "A New Basis for Sparse Principal Component Analysis."
}
