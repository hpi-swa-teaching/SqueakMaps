as yet unclassified
imageryMetadata
	| u j resourceSet |
	^ imageryMetadata valueIfExpired: [
		u := ('http://dev.virtualearth.net/REST/V1/Imagery/Metadata/', layer, '?output=json&include=ImageryProviders&key=', api apikey) asUrl.
		j := Json readFrom: (u retrieveContents contentStream).
		resourceSet := (j at: 'resourceSets') first.
		(resourceSet at: 'resources') first ]