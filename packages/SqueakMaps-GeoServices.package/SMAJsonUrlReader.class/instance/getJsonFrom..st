json retrieval
getJsonFrom: aQueryUrlString

	^ Json readFrom: (WebClient httpGet: aQueryUrlString asString) content readStream