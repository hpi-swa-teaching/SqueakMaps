select api
setTileSourceTo: aTileSource
	"this is very hacky, we have to change that later again"
	self tiledMapMorph tileSource: aTileSource;
						tileSource: aTileSource.
	self refreshMap