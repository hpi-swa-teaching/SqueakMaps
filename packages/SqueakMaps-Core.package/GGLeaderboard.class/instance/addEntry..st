changing
addEntry: anEntry

	self entries add: anEntry.
	
	self entries: (self entries asSortedCollection: [:a :b | a score > b score]) asOrderedCollection.
	
	self entries size > self capacity ifTrue: [self entries removeLast]