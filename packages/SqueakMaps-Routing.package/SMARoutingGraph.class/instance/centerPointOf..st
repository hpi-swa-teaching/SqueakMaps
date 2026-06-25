as yet unclassified
centerPointOf: aCollectionOfPoints

	| lat lon |
	aCollectionOfPoints isEmpty ifTrue: [^ nil].
	lat := (aCollectionOfPoints inject: 0 into: [:sum :each | sum + each lat]) / aCollectionOfPoints size.
	lon := (aCollectionOfPoints inject: 0 into: [:sum :each | sum + each lon]) / aCollectionOfPoints size.

	^ SMAPoint new
		id: nil;
		lat: lat;
		lon: lon;
		yourself