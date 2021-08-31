# Makefile for paper (figures and data)

.PHONY: all clean

all: serial_interval data

data: australia_data hawaii_data new_zealand_data ontario_data

serial_interval: data_library/serial_interval/parse_data_si.py
	python3 data_library/serial_interval/parse_data_si.py

australia_data: data_library/processed_data/covid_australia/parse_data.py
	python3 data_library/processed_data/covid_australia/parse_data.py

hawaii_data: data_library/processed_data/covid_hawaii/parse_data.py
	python3 data_library/processed_data/covid_hawaii/parse_data.py

new_zealand_data: data_library/processed_data/covid_new_zealand/parse_data.py
	python3 data_library/processed_data/covid_new_zealand/parse_data.py

ontario_data: data_library/processed_data/covid_ontario/parse_data.py
	python3 data_library/processed_data/covid_ontario/parse_data.py

clean: 
	rm -f data_library/serial_interval/si-covid.csv
	rm -f data_library/processed_data/covid_australia/*.csv
	rm -f data_library/processed_data/covid_hawaii/*.csv
	rm -f data_library/processed_data/covid_new_zealand/*.csv
	rm -f data_library/processed_data/covid_ontario/*.csv

