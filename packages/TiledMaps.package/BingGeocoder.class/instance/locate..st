as yet unclassified
locate: queryString
	| results j |
	results := OrderedCollection new.
	j := Json readFrom: (self queryUrlFor: queryString) retrieveContents contentStream.
	(j at: 'resourceSets') do: [:rset |
		(rset at: 'resources') do: [:r |
			results add: (MapLocationMarker new
				label: (r at: 'name' ifAbsent: [queryString]);
				latLong: (self pointFromArray: ((r at: 'point') at: 'coordinates') xIndex: 2 yIndex: 1);
				zoom: (self resultZoom: r);
				yourself) ]].
	^ results