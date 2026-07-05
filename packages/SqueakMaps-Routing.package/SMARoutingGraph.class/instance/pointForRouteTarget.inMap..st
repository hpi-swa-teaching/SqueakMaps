as yet unclassified
pointForRouteTarget: aTarget inMap: aMapMorph

	(aTarget isKindOf: SMAPoint) ifTrue: [^ aTarget].
	(aTarget isKindOf: SMALocation) ifTrue: [
		^ SMAPoint new
			id: nil;
			lon: aTarget coordinates long;
			lat: aTarget coordinates lat;
			yourself].
	(aTarget respondsTo: #points) ifTrue: [^ self centerPointOf: aTarget points].
	^ nil
