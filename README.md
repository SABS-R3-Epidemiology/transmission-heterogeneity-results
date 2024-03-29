# transmission-heterogeneity-results

This repository holds the results for the [branching process model with imported cases](https://github.com/SABS-R3-Epidemiology/branchpro). This includes generating serial interval for COVID-19, parsing data from raw COVID-19 cases data and reproducing figures from the paper. To reproduce the results, the branchpro package, which is provided in the link above, is required. The jupyter library is also required. 

More details can be found in the paper:

- <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2021.0308" target="_blank">R. Creswell,<sup>†</sup> D. Augustin,<sup>†</sup> I. Bouros,<sup>†</sup> H. J. Farm,<sup>†</sup> S. Miao,<sup>†</sup> A. Ahern,<sup>†</sup> M. Robinson, A. Lemenuel-Diot, D. J. Gavaghan, B. C. Lambert and R. N. Thompson: “Heterogeneity in the onwards transmission risk between local and imported cases affects practical estimates of the time-dependent reproduction number,” <em>Phil. Trans. R. Soc. A.</em> 380: 20210308 (2022).</a> <sup>†</sup>Joint first authors.


## Reproduce all results (serial interval, parsed data for COVID-19 cases, figures)
To reproduce all results, including intermediate files:
```bash
make
```

To delete all files created:
```bash
make clean
```


## Serial interval
To generate serial interval for COVID-19:
```bash
make serial_interval
```

To delete file of serial interval for COVID-19:
```bash
make clean_serial_interval
```


## COVID-19 cases
To parse all data from raw COVID-19 cases:
```bash
make data
```

To parse specific data:
```bash
make X_data
```
where `X` is the name of region. A list of commands to parse the data are given below.

To delete files of parsed data:
```bash
make clean_data
```
### List of commands to parse data
1. `australia_data` - to parse Australia's data
2. `hainan_data` - to parse Hainan's data
3. `hawaii_data` - to parse Hawaii's data
4. `hong_kong_data` - to parse Hong Kong's data
5. `new_zealand_data` - to parse New Zealand's data
6. `ontario_data` - to parse Ontario's data

For example, to parse Australia's data:
```bash
make australia_data
```

## Calculate epsilon
The value of epsilon (relative transmissibility of imported cases) has been
approximated for several territories where appropriate data is available. These
calculations can be performed using
```bash
make calculate_epsilon
```

## Figures
To reproduce all figures:
```bash
make figures
```
The appropriate COVID-19 data and serial intervals generated as described above are required to reproduce the figures.

To reproduce specfic figure(s):
```bash
make figX
```
where `X` is the figure number. A list of commands to reproduce the figures are given below.

To delete all figures, except the schematic figure (Figure_1_schematic.pdf):
```bash
make clean_figures
```

### List of commands to reproduce figures
1. `fig2_fig3` - to reproduce Figure 2 and Figure 3
2. `fig4` - to reproduce Figure 4
3. `figS1_figS2` - to reproduce Figure S1 and Figure S2
4. `figS3` - to reproduce Figure S3
5. `figS4` - to reproduce Figure S4
6. `figS5_figS6` - to reproduce Figure S5 and Figure S6
7. `figS7` - to reproduce Figure S7
8. `figS8` - to reproduce Figure S8

Figure_1_schematic.pdf is not reproducible as it is a schematic figure, not created from data.

For example, to reproduce Figure 2 and Figure 3:
```bash
make fig2_fig3
```
