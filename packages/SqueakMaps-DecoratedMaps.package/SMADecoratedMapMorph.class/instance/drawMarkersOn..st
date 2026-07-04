accessing
drawMarkersOn: aCanvas

	self markers do: [:each |
		self
			duplicateAndDrawMarker: each
			On: aCanvas]