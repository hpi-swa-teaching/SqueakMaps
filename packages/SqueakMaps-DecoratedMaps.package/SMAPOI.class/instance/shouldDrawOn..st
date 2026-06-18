testing
shouldDrawOn: aMapMorph

	aMapMorph zoom < 19 ifTrue: [^ false].
	self levels ifNil: [^ false].
	^ self levels isEmpty
		or: [self levels = aMapMorph visibleLevel]
		or: [self levels includes: aMapMorph visibleLevel]