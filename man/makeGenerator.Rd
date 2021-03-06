% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makeGenerator.R
\name{makeGenerator}
\alias{makeGenerator}
\title{Construct a generator.}
\usage{
makeGenerator(generator, name, description,
  supported = getAvailableRepresentations(), params = list())
}
\arguments{
\item{generator}{[\code{function}]\cr
Actual generator function. Should expect the size of the population \code{size}
as a first and a ecr control object \code{control} as the second argument.}

\item{name}{[\code{character(1)}]\cr
Name of the generator.}

\item{description}{[\code{character(1)}]\cr
Short description of how the generator works.}

\item{supported}{[\code{character}]\cr
Vector of strings/names of supported parameter representations, i.e.,
'permutation', 'float', 'binary' or 'custom'.}

\item{params}{[\code{list}]\cr
Named list of the parameters the generator has been initialized with.
Default is the empty list.}
}
\value{
[\code{ecr_generator}]
  Generator object.
}
\description{
Helper function which constructs a generator, i. e., a function which generates
an initial population.
}
