helping
zoomMin
	"Return the minimum required zoom, so that you can not see more than one world"

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