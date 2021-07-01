\name{index}
\alias{index}
\alias{index3L}
\alias{index5L}

\title{Belgian index values for the EQ-5D descriptive system.}

\description{
These functions obtain index values for the EQ-5D descriptive system using the algorithm developed by Cleemput (2010).
}

\usage{
index3L(MO, SC, UA, PD, AD)
index5L(MO, SC, UA, PD, AD)
}

\arguments{
  \item{MO}{score for mobility; numeric or character vector.}
  \item{SC}{score for self-care; numeric or character vector.}
  \item{UA}{score for usual activities; numeric or character vector.}
  \item{PD}{score for pain/discomfort; numeric or character vector.}
  \item{AD}{score for anxiety/depression; numeric or character vector.}
}

\details{
The scores can take values \code{1, 2, 3} for function \code{index3L}, and values \code{1, 2, 3, 4, 5} for function \code{index5L}.\cr

The EQ-5D-5L index values are calculated using the algorithm developed by Cleemput (2010):
\deqn{1-X = 0.152*INT + 0.074*MO + 0.083*SC + 0.031*UA + 0.084*PD + 0.103*AD + 0.256*N3}
where \eqn{INT} is a dummy indicating less than perfect health, and \eqn{N3} is a dummy indicating any dimension at level 3

The index values for the EQ-5D-5L are obtained from Bouckaert et al. (2021).
}

\value{
A \code{data.frame} containing the scores and index values.
}

\references{
\itemize{
  \item{Cleemput I. A social preference valuations set for EQ-5D health states in Flanders, Belgium. Eur J Health Econ. 2010 Apr;11(2):205-13. doi: \href{https://doi.org/10.1007/s10198-009-0167-0}{10.1007/s10198-009-0167-0}.}
  \item{Bouckaert N, Gerkens S, Devriese S, Cleemput I. An EQ-5D-5L value set for Belgium - How to value health-related quality of life? Health Services Research (HSR) Brussels: Belgian Health Care Knowledge Centre (KCE). 2021. KCE Reports 342. D/2021/10.273/19. \url{https://kce.fgov.be/en/an-eq-5d-5l-value-set-for-belgium-\%E2\%80\%93-how-to-value-health-related-quality-of-life}}
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
