#!/usr/bin/env python3

import cdsapi

c = cdsapi.Client()

c.retrieve(
    'reanalysis-era5-single-levels',
    {
        'product_type': 'reanalysis',
        'variable': [
		'2m_temperature',
		'2m_dewpoint_temperature',
		'10m_u_component_of_wind', 
		'10m_v_component_of_wind', 
		'total_precipitation',
	#--	'instantaneous_large_scale_surface_precipitation_fraction', 
		'precipitation_type',
		'total_cloud_cover', 
        ],
        'year': '2019',
        'month': [
            '01', '02', '03',
            '04', '05', '06',
            '07', '08', '09',
#--            '10', '11', '12',
        ],
        'day': [
            '01', '02', '03',
            '04', '05', '06',
            '07', '08', '09',
            '10', '11', '12',
            '13', '14', '15',
            '16', '17', '18',
            '19', '20', '21',
            '22', '23', '24',
            '25', '26', '27',
            '28', '29', '30',
            '31',
        ],
        'time': [
            '00:00', '01:00', '02:00',
            '03:00', '04:00', '05:00',
            '06:00', '07:00', '08:00',
            '09:00', '10:00', '11:00',
            '12:00', '13:00', '14:00',
            '15:00', '16:00', '17:00',
            '18:00', '19:00', '20:00',
            '21:00', '22:00', '23:00',
        ],
	'area': [41.1662, -4.5827, 39.8813, -3.0322], # North, West, South, East. Default: global.  
#-- From OSM: datum WGS84 lat/lon (EPSG:4326)
#--	'grid': [1.0, 1.0], # Latitude/longitude grid: east-west (longitude) and north-south resolution (latitude). Default: 0.25 x 0.25
        'format': 'netcdf',
    },
    'download.nc')
