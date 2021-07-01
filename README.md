## EQ5D.be

[![R build status](https://github.com/brechtdv/EQ5D.be/workflows/R-CMD-check/badge.svg)](https://github.com/brechtdv/EQ5D.be/actions?workflow=R-CMD-check)

_EQ-5D Index Values and Population Norms for Belgium_

The `EQ5D.be` package provides functions to obtain Belgian index values for the EQ-5D-3L and EQ-5D-5L descriptive systems, and to obtain Belgian population norms for the EQ-5D-5L descriptive system and visual analogue scale.  

The index values for the EQ-5D-3L are based on [Cleemput (2010)](https://doi.org/10.1007/s10198-009-0167-0).

The index values for the EQ-5D-5L are based on [Bouckaert et al. (2021)](https://kce.fgov.be/en/an-eq-5d-5l-value-set-for-belgium-%E2%80%93-how-to-value-health-related-quality-of-life).

The population norms are based on the EQ-5D-5L results in the [Belgian Health Interview Survey 2013 & 2018](https://his.wiv-isp.be/SitePages/Home.aspx).  

Details about the statistical estimation of the population norms is available via https://github.com/brechtdv/popnorms/.

#### Available functions

Index values
<table>
<tr><td><code>index3L</code></td><td>Belgian index values for the EQ-5D-3L descriptive system</td></tr>
<tr><td><code>index5L</code></td><td>Belgian index values for the EQ-5D-5L descriptive system</td></tr>
</table>

Population norms
<table>
<tr><td><code>popnorm</code></td><td>Population norms for the EQ-5D-5L and EQ-5D VAS instruments &ndash main wrapper function</td></tr>
<tr><td><code>popnormINDEX</code></td><td>Population norms for the EQ-5D-5L index score</td></tr>
<tr><td><code>popnormVAS</code></td><td>Population norms for the EQ-5D-5L visual analogue scale</td></tr>
<tr><td><code>popnormMO</code></td><td>Population norms for reporting any problems of mobility</td></tr>
<tr><td><code>popnormSC</code></td><td>Population norms for reporting any problems of self-care</td></tr>
<tr><td><code>popnormUA</code></td><td>Population norms for reporting any problems with performing usual activities</td></tr>
<tr><td><code>popnormPD</code></td><td>Population norms for reporting any problems of pain/discomfort</td></tr>
<tr><td><code>popnormAD</code></td><td>Population norms for reporting any problems of anxiety/depression</td></tr>
<tr><td><code>popnormANY</code></td><td>Population norms for reporting any problem in the EQ-5D-5L descriptive system</td></tr>
</table>

#### Install

To download and install the latest development version from GitHub:
```r
devtools::install_github("brechtdv/EQ5D.be")
```
