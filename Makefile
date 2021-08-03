# Makefile for paper

NOTEBOOKS = $(wildcard results/fig*.ipynb)
ANALYSED_FIGURES = $(patsubst results/fig%.ipynb, figures/Figure_%.pdf,$(NOTEBOOKS))
ANALYSED_FIGURES_RENAMED = $(subst -,_, $(ANALYSED_FIGURES))

.PHONY: all clean

all: $(ANALYSED_FIGURES_RENAMED)

.SECONDEXPANSION:
$(ANALYSED_FIGURES_RENAMED): figures/Figure_%.pdf : results/fig$$(subst _,-,$$*).ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

clean:
	rm -f $(ANALYSED_FIGURES_RENAMED)
