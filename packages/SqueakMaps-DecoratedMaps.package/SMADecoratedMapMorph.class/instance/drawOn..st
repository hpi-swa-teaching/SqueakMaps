accessing
drawOn: aCanvas

	aCanvas clipBy: self bounds during: [:clippedCanvas |
		self drawTilesOn: clippedCanvas.
		self drawRoute: self route On: clippedCanvas.

		self updateRoomOverlayZoomState.

		self shouldDrawRoomOverlays
			ifTrue: [
				self buildingOverlaysWithoutRoomsForVisibleLevel do: [:overlay |
					self drawUnavailableBuildingOverlay: overlay on: clippedCanvas].
				self roomOverlaysForVisibleLevel do: [:overlay |
					overlay drawOn: clippedCanvas forMap: self]]
			ifFalse: [
				self buildingOverlays do: [:overlay |
					overlay drawOn: clippedCanvas forMap: self]].

		self pointsOfInterest do: [:poi |
			poi drawOn: clippedCanvas forMap: self].

		self markers do: [:marker |
			self duplicateAndDrawMarker: marker On: clippedCanvas].

		self drawLevelSelectorOn: clippedCanvas]
