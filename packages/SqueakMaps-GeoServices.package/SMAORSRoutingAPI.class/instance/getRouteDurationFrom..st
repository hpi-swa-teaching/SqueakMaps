json parsing
getRouteDurationFrom: aJson

	^ (((((aJson at: 'features') at: 1) at: 'properties') at: 'summary') at: 'duration') rounded.