accessing
updateRoomOverlayZoomState

	| active |
	active := self shouldDrawRoomOverlays.

	(active and: [roomOverlayZoomWasActive ~~ true]) ifTrue: [
		self resetIndoorLevelSelection].

	roomOverlayZoomWasActive := active