accessing
update: aspect

	super update: aspect.
	
	"Map the domain-specific aspect to a framework-specific one."
	aspect = #subtopicsUpdated ifTrue: [
		self changed: #contents].