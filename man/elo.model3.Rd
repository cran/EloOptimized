% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elo.model3.R
\name{elo.model3}
\alias{elo.model3}
\title{optimize k parameter and entry Elo scores}
\usage{
elo.model3(par, IA_data, all_ids, return_likelihood = T)
}
\arguments{
\item{par}{list of parameters, with par[1] being log(k), and par[2:length(par)] 
being the initial elo scores of individuals}

\item{IA_data}{list of interaction data, with columns "Date", "Winner", and "Loser"
(in that order)}

\item{all_ids}{list of all ids to rank}

\item{return_likelihood}{If TRUE, returns the total likelihood based on all 
interactions given a particular set of parameters.  If FALSE, returns 
a table of Elo scores based on a given set of parameters.}
}
\description{
Function to optimize k parameter and entry Elo scores
}
\examples{
# for internal use
}
