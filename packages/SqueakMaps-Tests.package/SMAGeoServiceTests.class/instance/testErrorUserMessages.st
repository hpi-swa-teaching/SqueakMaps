testing
testErrorUserMessages

	| notFound unnameable |
	notFound := SMALocationNameNotFoundError new requestedName: 'Atlantis'; yourself.
	unnameable := SMALocationUnnameableError new coordinates: 13 @ 52; yourself.

	self assert: SMAInvalidApiKeyError new userMessage notEmpty.
	self assert: SMARouteTooLongError new userMessage notEmpty.
	self assert: SMAUnreachableDestinationError new userMessage notEmpty.
	self assert: notFound userMessage equals: 'No location with name "Atlantis" found.'.
	self assert: unnameable userMessage equals: 'The given location does not have a name.'
