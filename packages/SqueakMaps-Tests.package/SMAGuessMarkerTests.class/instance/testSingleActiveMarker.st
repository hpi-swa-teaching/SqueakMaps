testing
testSingleActiveMarker

	self window startTimer.
	self window swapViews.
	self window placeGuessAt: 0.3 @ 0.3.
	self window placeGuessAt: 0.6 @ 0.6.
	self assert: self window tiledMapMorph markers size equals: 1
