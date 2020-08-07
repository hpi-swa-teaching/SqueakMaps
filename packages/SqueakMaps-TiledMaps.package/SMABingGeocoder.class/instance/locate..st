as yet unclassified
locate: aQueryString

	| results json xIndex yIndex |

	results := OrderedCollection new.
	json := Json readFrom: (self queryUrlFor: aQueryString) retrieveContents contentStream.
	xIndex := 2.
	yIndex := 1.

	(json at: 'resourceSets') do: [:ressourceSet |
		(ressourceSet at: 'resources') do: [:ressource |
			results add: (SMAMapLocationMarker new
				label: (ressource at: 'name' ifAbsent: [aQueryString]);
				latLong: (self pointFromArray: ((ressource at: 'point') at: 'coordinates') xIndex: xIndex yIndex: yIndex);
				zoom: (self resultZoom: ressource);
				yourself) ]].
	^ results