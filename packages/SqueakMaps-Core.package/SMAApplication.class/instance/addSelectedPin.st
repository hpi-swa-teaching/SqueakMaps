pin management
addSelectedPin

	self selectedPin ifNil: [
		^self inform: 'Please select a pin.'.].

	self hopLocations add: self selectedPin.
	self selectedPin: nil.
	
	self clear.

	self routes isEmpty ifFalse: [
		self mapConfigurator displayRoutes: self routes].
	self changed: #hopLocationLabels.