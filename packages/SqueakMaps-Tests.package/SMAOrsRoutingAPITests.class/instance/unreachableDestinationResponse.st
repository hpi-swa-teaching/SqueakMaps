json responses
unreachableDestinationResponse

	^ Json readFrom: '{
		"error": {
			"code": 2010,
			"message": "Could not find routable point within a radius of 350.0 meters of specified coordinate 0: 179.1284710 89.3938860."
		},
		"info": {
			"engine": {
				"version": "6.7.0",
				"build_date": "2022-02-18T19:37:41Z"
			},
			"timestamp": 1653415808930
		}
	}' readStream