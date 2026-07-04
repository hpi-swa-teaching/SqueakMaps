route management
findOptimalRouteWithWaitingScreen

	| waitingScreen |
	waitingScreen := self createWaitingScreen: self tiledMapMorph bounds.

	self currentWorld addMorph: waitingScreen.

	[	self findOptimalRoute.
		WorldState addDeferredUIMessage: [
            waitingScreen delete.
		]]	fork.