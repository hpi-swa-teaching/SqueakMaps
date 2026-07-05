event handling
doubleClick: anEvent

	| target |

	target := self clickTargetAtPixel: anEvent cursorPoint.
	target ifNotNil: [
		self onOverlayClickAction ifNotNil: [
			self onOverlayClickAction value: target].
		^ self].

	super doubleClick: anEvent
