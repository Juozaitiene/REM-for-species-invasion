# REM-for-species-invasion
Relational event model for species invasion


This repository contains R code for developing a relational event model to analyse the species invasion process by focusing on a number of possible
drivers of invasions that can be roughly distinguished into three groups. The first group consists of time-varying factors (i.e. drivers whose values change over time) with constant effects over time. This is expressed by constant coefficients $\beta$ in the hazard function. This group comprises temperature, colonial ties and number of prior invasions. The second group focuses on, again time-varying, factors but whose effects change over time. For example, not only can the volume of international trade vary over time, but the effect of trade volume on the rate of invasion events may also vary over time. This is expressed by time-varying coefficients in the REM. This group encompasses distance, land cover and trade. Whether an effect should depend to the first or the second group depends on whether or not the evidence in the data suggests that a constant effect is sufficient. The third group covers random effects of a monadic type, which are variables measured at the level of a region or species (species invasiveness and region invasibility).

The data used in this study is publicly available at https://doi.org/10.6084/m9.figshare.20017691.v1

**Contact:** Rūta Juozaitienė (Užupytė) - r.uzupyte@gmail.com
