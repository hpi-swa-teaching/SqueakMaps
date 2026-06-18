as yet unclassified
room: aRoom belongsToBuilding: aBuilding

	| roomCenter |
	roomCenter := self centerPointOf: aRoom points.
	roomCenter ifNil: [^ false].
	^ self point: roomCenter liesInsidePolygon: aBuilding points