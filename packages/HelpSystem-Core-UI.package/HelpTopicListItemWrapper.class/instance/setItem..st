initialization
setItem: anObject

	item ifNotNil: [:obj | obj removeDependent: self].
	super setItem: anObject.
	item ifNotNil: [:obj | obj addDependent: self].