accessing
route: aSMARouteLine

	route ifNotNil: [route removeDependent: self].
	route := aSMARouteLine ifNil: [SMARouteLine new].
	route addDependent: self.
	self changed