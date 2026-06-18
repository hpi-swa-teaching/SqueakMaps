as yet unclassified
pointForRouteTarget: aTarget inMap: aMapMorph

	(aTarget isKindOf: SMAPoint) ifTrue: [^ aTarget].
	(aTarget respondsTo: #points) ifTrue: [^ self centerPointOf: aTarget points].
	^ nil