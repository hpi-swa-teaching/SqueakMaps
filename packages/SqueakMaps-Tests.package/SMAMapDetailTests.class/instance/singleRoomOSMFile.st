as yet unclassified
singleRoomOSMFile

	^ ( (GitAssetLoader for: 'SqueakMaps') loadString: 'assets/osm/raum_K-E.18.osm') contents readStream.