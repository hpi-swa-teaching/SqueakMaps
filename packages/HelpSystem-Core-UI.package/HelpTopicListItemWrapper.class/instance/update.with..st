accessing
update: aspect with: object

	super update: aspect with: object.
	
	"Map the domain-specific aspect to a framework-specific one."
	aspect = #subtopicAdded ifTrue: [
		self changed: #contents].