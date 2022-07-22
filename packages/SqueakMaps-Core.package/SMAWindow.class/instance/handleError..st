search
handleError: anError

	anError class = SMARouteTooLongError ifTrue: [
		^ self inform: 'The chosen locations are too far apart from each other.'].
	anError class = SMAUnreachableDestinationError ifTrue: [
		^ self inform: 'There exists no route between the chosen locations.'].
	anError class = SMALocationNameNotFoundError ifTrue: [
		^ self inform: 'No location with name "' , anError requestedName , '" found.'].
	anError class = SMAInvalidApiKeyError ifTrue: [
		^ self inform: 'Please set a valid API key. This can be done by clicking the Manage API Keys button.'].
	anError signal