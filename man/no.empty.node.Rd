% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Echidna_other_functions.R
\name{no.empty.node}
\alias{no.empty.node}
\title{Get clone network igraphs without empty mode. Empty node represents the 'extincted' sequences, that are not in any living cell but once existed.}
\usage{
no.empty.node(history, igraph.index)
}
\arguments{
\item{history}{The dataframe 'history' from the simulation output.}

\item{igraph.index}{The list 'igraph.index' from the simulation output.}

\item{empty.node}{If TRUE, there will be empty node in igraph. if FALSE, the empty node will be deleted.}
}
\value{
a list of clone network igraphs without empty mode.
}
\description{
Get clone network igraphs without empty mode. Empty node represents the 'extincted' sequences, that are not in any living cell but once existed.
}
