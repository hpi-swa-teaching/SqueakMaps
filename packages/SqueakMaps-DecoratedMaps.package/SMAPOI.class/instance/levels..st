accessing
levels: anObject

	levels := anObject ifNil: [OrderedCollection new] ifNotNil: [
		(anObject subStrings: ';') collect: [:each | each asInteger]
		].
	
	"todo: change to one level for simplicity?
		the few elevators can be duplicated"