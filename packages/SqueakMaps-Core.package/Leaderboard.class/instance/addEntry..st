as yet unclassified
addEntry: anEntry

	entries add: anEntry.
	
	entries := (entries asSortedCollection: [:a :b | a score > b score]) asOrderedCollection.
	
	entries size > self capacity ifTrue: [entries removeLast]