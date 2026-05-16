accessing
addRoute: aSMARouteLine

	self routes add: aSMARouteLine.
	Transcript show: self routes; cr.