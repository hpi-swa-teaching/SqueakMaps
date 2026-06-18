as yet unclassified
levels: anObject

	levels := anObject ifNil: [OrderedCollection new] ifNotNil: [
		anObject isString
			ifTrue: [(anObject subStrings: ';') collect: [:each | each asInteger]]
			ifFalse: [anObject]]