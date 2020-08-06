as yet unclassified
locate: queryString

	| results json xIndex yIndex |

	results := OrderedCollection new.
	json := Json readFrom: (self queryUrlFor: queryString) retrieveContents contentStream.
	xIndex := 2.
	yIndex := 1.

	(json at: 'resourceSets') do: [:ressourceSet |
		(ressourceSet at: 'resources') do: [:ressource |
			results add: (SMAMapLocationMarker new
				label: (ressource at: 'name' ifAbsent: [queryString]);
				latLong: (self pointFromArray: ((ressource at: 'point') at: 'coordinates') xIndex: xIndex yIndex: yIndex);
				zoom: (self resultZoom: ressource);
				yourself) ]].
	^ results