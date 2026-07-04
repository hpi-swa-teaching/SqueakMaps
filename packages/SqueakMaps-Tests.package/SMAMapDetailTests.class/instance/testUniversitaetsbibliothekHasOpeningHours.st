as yet unclassified
testUniversitaetsbibliothekHasOpeningHours

	| decoratedMap building |
	decoratedMap := SMAOSMMapBuilder fromOSMFile:
		(((GitAssetLoader for: 'SqueakMaps')
			loadAsset: 'assets/osm/hpi-k-campus-only.osm') readStream).

	building := decoratedMap buildings
		detect: [:each | each name = 'Universitätsbibliothek Potsdam'].

	self assert: building hasTimeInfos.
	self assert: (building timeInfos anySatisfy: [:info |
		info label = 'Öffnungszeiten'
			and: [info value = 'Mo-Th 09:00-21:00; Fr 09:00-18:00; Sa 10:00-18:00']])