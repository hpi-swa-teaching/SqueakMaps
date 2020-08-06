as yet unclassified
mapTileAt: aScaledPosition zoom: aZoom
	
	| document |
	
	document := (self urlForPosition: aScaledPosition zoom: aZoom) retrieveContents.
	^ (document contentType = 'text/plain' and: [document content beginsWith: 'error occured'])
		ifTrue: [nil]
		ifFalse: [Form fromBinaryStream: document contentStream]