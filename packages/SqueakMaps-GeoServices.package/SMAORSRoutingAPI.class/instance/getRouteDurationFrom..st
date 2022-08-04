json parsing
getRouteDurationFrom: aJson
	"Returns the duration in seconds"

	^ (((((aJson at: 'features') at: 1) at: 'properties') at: 'summary') at: 'duration') rounded