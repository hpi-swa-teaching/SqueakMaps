as yet unclassified
testSetOpenstreetmapsAsApi
	self subject setOpenstreetmapsAsApi.
	self assert: OpenStreetMapTileSource equals: self subject tiledMapMorph tileSource class.