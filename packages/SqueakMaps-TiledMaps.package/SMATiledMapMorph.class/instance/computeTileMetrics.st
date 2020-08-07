private
computeTileMetrics

	| o worldExtent |
	
	o := tileLoader offsetOf: center zoom: zoom.
	tileSize := tileSource tileSize.
	tileOffset := o * tileSize.
	
	topLeftTile := 0@0.
	[ (self tileCorner: topLeftTile) x > bounds left ] whileTrue:
		[ topLeftTile := topLeftTile - (1@0) ].
	[ (self tileCorner: topLeftTile) y > bounds top ] whileTrue:
		[ topLeftTile := topLeftTile - (0@1) ].
	
	bottomRightTile := 0@0.
	[ (self tileCorner: bottomRightTile) x + tileSize x < bounds right ] whileTrue:
		[ bottomRightTile := bottomRightTile + (1@0) ].
	[ (self tileCorner: bottomRightTile) y + tileSize y < bounds bottom ] whileTrue:
		[ bottomRightTile := bottomRightTile + (0@1) ].
	
	worldExtent := bounds extent * self pixelSize.
	worldBounds := Rectangle origin: center - (worldExtent / 2) extent: worldExtent.

	self tilesDo: [:tile :formPromise | formPromise whenResolved: [ self changed ] ]