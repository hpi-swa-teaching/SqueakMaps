select api
setOpenstreetmapsAsApi

	self tiledMapMorph tileSource: SMAOpenStreetMapTileSource instance.
	self tiledMapMorph layoutChanged