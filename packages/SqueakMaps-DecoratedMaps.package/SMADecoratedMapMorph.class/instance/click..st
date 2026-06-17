accessing
click: anEvent

	| overlay pointOfInterest |

	(self handleLevelSelectorClick: anEvent cursorPoint) ifTrue: [^ self].

	pointOfInterest := self pointOfInterestAtPixel: anEvent cursorPoint.
	pointOfInterest ifNotNil: [
		self onOverlayClickAction ifNotNil: [
			self onOverlayClickAction value: pointOfInterest].
		^ self].

	overlay := self overlayAtPixel: anEvent cursorPoint.
	overlay ifNotNil: [
		self onOverlayClickAction ifNotNil: [
			self onOverlayClickAction value: overlay].
		^ self].

	super click: anEvent