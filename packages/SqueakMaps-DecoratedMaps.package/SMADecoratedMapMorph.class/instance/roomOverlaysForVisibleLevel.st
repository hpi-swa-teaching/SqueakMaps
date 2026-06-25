accessing
roomOverlaysForVisibleLevel

	^ self roomOverlays select: [:overlay |
		overlay model level = self visibleLevel]