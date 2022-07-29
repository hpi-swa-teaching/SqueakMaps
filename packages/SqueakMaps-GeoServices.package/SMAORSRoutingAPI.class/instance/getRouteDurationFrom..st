json parsing
getRouteDurationFrom: aJson

	^ (((((aJson at: 'features') first) at: 'properties') at: 'summary') at: 'duration') rounded