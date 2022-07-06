returned json files
noApiKey

	^ Json readFrom: '{"error": "Authorization field missing"}' readStream.