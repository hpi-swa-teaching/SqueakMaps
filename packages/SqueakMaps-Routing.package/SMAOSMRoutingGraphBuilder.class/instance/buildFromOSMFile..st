as yet unclassified
buildFromOSMFile: aReadStream

	| document |
	document := XMLDOMParser parseDocumentFrom: aReadStream.
	^ self buildFromXMLRoot: document root