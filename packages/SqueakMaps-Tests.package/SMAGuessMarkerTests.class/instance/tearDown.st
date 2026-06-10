running
tearDown

	self window ifNotNil: [:aWindow | aWindow delete].
	super tearDown
