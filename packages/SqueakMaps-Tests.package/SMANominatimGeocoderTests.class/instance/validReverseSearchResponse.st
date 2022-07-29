json responses
validReverseSearchResponse

	^ Json readFrom: '{
	    "place_id": 297654326,
	    "licence": "Data © OpenStreetMap contributors, ODbL 1.0. https://osm.org/copyright",
	    "osm_type": "relation",
	    "osm_id": 62369,
	    "lat": "52.4009309",
	    "lon": "13.0591397",
	    "place_rank": 12,
	    "category": "boundary",
	    "type": "administrative",
	    "importance": 0.6190056397883331,
	    "addresstype": "city",
	    "name": "Potsdam",
	    "display_name": "Potsdam, Brandenburg, Germany",
	    "address": {
	        "city": "Potsdam",
	        "state": "Brandenburg",
	        "ISO3166-2-lvl4": "DE-BB",
	        "country": "Germany",
	        "country_code": "de"
	    },
	    "boundingbox": [
	        "52.3420411",
	        "52.5146876",
	        "12.8867757",
	        "13.1682033"
	    ]
	}' readStream

	