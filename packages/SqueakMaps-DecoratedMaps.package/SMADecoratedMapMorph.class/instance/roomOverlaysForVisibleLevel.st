accessing
roomOverlaysForVisibleLevel

"TODO: Currently only the ground floor is shown. Replace visibleLevel with a UI-controlled floor selector when support for multiple building levels is added."

	^ self roomOverlays select: [:overlay |
		overlay model level = self visibleLevel]