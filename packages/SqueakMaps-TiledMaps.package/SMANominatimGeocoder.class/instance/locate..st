as yet unclassified
locate: aQueryString

	| searches queryUrlString json | 

	searches := OrderedCollection new. 
	queryUrlString := self queryUrlFor: aQueryString.
	json := Json readFrom: (WebClient httpGet: queryUrlString asString) content readStream.

	json do: [:result |
		searches add: (SMAPin new
			label: (result at: 'display_name' ifAbsent: [aQueryString]);
			latLong: ((result at: 'lon') asNumber) @ ((result at: 'lat') asNumber);
			boundingBox: (self getBoundingBoxFrom: result);
			yourself)].
	^ searches