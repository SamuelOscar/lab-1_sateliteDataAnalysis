#!/bin/bash

# Extract top 10 highest temperatures
sort -t, -k2 -nr raw_data/satelite_temperature_data.csv | head -10 > analyzed_data/highest_temp.csv

# Extract data for a specific country
COUNTRY="Kenya"
grep "$COUNTRY" raw_data/satelite_temperature_data.csv | sort -t, -k3 -nr > analyzed_data/humidity_data_${COUNTRY}.csv

echo "Data extraction completed!"
