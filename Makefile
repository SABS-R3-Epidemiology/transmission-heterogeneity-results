# Makefile for paper

.PHONY: all clean

all: fig2_fig3 figS1_figS2 figS3 figS4 figS5_figS6 figS7

fig2_fig3: results/fig2-fig3-inference-proportion-heatmap.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

figS1_figS2: results/figS1-figS2-australia-inference.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

figS3: results/figS3-new-zealand-inference.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

figS4: results/figS4-hawaii-inference.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

figS5_figS6: results/figS5-figS6-MERS.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

figS7: results/figS7-serial-interval.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

clean:
	find figures ! -name "Figure_1_schematic.pdf" -type f -exec rm -v {} +
