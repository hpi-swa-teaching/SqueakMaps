as yet unclassified
singlePathOSMXMLFile

	^ ((GitAssetLoader for: 'SqueakMaps') loadString: 'assets/tests/osm/singleWay.osm') contents readStream