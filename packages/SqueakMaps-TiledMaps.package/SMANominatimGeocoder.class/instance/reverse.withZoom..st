as yet unclassified
reverse: aLatLong withZoom: aZoom

	| json queryUrl | 
	queryUrl := self reverseUrlFor: aLatLong withZoom: aZoom.
	json := Json readFrom: (WebClient httpGet: queryUrl asString) content readStream.
	^ json at: 'display_name'