\name{popnorm}
\alias{popnorm}
\alias{popnormINDEX}
\alias{popnormVAS}
\alias{popnormMO}
\alias{popnormSC}
\alias{popnormUA}
\alias{popnormPD}
\alias{popnormAD}
\alias{popnormANY}

\title{Belgian population norms for the EQ-5D-5L and EQ-5D VAS instruments.}

\description{
These functions provide Belgian population norms for the EQ-5D-5L and EQ-5D VAS instruments.
}

\usage{
# wrapper function
popnorm(age, sex, region, year, parameter = "INDEX")

# specific functions
popnormINDEX(age = NA, sex = "B", region = "BE", year = 2018)
popnormVAS(age = NA, sex = "B", region = "BE", year = 2018)
popnormMO(age = NA, sex = "B", region = "BE", year = 2018)
popnormSC(age = NA, sex = "B", region = "BE", year = 2018)
popnormUA(age = NA, sex = "B", region = "BE", year = 2018)
popnormPD(age = NA, sex = "B", region = "BE", year = 2018)
popnormAD(age = NA, sex = "B", region = "BE", year = 2018)
popnormANY(age = NA, sex = "B", region = "BE", year = 2018)
}

\arguments{
  \item{age}{age of the individuals; should be \code{NA} (all age) or integer value between 15 and 100.}
  \item{sex}{sex of the individuals; should be \code{"M"} (male), \code{"F"} (female), or \code{"B"} (both).}
  \item{region}{region of the individuals; should be \code{"BE"} (Belgium), \code{"BR"} (Brussels), \code{"FL"} (Flanders), or \code{"WA"} (Wallonia).}
  \item{year}{year of the survey; should be \code{2013} or \code{2018}.}
  \item{parameter}{which population norms to obtain; see 'Details'.}
}

\details{
There are 8 parameters for which population norms are available:
\tabular{ll}{
	\code{INDEX }	\tab EQ-5D-5L index score.\cr
	\code{VAS}	    \tab EQ-5D-5L visual analogue scale.\cr
	\code{MO}		  \tab Any problems of mobility.\cr
	\code{SC}		  \tab Any problems of self-care.\cr
	\code{UA}		  \tab Any problems with performing usual activities.\cr
	\code{PD}		  \tab Any problems of pain/discomfort.\cr
	\code{AD}		  \tab Any problems of anxiety/depression.\cr
	\code{ANY}	    \tab Any problem in the EQ-5D-5L descriptive system.\cr\cr
}

All population norm estimates are derived from the Belgian Health Interview Surveys 2013 and 2018. The Visual Analogue Scale was only included in the BHIS 2013.
}

\value{
A \code{data.frame} containing the population characteristics and population norms (mean, lower confidence level, upper confidence level, and standard error).
}

\references{
Belgian Health Interview Survey: https://his.wiv-isp.be/
}

\author{
Brecht Devleesschauwer <\email{brechtdv@gmail.com}>
}

\examples{
## Overall population norms for EQ-5D-5L index and VAS
popnormINDEX()
popnormVAS(year = 2013)

## EQ-5D-5L index population norm for specific individuals
ind <-
  data.frame(age = c(30, 50, 90),
             sex = c("F", "F", "M"),
             region = c("FL", "WA", "BR"))
with(ind, popnormINDEX(age, sex, region))

## Plot age trend in problems on all 5 EQ-5D-5L dimensions
par(mfrow = c(1, 5))
plot(15:100, popnormMO(15:100)$mean,
     type = "l", ylim = c(0, 1), main = "MO")
plot(15:100, popnormSC(15:100)$mean,
     type = "l", ylim = c(0, 1), main = "SC")
plot(15:100, popnormUA(15:100)$mean,
     type = "l", ylim = c(0, 1), main = "UA")
plot(15:100, popnormPD(15:100)$mean,
     type = "l", ylim = c(0, 1), main = "PD")
plot(15:100, popnormAD(15:100)$mean,
     type = "l", ylim = c(0, 1), main = "AD")
}
