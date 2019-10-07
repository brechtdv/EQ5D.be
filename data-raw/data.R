### eq5d.be / generate internal data
### .. EQ-5D-3L value set
### .. EQ-5D-5L value set

## EQ-5D-3L value set
## .. based on Cleemput (2010)
## .. https://doi.org/10.1007/s10198-009-0167-0

## all possible 3L scores
scores3L <- expand.grid(AD = 1:3, PD = 1:3, UA = 1:3, SC = 1:3, MO = 1:3)
scores3L <- scores3L[, rev(colnames(scores3L))]

## define 'intercept': at least one score > 1
int <- rep(0, nrow(scores3L))                             # perfect health
int[apply(scores3L, 1, function(x) any(x > 1))] <- 0.152  # less than perfect

## define 'N3': at least one score == 3
N3 <- apply(scores3L, 1, function(x) any(x == 3)) * 0.256

## calculate 3L index
index3L <-
  with(scores3L,
       1 -                   # full health
         int -               # intercept
         0.074 * (MO - 1) -  # mobility
         0.083 * (SC - 1) -  # self-care
         0.031 * (UA - 1) -  # usual activities
         0.084 * (PD - 1) -  # pain/discomfort
         0.103 * (AD - 1) -  # anxiety/depression
         N3)                 # any dimension at level 3

## compile 3L value set
valueset3L <-
  data.frame(score = apply(scores3L, 1, paste, collapse = ""),
             index = index3L)


## EQ-5D-5L value set
## .. based on Cleemput (2010)
## .. https://doi.org/10.1007/s10198-009-0167-0
## .. based on van Hout et al. (2012)
## .. https://doi.org/10.1016/j.jval.2012.02.008

## all possible 5L scores
## .. note the reversed sequence in 'm'
scores5L <- expand.grid(AD = 1:5, PD = 1:5, UA = 1:5, SC = 1:5, MO = 1:5)
scores5L <- scores5L[, rev(colnames(scores5L))]
scores5L <- with(scores5L, cbind(MO, SC, UA, PD, AD))

## load 'Probability matrix' from 'EQ-5D-5L_Crosswalk_Value_Sets'
load("m2.RData")

## product
m.prod <- t(t(m) * valueset3L$index)

## rowSums
m.sums <- rowSums(m.prod)

## compile 5L value set
valueset5L <-
  data.frame(score = apply(scores5L, 1, paste, collapse = ""),
             index = m.sums)


## Population norms :: 06/10/2018
load("2013/popnormMO.RData")
popnormsMO <- cbind(tab, year = 2013)
load("2018/popnormMO.RData")
popnormsMO <- rbind(popnormsMO, cbind(tab, year = 2018))

load("2013/popnormSC.RData")
popnormsSC <- cbind(tab, year = 2013)
load("2018/popnormSC.RData")
popnormsSC <- rbind(popnormsSC, cbind(tab, year = 2018))

load("2013/popnormDA.RData")
popnormsUA <- cbind(tab, year = 2013)
load("2018/popnormDA.RData")
popnormsUA <- rbind(popnormsUA, cbind(tab, year = 2018))

load("2013/popnormPD.RData")
popnormsPD <- cbind(tab, year = 2013)
load("2018/popnormPD.RData")
popnormsPD <- rbind(popnormsPD, cbind(tab, year = 2018))

load("2013/popnormAD.RData")
popnormsAD <- cbind(tab, year = 2013)
load("2018/popnormAD.RData")
popnormsAD <- rbind(popnormsAD, cbind(tab, year = 2018))

load("2013/popnormANY1.RData")
popnormsANY <- cbind(tab, year = 2013)
load("2018/popnormANY1.RData")
popnormsANY <- rbind(popnormsANY, cbind(tab, year = 2018))

load("2013/popnormindex.RData")
popnormsIND <- cbind(tab, year = 2013)
load("2018/popnormindex.RData")
popnormsIND <- rbind(popnormsIND, cbind(tab, year = 2018))

load("2013/popnormVAS.RData")
popnormsVAS <- cbind(tab, year = 2013)

# NO VAS IN 2018 !!
popnormsVAS2018 <- popnormsVAS
popnormsVAS2018[, c("mean", "lwr", "upr", "se")] <- NA
popnormsVAS2018[, "year"] <- 2018
popnormsVAS <- rbind(popnormsVAS, popnormsVAS2018)


###
### SAVE DATA
###

save(
  valueset3L,
  valueset5L,
  popnormsMO,
  popnormsSC,
  popnormsUA,
  popnormsPD,
  popnormsAD,
  popnormsANY,
  popnormsIND,
  popnormsVAS,
  file = "../R/sysdata.rda")