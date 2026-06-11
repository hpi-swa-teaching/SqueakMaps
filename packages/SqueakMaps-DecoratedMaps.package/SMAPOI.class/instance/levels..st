accessing
levels: anObject

	levels := anObject ifNil: [OrderedCollection new] ifNotNil: [
		(anObject subStrings: ';' asCharacter) collect: [:each | each asInteger]
		].
	
	Transcript showln: levels.
	
	"todo: support level=0;1;2"
	
	"todo: change to one level for simplicity?
		the few elevators can be duplicated"