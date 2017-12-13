!#/bin/bash

# Download natural earth data. Please make sure the data still exist at this path.
wget http://naciscdn.org/naturalearth/packages/natural_earth_vector.sqlite.zip

#unzip natural earth data

unzip natural_earth_vector.sqlite.zip


# convert sqlite to spatialite

ogr2ogr -f SQLite ../appendix1-naturalearth-data/ne.sqlite natural_earth_vector.sqlite/packages/natural_earth_vector.sqlite -progress -dsco SPATIALITE=YES -gt 65536 -lco SPATIAL_INDEX=YES -nlt PROMOTE_TO_MULTI


# Remove downloaded file and remain with the spatialite database

rm -r natural_earth_vector.sqlite.zip natural_earth_vector.sqlite









