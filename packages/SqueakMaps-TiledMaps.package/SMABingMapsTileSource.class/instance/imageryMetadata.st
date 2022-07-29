private
imageryMetadata

	| url json resourceSet |

	^ imageryMetadata valueIfExpired: [
		url := ('http://dev.virtualearth.net/REST/V1/Imagery/Metadata/', self layer, '?output=json&include=ImageryProviders&key=', self api class apiKey) asUrl.
		json := Json readFrom: (url retrieveContents contentStream).
		resourceSet := (json at: 'resourceSets') first.
		(resourceSet at: 'resources') first ]