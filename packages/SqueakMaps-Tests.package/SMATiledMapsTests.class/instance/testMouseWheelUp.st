as yet unclassified
testMouseWheelUp

	|mouseWheelDownEvent initialZoom|
	
	initialZoom := tiledMapMorph zoom.
	mouseWheelDownEvent := MouseWheelEvent new.
	mouseWheelDownEvent position: tiledMapMorph bounds center;
							setWheelUp. 	
													
	tiledMapMorph mouseWheel: mouseWheelDownEvent.
	self assert: initialZoom < tiledMapMorph zoom