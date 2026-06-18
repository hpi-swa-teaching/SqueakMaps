as yet unclassified
levelsForRouteTarget: aTarget

	(aTarget respondsTo: #levels) ifTrue: [^ aTarget levels].
	(aTarget respondsTo: #level) ifTrue: [^ {aTarget level}].
	^ OrderedCollection new