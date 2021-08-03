# transmission-heterogeneity-results

This repository holds the results for the [branching process model](https://github.com/SABS-R3-Epidemiology/branchpro).

## Notebook upload procedure
1. Make sure the filename of the notebook includes figure number and a description, e.g. fig3-combined-inference. The names are connected by dashes.
2. Make sure the notebooks save their figures to the figures directory, with consistent filenames matching the paper, e.g. Figure_3_combined_inference. Use underscores for figure names. The description part of the figure filename must match that of the notebook filename. 
3. Add figure name to list of figures in README.

## Rreproducing figures
To recreate all figures, type the following commands in the terminal.
```bash
make
```

To recreate a specfic figures,
```bash
make figures/Figure_X_description.pdf
```
where `X` is the figure number and `description` is the description of file name, which can be found in the list below.

To clear all figures,
```bash
make clean
```

## List of figures
1. Figure_1.pdf (not reproducible from notebooks as it is a schematic figure, not created from data)
2. 
