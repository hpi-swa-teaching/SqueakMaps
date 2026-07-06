building
leafTargetsUnder: aNode

	| targets |
	targets := Set new.
	self collectLeafTargetsOf: aNode into: targets.
	^ targets
