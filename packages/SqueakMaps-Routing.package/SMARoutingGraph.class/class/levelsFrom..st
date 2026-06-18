as yet unclassified
levelsFrom: anObject

	anObject ifNil: [^ OrderedCollection new].
	anObject isString ifTrue: [
		^ (anObject subStrings: ';') collect: [:each | each asNumber]].
	^ anObject