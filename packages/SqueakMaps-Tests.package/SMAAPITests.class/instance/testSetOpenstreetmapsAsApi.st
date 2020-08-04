as yet unclassified
testSetOpenstreetmapsAsApi

	self subject setOpenstreetmapsAsApi.
	self assert: SMAOpenStreetMapTileSource equals: self subject tiledMapMorph tileSource class