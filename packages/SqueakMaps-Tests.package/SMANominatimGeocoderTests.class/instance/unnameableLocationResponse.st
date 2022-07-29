json responses
unnameableLocationResponse

	^ Json readFrom: '{
    		"error": "Unable to geocode"
	}' readStream