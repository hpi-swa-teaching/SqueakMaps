as yet unclassified
testCustomCampusTimeTagsProduceTimeInfos

	| decoratedMap poi |
	decoratedMap := SMADecoratedMapMorph fromOSMFile:
		(((GitAssetLoader for: 'SqueakMaps')
			loadString: 'assets/tests/osm/custom-time-tags.osm') contents readStream).

	poi := decoratedMap pointsOfInterest first.

	self assert: poi hasTimeInfos.
	self assert: (poi timeInfos anySatisfy: [:info |
		info label = 'Sprechzeiten']).
	self assert: (poi timeInfos anySatisfy: [:info |
		info label = 'Clubtreffen'])