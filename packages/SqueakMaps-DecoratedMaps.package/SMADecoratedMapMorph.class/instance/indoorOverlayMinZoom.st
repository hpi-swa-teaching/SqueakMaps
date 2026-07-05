accessing
indoorOverlayMinZoom

	^ indoorOverlayMinZoom ifNil: [indoorOverlayMinZoom := self class defaultIndoorOverlayMinZoom]