testing
shouldDrawOn: aMapMorph

	aMapMorph zoom < aMapMorph indoorOverlayMinZoom
		ifTrue: [^ false].

	^ self levels isEmpty
		or: [self levels includes: aMapMorph visibleLevel]