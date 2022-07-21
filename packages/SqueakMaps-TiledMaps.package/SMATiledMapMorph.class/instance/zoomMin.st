helping
zoomMin

	| largerSide tileSizeForSide |

	(self width > self height)
		ifTrue: [
			largerSide := self width.
			tileSizeForSide := self tileSize x.]
		ifFalse: [
			largerSide := self height.
			tileSizeForSide := self tileSize y.
		].

	^ (largerSide / tileSizeForSide log: 2) ceiling max: self tileSource zoomMin