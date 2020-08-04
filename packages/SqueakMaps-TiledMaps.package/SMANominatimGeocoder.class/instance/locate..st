as yet unclassified
locate: queryString
	| results j | 
	results := OrderedCollection new. 
	j := Json readFrom: (self queryUrlFor: queryString) retrieveContents contentStream.
	j do: [:r |
		results add: (SMAMapLocationMarker new
			label: (r at: 'display_name' ifAbsent: [queryString]);
			latLong: ((r at: 'lon') asNumber) @ ((r at: 'lat') asNumber);
			zoom: (self boundingBoxZoom: (r at: 'boundingbox'));
			yourself) ].
	^ results