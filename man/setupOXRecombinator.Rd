% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/operator.recombinator.ox.R
\name{setupOXRecombinator}
\alias{setupOXRecombinator}
\title{Generator of the Ordered-Crossover (OX) recombination operator.}
\usage{
setupOXRecombinator()
}
\value{
[\code{ecr_recombinator}]
}
\description{
This recombination operator is specifically designed for permutations.
The operators chooses two cut-points at random and generates two offspring
as follows: a) copy the subsequence of one parent and b) remove the copied
node indizes from the entire sequence of the second parent from the sescond
cut point and b) fill the remaining gaps with this trimmed sequence.
}
\seealso{
Other recombinators: \code{\link{setupCrossoverRecombinator}},
  \code{\link{setupIntermediateRecombinator}},
  \code{\link{setupNullRecombinator}},
  \code{\link{setupPMXRecombinator}},
  \code{\link{setupSBXRecombinator}}
}
