as yet unclassified
getRouteDistanceFrom: aJson

	^ (((((aJson at: 'features') at: 1) at: 'properties') at: 'summary') at: 'distance') rounded.