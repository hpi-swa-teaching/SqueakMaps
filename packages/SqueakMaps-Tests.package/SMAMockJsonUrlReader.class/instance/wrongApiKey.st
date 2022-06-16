as yet unclassified
wrongApiKey

	^ Json readFrom: '{"error": "Access to this API has been disallowed"}' readStream.