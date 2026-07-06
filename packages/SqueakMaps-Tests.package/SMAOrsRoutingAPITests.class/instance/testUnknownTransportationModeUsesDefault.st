testing
testUnknownTransportationModeUsesDefault

	self assert: (orsAPI transportationModeLookup: #spaceship) equals: 'driving-car'
