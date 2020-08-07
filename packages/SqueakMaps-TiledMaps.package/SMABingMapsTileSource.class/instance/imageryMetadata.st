as yet unclassified
imageryMetadata

	| url json resourceSet |

	^ imageryMetadata valueIfExpired: [
		url := ('http://dev.virtualearth.net/REST/V1/Imagery/Metadata/', layer, '?output=json&include=ImageryProviders&key=', api apikey) asUrl.
		json := Json readFrom: (url retrieveContents contentStream).
		resourceSet := (json at: 'resourceSets') first.
		(resourceSet at: 'resources') first ]