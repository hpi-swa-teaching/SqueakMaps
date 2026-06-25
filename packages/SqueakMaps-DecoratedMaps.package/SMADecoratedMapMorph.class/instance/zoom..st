accessing
zoom: anInteger

	| wasActive |
	wasActive := self shouldDrawRoomOverlays.

	super zoom: anInteger.

	(wasActive not and: [self shouldDrawRoomOverlays]) ifTrue: [
		self resetIndoorLevelSelection]