running - areas
runRoutingDesign
	^ self
		runAreaNamed: 'Routing-Design'
		testClassNames: #(
			SMARoutingDesignTests
			SMANavigatorTests)
		targetClasses: self routingDesignClasses
