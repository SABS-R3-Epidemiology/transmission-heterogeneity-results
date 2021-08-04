# transmission-heterogeneity-results

This repository holds the results for the [branching process model](https://github.com/SABS-R3-Epidemiology/branchpro).

## Notebook upload procedure
1. Add the notebook and figure to the make list in Makefile. For example,
```bash
# Add variable of figures produced by the notebook
$(FIGURE2) = figures/Figure_2_X.pdf

# Add the figure target to the list of make options
$(FIGURE2) : results/fig2-X.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<
```
with X as the description for the file. Add the variable `$(FIGURE2)` at the of `all` and `clean`.
2. Add figure name to list of figures in README.

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
