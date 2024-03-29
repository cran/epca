% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility.R
\name{cpve}
\alias{cpve}
\title{Cumulative Proportion of Variance Explained (CPVE)}
\usage{
cpve(x, v, is.cov = FALSE)
}
\arguments{
\item{x}{\code{matrix} or \code{Matrix}, the original data matrix or the Gram matrix.}

\item{v}{\code{matrix} or \code{Matrix}, coefficients of linear transformation, e.g., loadings (in PCA).}

\item{is.cov}{\code{logical}, whether the input matrix is a covariance matrix (or a Gram matrix).}
}
\value{
a \code{numeric} vector of length \code{ncol(v)}, the i-th value is the CPVE of the first i columns in \code{v}.
}
\description{
Calculate the CPVE.
}
\examples{
## use the "swiss" data
## find two sparse PCs
s.sca <- sca(swiss, 2, gamma = sqrt(ncol(swiss)))
ld <- loadings(s.sca)
cpve(as.matrix(swiss), ld)

}
\seealso{
\link{pve}
}
