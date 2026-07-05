accessing
drawRoomLabelOn: aCanvas

	self shouldDrawRoomOverlays ifTrue: [self roomOverlaysForVisibleLevel do: [:overlay | overlay drawLabelOn: aCanvas]]