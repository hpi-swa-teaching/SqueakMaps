accessing
priceAt: aString

	self prices ifNil: [^ nil].
	^ self prices at: aString ifAbsent: [nil]