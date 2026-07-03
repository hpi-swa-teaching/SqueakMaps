as yet unclassified
buildFromXMLRoot: anXMLRoot

	self reset.
	ways := self extractWays: anXMLRoot andFillNeededPoints: points.
	self extractPoints: anXMLRoot in: points.
	ways do: [:way | self addWay: way].
	^ self build