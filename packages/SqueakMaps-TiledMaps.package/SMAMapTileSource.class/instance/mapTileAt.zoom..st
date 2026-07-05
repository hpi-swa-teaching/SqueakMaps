searching
mapTileAt: aScaledPosition zoom: aZoom

	| document stream |
	document := (self urlForPosition: aScaledPosition zoom: aZoom) retrieveContents.
	(document contentType = 'text/plain' and: [document content beginsWith: 'error occured']) ifTrue: [^ nil].
	
	stream := document contentStream.
	stream ifNil: [^ nil].
	
	^ Form fromBinaryStream: stream