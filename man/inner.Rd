% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility.R
\name{inner}
\alias{inner}
\title{Matrix Inner Product}
\usage{
inner(X, Y, FUN = "crossprod", ...)
}
\arguments{
\item{X, Y}{\code{matrix} or \code{Matrix}.}

\item{FUN}{\code{function} or a \code{character(1)} name of base function.
The function should take in two vectors as input and ouput a \code{numeric(1)} result.}

\item{...}{additional parameters for \code{FUN}.}
}
\value{
\code{matrix}, inner product of \code{X} and \code{Y}.
}
\description{
Calculate the custom matrix inner product,
\code{Z = crossprod(X, Y)},
where \verb{Z[i,j] = FUN(X[,i], Y[,j]}).
}
\examples{
x <- matrix(1:6, 2, 3)
y <- matrix(7:12, 2, 3)
## The default is equivalent to `crossprod(x, y)`
inner(x, y) 
## We can compute the pair-wise Euclidean distance of columns.
EuclideanDistance = function(x, y) crossprod(x, y)^2
inner(x, y, EuclideanDistance)

}
