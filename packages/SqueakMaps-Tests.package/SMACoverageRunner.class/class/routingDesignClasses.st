areas
routingDesignClasses
	| classes |
	classes := OrderedCollection new.
	classes addAll: (self classesInPackageNamed: 'SqueakMaps-Routing').
	#(SMANavigator SMARouteLine) do: [:className |
		| class |
		class := Smalltalk at: className ifAbsent: [nil].
		class ifNotNil: [classes add: class]].
	^ classes asSet
