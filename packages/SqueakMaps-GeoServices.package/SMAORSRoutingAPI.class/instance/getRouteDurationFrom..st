json parsing
getRouteDurationFrom: aJson
	"Returns the duration in seconds"

	^ (((((aJson at: 'features') first) at: 'properties') at: 'summary') at: 'duration') rounded