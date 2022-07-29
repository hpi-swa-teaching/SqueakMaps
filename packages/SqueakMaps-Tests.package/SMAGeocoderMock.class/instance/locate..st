mock
locate: aQueryString

	self locateMocks ifEmpty: [self error: 'locate: was called on the geocoder, but no mock implementation was given.'].
	^ self locateMocks removeFirst value: aQueryString