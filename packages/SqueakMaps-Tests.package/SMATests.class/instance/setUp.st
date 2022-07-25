running
setUp

	| routingAPI |
	
	super setUp.
	self model: SMAWindow new.
	routingAPI := self model searchManager routingAPI.
	self ORSKeyBefore: routingAPI class ApiKey.
	
	self validORSKey: '5b3ce3597851110001cf62480dc81045552b485d90dcd7291f831448'.
	routingAPI class ApiKey: self validORSKey
	