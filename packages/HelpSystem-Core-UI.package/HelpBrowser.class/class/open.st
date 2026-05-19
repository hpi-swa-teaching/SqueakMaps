instance creation
open

	| window |
	window := self openOn: CustomHelp.
	window model showFirstTopic.
	^ window