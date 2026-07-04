as yet unclassified
update: anAspect

	anAspect = #visibleLevel ifTrue: [self changed: #visibility].
	super update: anAspect