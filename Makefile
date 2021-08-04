# Makefile for paper

FIGURE3N4 = figures/Figure_3_combined_inference.pdf figures/Figure_4_combined_inference_heatmap.pdf

.PHONY: all clean

all: $(FIGURE3N4)

$(FIGURE3N4): results/fig3-fig4-combined-inference-heatmap.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

clean:
	rm -f $(FIGURE3N4)
