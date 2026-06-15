as yet unclassified
poiOSMFile

	^ ( (GitAssetLoader for: 'SqueakMaps') loadString: 'assets/tests/osm/poi.osm') contents readStream.