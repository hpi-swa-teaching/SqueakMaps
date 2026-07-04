accessing
levels: anObject

	levels := anObject ifNil: [OrderedCollection new] ifNotNil: [
		(anObject subStrings: ';') collect: [:each | each asInteger]
		].
