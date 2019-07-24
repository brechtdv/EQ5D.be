\name{EQ5D.be-package}
\alias{EQ5D.be-package}
\alias{EQ5D.be}

\docType{package}

\title{EQ-5D Index Values and Population Norms for Belgium}

\description{
The \pkg{EQ5D.be} package provides functions to calculate Belgian index values and population norms for the EuroQol 5 Dimensions questionnaire.
}

\details{
  \tabular{ll}{
    Package:    \tab  EQ5D.be\cr
    Type:       \tab  Package\cr
    Version:    \tab  0.0.2\cr
    Date:       \tab  2019-07-24\cr
    Authors:    \tab  Brecht Devleesschauwer\cr
    Maintainer: \tab  Brecht Devleesschauwer <\email{brechtdv@gmail.com}>\cr
    Depends:    \tab  R (>= 3.6.0)\cr
    License:    \tab  GPL (>= 2)\cr
}

Available functions in the \pkg{EQ5D.be} package:
  \tabular{ll}{
    \strong{Index values}\cr
    \code{\link{index3L}}		\tab Calculate index values for the EQ-5D-3L descriptive system.\cr
    \code{\link{index5L}}		\tab Calculate index values for the EQ-5D-5L descriptive system.\cr\cr

    \strong{Population norms}\cr
    \code{\link{popnorm}}       \tab Population norms for the EQ-5D-5L and EQ-5D VAS instruments.\cr
	\code{\link{popnormINDEX}}	\tab Population norms for the EQ-5D-5L index score.\cr
	\code{\link{popnormVAS}}	\tab Population norms for the EQ-5D-5L visual analogue scale.\cr
	\code{\link{popnormMO}}		\tab Population norms for reporting any problems of mobility.\cr
	\code{\link{popnormSC}}		\tab Population norms for reporting any problems of self-care.\cr
	\code{\link{popnormUA}}		\tab Population norms for reporting any problems with performing usual activities.\cr
	\code{\link{popnormPD}}		\tab Population norms for reporting any problems of pain/discomfort.\cr
	\code{\link{popnormAD}}		\tab Population norms for reporting any problems of anxiety/depression.\cr
	\code{\link{popnormANY}}	\tab Population norms for reporting any problem in the EQ-5D-5L descriptive system.\cr\cr
  }
}

\keyword{package}
