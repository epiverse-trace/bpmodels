% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/likelihoods.R
\name{chain_ll}
\alias{chain_ll}
\title{Calculate the log-likelihood for the outcome of a branching process}
\usage{
chain_ll(
  x,
  offspring,
  stat = c("size", "length"),
  obs_prob = 1,
  infinite = Inf,
  exclude = NULL,
  individual = FALSE,
  nsim_obs,
  ...
)
}
\arguments{
\item{x}{vector of sizes or lengths of transmission chains}

\item{offspring}{Offspring distribution: a character string corresponding to
the R distribution function (e.g., "pois" for Poisson, where
\code{\link{rpois}} is the R function to generate Poisson random numbers)}

\item{stat}{statistic given as \code{x} ("size" or "length" of chains)}

\item{obs_prob}{observation probability (assumed constant)}

\item{infinite}{any chains of this size/length will be treated as infinite}

\item{exclude}{any sizes/lengths to exclude from the log-likelihood
calculation}

\item{individual}{if TRUE, a vector of individual log-likelihood
contributions will be returned rather than the sum}

\item{nsim_obs}{number of simulations if the log-likelihood is to be
approximated for imperfect observations}

\item{...}{parameters for the offspring distribution}
}
\value{
log-likelihood, or vector of log-likelihoods
(if \code{obs_prob} < 1), or a list of individual log-likelihood
contributions (if \code{individual=TRUE})
}
\description{
Calculate the log-likelihood for the outcome of a branching process
}
\examples{
chain_sizes <- c(1, 1, 4, 7) # example of observed chain sizes
chain_ll(chain_sizes, "pois", "size", lambda = 0.5)
}
\seealso{
pois_size_ll, nbinom_size_ll, gborel_size_ll, pois_length_ll,
geom_length_ll, offspring_ll
}
\author{
Sebastian Funk
}
