accessing
drawVisibleOverlaysOn: aCanvas

	self shouldDrawRoomOverlays
		ifTrue: [self drawIndoorOverlaysOn: aCanvas]
		ifFalse: [self drawBuildingOverlaysOn: aCanvas]