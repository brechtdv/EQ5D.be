### EQ5D.be / obtain Belgian population norms

## main wrapper function
popnorm <-
function(age, sex, region, year, parameter = "INDEX") {
  ## check argument 'age'
  age <- as.character(age)
  if (!all(age %in% as.character(c(NA, 15:100))))
    stop("'age' should be either NA or an integer between 15 and 100")
  age <- as.numeric(age)

  ## check argument 'sex'
  if (!all(sex %in% c("B", "M", "F")))
    stop(gettextf("'sex' should be one of %s",
                  paste(dQuote(c("B", "M", "F")),
                        collapse = ", ")))

  ## check argument 'region'
  if (!all(region %in% c("BE", "BR", "FL", "WA")))
    stop(gettextf("'region' should be one of %s",
                  paste(dQuote(c("BE", "BR", "FL", "WA")),
                        collapse = ", ")))

  ## check argument 'year'
  if (!all(year %in% c(2013, 2018)))
    stop(gettextf("'year' should be one of %s",
                  paste(dQuote(c("2013", "2018")),
                        collapse = ", ")))

  ## check argument 'parameter'
  opts <- c("INDEX", "VAS", "MO", "SC", "UA", "PD", "AD", "ANY")
  if (!all(parameter %in% opts))
    stop(gettextf("'parameter' should be one of %s",
                  paste(dQuote(opts), collapse = ", ")))
  if (length(parameter) != 1)
    stop("'parameter' should be of length 1")

  ## compile dataframe
  df <- data.frame(age, sex, region, year, stringsAsFactors = FALSE)

  ## get popnorms table
  popnorms <-
  switch(parameter,
         INDEX = popnormsIND,
         VAS   = popnormsVAS,
         MO    = popnormsMO,
         SC    = popnormsSC,
         UA    = popnormsUA,
         PD    = popnormsPD,
         AD    = popnormsAD,
         ANY   = popnormsANY)

  ## match values
  res <- merge(df, popnorms, sort = FALSE)

  ## return results
  return(res)
}


## specific functions
popnormINDEX <-
function(age = NA, sex = "B", region = "BE", year = 2018) {
  popnorm(
    age = age,
    sex = sex,
    region = region,
    year = year,
    parameter = "INDEX")
}

popnormVAS <-
function(age = NA, sex = "B", region = "BE", year = 2018) {
  popnorm(
    age = age,
    sex = sex,
    region = region,
    year = year,
    parameter = "VAS")
}

popnormMO <-
function(age = NA, sex = "B", region = "BE", year = 2018) {
  popnorm(
    age = age,
    sex = sex,
    region = region,
    year = year,
    parameter = "MO")
}

popnormSC <-
function(age = NA, sex = "B", region = "BE", year = 2018) {
  popnorm(
    age = age,
    sex = sex,
    region = region,
    year = year,
    parameter = "SC")
}

popnormUA <-
function(age = NA, sex = "B", region = "BE", year = 2018) {
  popnorm(
    age = age,
    sex = sex,
    region = region,
    year = year,
    parameter = "UA")
}

popnormPD <-
function(age = NA, sex = "B", region = "BE", year = 2018) {
  popnorm(
    age = age,
    sex = sex,
    region = region,
    year = year,
    parameter = "PD")
}

popnormAD <-
function(age = NA, sex = "B", region = "BE", year = 2018) {
  popnorm(
    age = age,
    sex = sex,
    region = region,
    year = year,
    parameter = "AD")
}

popnormANY <-
function(age = NA, sex = "B", region = "BE", year = 2018) {
  popnorm(
    age = age,
    sex = sex,
    region = region,
    year = year,
    parameter = "ANY")
}

