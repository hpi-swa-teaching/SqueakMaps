testing - modes
testTransportationModeSwitching

	self assert: application hasModeCar.
	application switchToModeBike.
	self assert: application hasModeBike.
	application switchToModeWalk.
	self assert: application hasModeWalk.
	application switchToModeCar.
	self assert: application hasModeCar
