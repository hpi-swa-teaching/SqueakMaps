accessing
click: anEvent

	| overlay |

	(self handleLevelSelectorClick: anEvent cursorPoint) ifTrue: [^ self].

	overlay := self overlayAtPixel: anEvent cursorPoint.
	overlay ifNotNil: [
		self onOverlayClickAction ifNotNil: [
			self onOverlayClickAction value: overlay].
		^ self].

	super click: anEvent