tests
testSetOpenstreetmapsAsApi

	model setOpenstreetmapsAsApi.
	self assert: SMAOpenStreetMapTileSource equals: model tiledMapMorph tileSource class