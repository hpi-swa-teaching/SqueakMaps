event handling
mouseWheel: anEvent

	| previousZoom previousCenter |

	previousZoom := zoom.
	previousCenter := center.
	self centerOnEvent: anEvent around: [
		anEvent isWheelDown ifTrue: [ self zoomOut ].
		anEvent isWheelUp ifTrue: [ self zoomIn ] ].
	(self atLocalZoom and: [self visibleFitsInCoverage not]) ifTrue: [
		zoom := previousZoom.
		center := previousCenter.
		self layoutChanged]