tests
testSetOpenstreetmapsAsApi

	self model setOpenstreetmapsAsApi.
	self assert: SMAOpenStreetMapTileSource equals: self model tiledMapMorph tileSource class