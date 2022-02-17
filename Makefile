# Makefile for paper (figures and data)

.PHONY: all clean

all: serial_interval data figures calculate_epsilon


# serial interval
serial_interval: data_library/serial_interval/parse_data_si.py
	python3 data_library/serial_interval/parse_data_si.py

clean_serial_interval:
	rm -f data_library/serial_interval/si-covid.csv

calculate_epsilon: results/calculate_epsilon.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

# cases data
data: australia_data hawaii_data new_zealand_data ontario_data

australia_data: data_library/processed_data/covid_australia/parse_data.py
	python3 data_library/processed_data/covid_australia/parse_data.py

hainan_data: data_library/processed_data/covid_hainan/parse_data.py
	python3 data_library/processed_data/covid_hainan/parse_data.py

hawaii_data: data_library/processed_data/covid_hawaii/parse_data.py
	python3 data_library/processed_data/covid_hawaii/parse_data.py

hong_kong_data: data_library/processed_data/covid_hong_kong/parse_data.py
	python3 data_library/processed_data/covid_hong_kong/parse_data.py

new_zealand_data: data_library/processed_data/covid_new_zealand/parse_data.py
	python3 data_library/processed_data/covid_new_zealand/parse_data.py

ontario_data: data_library/processed_data/covid_ontario/parse_data.py
	python3 data_library/processed_data/covid_ontario/parse_data.py

clean_data:
	rm -f data_library/processed_data/covid_australia/*.csv
	rm -f data_library/processed_data/covid_hainan/*.csv
	rm -f data_library/processed_data/covid_hawaii/*.csv
	rm -f data_library/processed_data/covid_hong_kong/*.csv
	rm -f data_library/processed_data/covid_new_zealand/*.csv
	rm -f data_library/processed_data/covid_ontario/*.csv


# figures
figures: fig2_fig3 fig4 figS1_figS2 figS3 figS4 figS5_figS6 figS7

fig2_fig3: results/fig2-fig3-inference-proportion-heatmap.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

fig4: results/fig4-hong-kong-hainan-inference.ipynb
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

clean_figures:
	find figures ! -name "Figure_1_schematic.pdf" -type f -exec rm -v {} +


clean: clean_serial_interval clean_data clean_figures
