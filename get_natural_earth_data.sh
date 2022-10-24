#!/bin/bash

# create folder if missing
echo "> Create 'data/ne' folder if missing"
mkdir -p data/ne

# remove existing files
echo "> Remove existing zip files"
rm -f data/ne/*.zip

# admin 0 - countries
OUT="data/ne/ne_10m_admin_0_countries.zip"
echo "> Download 'admin 0 - countries' to:        $OUT"
curl "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_0_countries.zip" \
  -s -Lo $OUT

# admin 1 - states/provinces
OUT="data/ne/ne_10m_admin_1_states_provinces.zip"
echo "> Download 'admin 1 - states/provinces' to: $OUT"
curl "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_1_states_provinces.zip" \
  -s -Lo $OUT

# populated places (simple)
OUT="data/ne/ne_10m_populated_places_simple.zip"
echo "> Download 'populated places (simple)' to:  $OUT"
curl "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places_simple.zip" \
  -s -Lo $OUT
