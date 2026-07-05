accessing
click: anEvent

	| target |

	(self handleLevelSelectorClick: anEvent cursorPoint) ifTrue: [^ self].

	target := self clickTargetAtPixel: anEvent cursorPoint.
	target ifNotNil: [
		self onOverlayClickAction ifNotNil: [
			self onOverlayClickAction value: target].
		^ self].

	super click: anEvent