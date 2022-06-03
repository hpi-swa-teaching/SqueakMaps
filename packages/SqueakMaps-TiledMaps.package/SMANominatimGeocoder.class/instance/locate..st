as yet unclassified
locate: queryString

	| searches json | 

	searches := OrderedCollection new. 
	json := Json readFrom: (self queryUrlFor: queryString) retrieveContents contentStream.
	
	json do: [:result |
		searches add: (SMAMapLocationMarker new
			label: (result at: 'display_name' ifAbsent: [queryString]);
			latLong: ((result at: 'lon') asNumber) @ ((result at: 'lat') asNumber);
			zoom: (self boundingBoxZoom: (result at: 'boundingbox'));
			boundingBox: (result at: 'boundingbox');
			yourself) ].
	^ searches