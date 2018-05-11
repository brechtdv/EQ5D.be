### eq5d.be / calculate Belgian index values
### .. based on Cleemput (2010)
### .. https://doi.org/10.1007/s10198-009-0167-0

index3L <-
function(MO, SC, UA, PD, AD) {
  ## convert to data frame
  df <- data.frame(MO = MO, SC = SC, UA = UA, PD = PD, AD = AD)

  ## check values
  if (!all(unlist(df) %in% 1:3))
    stop("EQ-5D-3L dimension scores can only take value 1, 2, or 3")

  ## collapse scores
  df_scores <- apply(df, 1, paste, collapse = "")

  ## match scores
  df$index <- with(valueset3L, index[match(df_scores, score)])

  ## return data frame
  return(df)
}

index5L <-
function(MO, SC, UA, PD, AD) {
  ## convert to data frame
  df <- data.frame(MO = MO, SC = SC, UA = UA, PD = PD, AD = AD)

  ## check values
  if (!all(unlist(df) %in% 1:5))
    stop("EQ-5D-5L dimension scores can only take value 1, 2, 3, 4, or 5")

  ## collapse scores
  df_scores <- apply(df, 1, paste, collapse = "")

  ## match scores
  df$index <- with(valueset5L, index[match(df_scores, score)])

  ## return data frame
  return(df)
}
