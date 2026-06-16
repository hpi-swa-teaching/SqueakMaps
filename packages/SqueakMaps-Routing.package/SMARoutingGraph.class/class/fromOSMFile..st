as yet unclassified
fromOSMFile: aReadStream

	| root xmldoc points ways |
	xmldoc := XMLDOMParser parseDocumentFrom: aReadStream.
	root := xmldoc root.
	
	points := self extractPoints: root.
	ways := self extractWays: root.
	
	"todo: save attributes important for routing for every way and add this to the edge"
	ways do: [:way | 
		way do: []].
	