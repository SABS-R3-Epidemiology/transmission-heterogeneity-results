# Makefile for paper (figures and data)

.PHONY: all clean

all: australia_data hawaii_data new_zealand_data ontario_data

australia_data: data_library/processed_data/covid_australia/parse_data.py
	python3 data_library/processed_data/covid_australia/parse_data.py

hawaii_data: data_library/processed_data/covid_hawaii/parse_data.py
	python3 data_library/processed_data/covid_hawaii/parse_data.py

new_zealand_data: data_library/processed_data/covid_new_zealand/parse_data.py
	python3 data_library/processed_data/covid_new_zealand/parse_data.py

ontario_data: data_library/processed_data/covid_ontario/parse_data.py
	python3 data_library/processed_data/covid_ontario/parse_data.py