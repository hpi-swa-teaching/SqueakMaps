as yet unclassified
testDecoratedMapCreatesBuildingOverlay

	| decoratedMap overlay |
	decoratedMap := SMAOSMMapBuilder fromOSMFile:
		(((GitAssetLoader for: 'SqueakMaps')
			loadAsset: 'assets/osm/hpi-k-campus-only.osm') readStream).

	self assert: decoratedMap buildingOverlays isEmpty not.

	overlay := decoratedMap buildingOverlays first.
	self assert: overlay class equals: SMAGeoPolygonMorph.
	self assert: overlay model class equals: SMABuilding.
	self assert: overlay geoPoints isEmpty not.
	self assert: overlay label equals: overlay model name