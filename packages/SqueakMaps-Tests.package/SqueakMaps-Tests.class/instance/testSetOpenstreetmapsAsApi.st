user theme adaption
testSetOpenstreetmapsAsApi
	squeakMapsWindow setOpenstreetmapsAsApi.
	self assert: OpenStreetMapTileSource equals: squeakMapsWindow tiledMapMorph tileSource class.