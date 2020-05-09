as yet unclassified
imageAt: pos zoom: zoom source: tileSource tile: offsetPoint
	| scale scaledPos |
	(tileSource isValidZoomLevel: zoom) ifFalse: [^ Promise unit: nil].
	scale := 1 bitShift: zoom.
	scaledPos := ((pos * scale) floor + offsetPoint) \\ scale.
	^ [ cache at: {scaledPos. zoom. tileSource} ] on: NameLookupFailure do: [ Promise unit: nil ]