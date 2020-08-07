as yet unclassified
imageAt: aPosition zoom: aZoom source: aTileSource tile: aOffsetPoint

	| scale scaledPosition |

	
	scale := 1 bitShift: aZoom.
	scaledPosition := ((aPosition * scale) floor + aOffsetPoint) \\ scale.
	
	(aTileSource isValidZoomLevel: aZoom) ifFalse: [^ Promise unit: nil].
	^ [ cache at: {scaledPosition. aZoom. aTileSource} ] on: NameLookupFailure do: [ Promise unit: nil ]