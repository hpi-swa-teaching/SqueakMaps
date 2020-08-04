as yet unclassified
locate: queryString
	| results j |
	results := OrderedCollection new.
	j := Json readFrom: (self queryUrlFor: queryString) retrieveContents contentStream.
	(j at: 'results') do: [:r |
		results add: (MapLocationMarker new
			label: (r at: 'formatted_address' ifAbsent: [queryString]);
			latLong: (self pointFromJson: ((r at: 'geometry') at: 'location'));
			zoom: (self resultZoom: r);
			yourself) ].
	^ results