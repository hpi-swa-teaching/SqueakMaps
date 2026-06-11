event handling
click: anEvent

	| overlay |

	overlay := self overlayAtPixel: anEvent cursorPoint.
	overlay ifNotNil: [
		self onOverlayClickAction ifNotNil: [
			self onOverlayClickAction value: overlay].
		^ self].

	super click: anEvent