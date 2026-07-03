pin management
addSelectedPin

	self selectedPin ifNil: [
		UIManager default inform: 'Please select a pin.'.
		^self
	].

	self hopLocations add: self selectedPin.
	self selectedPin: nil.
	
	self clear.

	self routes isEmpty ifFalse: [
	self mapConfigurator displayRoutes: self routes].

	self changed: #hopLocationLabels.