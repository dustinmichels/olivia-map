#!/bin/bash

mkdir -p data/ne

# admin 0 - countries
OUT="data/ne/ne_10m_admin_0_countries.zip"
echo "> Download 'admin 0 - countries' to: $OUT"
curl "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_0_countries.zip?version=5.1.1" \
  -s -o $OUT

# admin 1 - states/provinces
OUT="data/ne/ne_10m_admin_1_states_provinces_lines.zip"
echo "> Download 'admin 1 - states/provinces' to $OUT"
curl "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_1_states_provinces_lines.zip?version=5.1.0" \
  -s -o $OUT

# populated places (simple)
OUT="data/ne/ne_10m_populated_places_simple.zip"
echo "> Download 'populated places (simple)' to $OUT"
curl "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places_simple.zip?version=5.1.2" \
  -s -o $OUT
