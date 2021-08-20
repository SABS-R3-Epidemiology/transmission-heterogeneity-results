# transmission-heterogeneity-results

This repository holds the results for the [branching process model](https://github.com/SABS-R3-Epidemiology/branchpro).

## Reproducing figures
To recreate all figures, type the following commands in the terminal.
```bash
make
```

To recreate a specfic figures,
```bash
make figX
```
where `X` is the figure number. A list of commands to reproduce the figures are given below.

To clear all figures, except the schematic figure (Figure_1_schematic.pdf)
```bash
make clean
```

## List of commands
1. `<fig2_fig3>` - to create Figure 2 and Figure 3
2. `<figS1_figS2>` - to create Figure S1 and Figure S2
3. `<figS3>` - to create Figure S3
2. `<figS4>` - to create Figure S4
2. `<figS5_figS6>` - to create Figure S5 and Figure S6
2. `<figS7>` - to create Figure S7

Figure_1_schematic.pdf is not reproducible as it is a schematic figure, not created from data.

