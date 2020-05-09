as yet unclassified
mapTileAt: scaledPos zoom: zoom
	| doc |
	doc := (self urlForPosition: scaledPos zoom: zoom) retrieveContents.
	^ (doc contentType = 'text/plain' and: [doc content beginsWith: 'error occured'])
		ifTrue: [nil]
		ifFalse: [Form fromBinaryStream: doc contentStream]