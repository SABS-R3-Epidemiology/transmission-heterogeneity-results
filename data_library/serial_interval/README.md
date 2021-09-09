# List of sources
1. Parameters from a lognormal distribution to generate serial intervals for COVID-19 [1] (lognormal_param.csv)
2. Serial interval for MERS [2] (si-mers.csv)

[1] Nishiura, H., Linton, N. M., Akhmetzhanov, A. R. "Serial interval of novel coronavirus (COVID-19) infections." International journal of infectious diseases 93(2020): 285-286. (https://github.com/aakhmetz/COVID19SerialInterval)

[2] Thompson, R. N., eet al. "Improved inference of time-varying reproduction numbers during infectious disease outbreaks." Epidemics 29(2019): 100356.

For the COVID-19 serial interval [1], we used the lognormal distribution
accounting for right-truncation and using both certain and probable
infector-infectee pairs.
