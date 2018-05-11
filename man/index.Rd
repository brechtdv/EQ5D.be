\name{index}
\alias{index3L}
\alias{index5L}

\title{Functions to calculate Belgian index values for the EQ-5D descriptive system.}

\description{
These functions calculate index values for the EQ-5D descriptive system using the algorithm developed by Cleemput (2010).
}

\usage{
index3L(MO, SC, UA, AD, PD)
index5L(MO, SC, UA, AD, PD)
}

\arguments{
  \item{MO}{score for mobility; numeric or character vector.}
  \item{SC}{score for self-care; numeric or character vector.}
  \item{UA}{score for usual activities; numeric or character vector.}
  \item{AD}{score for anxiety/depression; numeric or character vector.}
  \item{PD}{score for pain/discomfort; numeric or character vector.}
}

}
\details{
The scores can take values \code{1, 2, 3} for function \code{index3L}, and values \code{1, 2, 3, 4, 5} for function \code{index5L}.\cr

The index values are calculated using the algorithm developed by Cleemput (2010):
\deqn{1-X = 0.152*INT + 0.074*MO + 0.083*SC + 0.031*UA + 0.084*PD + 0.103*AD + 0.256*N3}
where \eqn{INT} is a dummy indicating less than perfect health, and \eqn{N3} is a dummy indicating any dimension at level 3

The index values for the EQ-5D-5L are obtained by mapping the the EQ-5D-5L health states to EQ-5D-3L health states, following van Hout et al. (2012).
}

\value{
A \code{data.frame} containing the scores and index values.
}

\references{
\itemize{
  \item{Cleemput I. A social preference valuations set for EQ-5D health states in Flanders, Belgium. Eur J Health Econ. 2010 Apr;11(2):205-13. doi: \href{https://doi.org/10.1007/s10198-009-0167-0}{10.1007/s10198-009-0167-0}.}
  \item{van Hout B, Janssen MF, Feng YS, Kohlmann T, Busschbach J, Golicki D, Lloyd A, Scalone L, Kind P, Pickard AS. Interim scoring for the EQ-5D-5L: mapping the EQ-5D-5L to EQ-5D-3L value sets. \emph{Value Health}. 2012 Jul-Aug;15(5):708-15. doi: \href{https://doi.org/10.1016/j.jval.2012.02.008}{10.1016/j.jval.2012.02.008}.}
  }
}

\author{
Brecht Devleesschauwer <\email{brechtdv@gmail.com}>
}

\examples{
## Obtain index value for a single health state
index3L(1, 2, 3, 3, 2)

## Obtain entire Belgian value set for EQ-5D-3L
scores3L <- expand.grid(MO = 1:3, SC = 1:3, UA = 1:3, AD = 1:3, PD = 1:3)
with(scores3L, index3L(MO, SC, UA, AD, PD))

## Obtain entire Belgian value set for EQ-5D-5L
scores5L <- expand.grid(MO = 1:5, SC = 1:5, UA = 1:5, AD = 1:5, PD = 1:5)
with(scores5L, index5L(MO, SC, UA, AD, PD))
}
