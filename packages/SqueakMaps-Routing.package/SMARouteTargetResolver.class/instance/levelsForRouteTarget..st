private
levelsForRouteTarget: aTarget

	(aTarget respondsTo: #levels) ifTrue: [^ aTarget levels ifNil: [OrderedCollection new]].
	(aTarget respondsTo: #level) ifTrue: [^ {aTarget level}].
	^ OrderedCollection new
