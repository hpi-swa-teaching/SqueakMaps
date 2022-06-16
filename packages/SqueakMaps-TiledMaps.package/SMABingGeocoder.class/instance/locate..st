as yet unclassified
locate: aQueryString

	| results queryUrlString json xIndex yIndex |

	results := OrderedCollection new.
	queryUrlString := self queryUrlFor: aQueryString.
	json := Json readFrom: (WebClient httpGet: queryUrlString asString) content readStream.
	xIndex := 2.
	yIndex := 1.

	(json at: 'resourceSets') do: [:ressourceSet |
		(ressourceSet at: 'resources') do: [:ressource |
			results add: (SMAGeocoderResult new
				label: (ressource at: 'name' ifAbsent: [aQueryString]);
				latLong: (self pointFromArray: ((ressource at: 'point') at: 'coordinates') xIndex: xIndex yIndex: yIndex);
				zoom: (self resultZoom: ressource);
				yourself) ]].
	^ results